
#include <stdio.h>
#include <iostream>
#include <vector>
#include <algorithm>
#include <math.h>
// hip header file
#include "hip/hip_runtime.h"

#define NUM (7 * 1)

template <typename t>
struct tensile_complex
{
    t x;
    t y;
    __host__ __device__ tensile_complex() = default;
    constexpr __host__ __device__ tensile_complex(t real, t imag = 0)
        : x{real}
        , y{imag}
    {
    }
    template <typename u, typename std::enable_if<std::is_arithmetic<u>{}>::type* = nullptr>
    tensile_complex<t>& operator=(const u a)
    {
        x = a;
        y = 0;
        return (*this);
    }
};
template <typename T>
inline std::ostream& operator<<(std::ostream& os, const tensile_complex<T>& data)
{
    if(data.y > 0)
    {
        os << data.x << "+" << data.y << "i" ;
    }
    else if(data.y == 0){
        os << data.x << " ";
    }
    else
    {
        os << data.x << data.y << "i" ;
    }

    return os;
}
template <typename T>
constexpr __host__ __device__ tensile_complex<T> operator+(tensile_complex<T> a,
                                                           tensile_complex<T> b)
{
    return tensile_complex<T>{a.x + b.x, a.y + b.y};
}

template <typename T>
constexpr __host__ __device__ tensile_complex<T> operator-(tensile_complex<T> a,
                                                           tensile_complex<T> b)
{
    return tensile_complex<T>{a.x - b.x, a.y - b.y};
}

template <typename T>
constexpr __host__ __device__ bool operator==(tensile_complex<T>& a, tensile_complex<T>  b)
{
    return (a.x == b.x ) && (a.y == b.y);
}


using tensile_double_complex = tensile_complex<double>;
#define TensileComplexFloat tensile_float_complex
#define TensileComplexDouble tensile_double_complex

// ==================================== Kernel start ===========================================

/* tile parameters */
#define NUM_THREADS 128
#define SG0I 32
#define SG1J 4
#define TT0I 4
#define TT1J 8
#define MT0I (SG0I*TT0I)
#define MT1J (SG1J*TT1J)
#define VECTOR_WIDTH 1
#define GLOBAL_LOAD_VECTOR_WIDTH_A 1
#define GLOBAL_LOAD_VECTOR_WIDTH_B 1
#define GLOBAL_WRITE_VECTOR_WIDTH 1

/* DepthU parameters*/
#define CPSV (NUM_THREADS / MT0I * VECTOR_WIDTH)
#define LOCAL_SPLITU 1
#define UNROLL 8
#define LOCAL_DEPTHU (LOCAL_SPLITU*UNROLL)

/* other */
#define PAD 0
#define WORK_GROUP_MAPPING 8

/* num loads parallel and perpendicular to coalesced */
#define NLCA 1
#define NLCB 1
#define NLPA 8
#define NLPB 2

/* load sizes parallel and perpendicular to coalesced */
#define LSCA (MT0I/NLCA)
#define LSPA (LOCAL_DEPTHU/NLPA)
#define LSCB (MT1J/NLCB)
#define LSPB (LOCAL_DEPTHU/NLPB)
#define LVCA (LSCA/GLOBAL_LOAD_VECTOR_WIDTH_A)
#define LVCB (LSCB/GLOBAL_LOAD_VECTOR_WIDTH_B)
#define LVPA (LSPA/GLOBAL_LOAD_VECTOR_WIDTH_A)
#define LVPB (LSPB/GLOBAL_LOAD_VECTOR_WIDTH_B)
#define LDS_OFFSET_B 1024
#define LDS_NUM_ELEMENTS 1280

/* global memory indices */
#define GLOBAL_D(IDX0I, IDX1J, IDXK) (( (IDX0I)*strideD0I + (IDX1J)*strideD1J + (IDXK)*strideDK ))
#define GLOBAL_C(IDX0I, IDX1J, IDXK) (( (IDX0I)*strideC0I + (IDX1J)*strideC1J + (IDXK)*strideCK ))
#define GLOBAL_OFFSET_A(IDX0I, IDXL, IDXK) (( (IDX0I)*strideA0I + (IDXL)*strideAL + (IDXK)*strideAK ))
#define GLOBAL_OFFSET_B(IDX1J, IDXL, IDXK) (( (IDX1J)*strideB1J + (IDXL)*strideBL + (IDXK)*strideBK ))

/* data types */
#define DATA_TYPE TensileComplexDouble
#define DEST_DATA_TYPE TensileComplexDouble
#define COMPUTE_DATA_TYPE TensileComplexDouble
#define s0 x
#define s1 y
#define MAGIC_DIV(dividend, magicNumber, magicShift) ((uint64_t)(dividend) * magicNumber >> magicShift)

/* MAC's */
#define MAC(A,B,DST) DST += A*B
#define TYPE_MAC(MULA,MULB,DST) \
  DST.s0 = MAC(  MULA.s0, MULB.s0, DST.s0 ); \
  DST.s0 = MAC( -MULA.s1, MULB.s1, DST.s0 ); \
  DST.s1 = MAC(  MULA.s0, MULB.s1, DST.s1 ); \
  DST.s1 = MAC(  MULA.s1, MULB.s0, DST.s1 );
#define TYPE_MAC_WRITE( DST, SRC, ALPHA, REG, BETA ) \
  /* (1) */ \
  type_mac_tmp = REG.s0; \
  REG.s0 *= ALPHA.s0; \
  REG.s0 = MAC( -ALPHA.s1, REG.s1, REG.s0 ); \
  REG.s1 *= ALPHA.s0; \
  REG.s1 = MAC(  ALPHA.s1, type_mac_tmp, REG.s1 ); \
  /* (2) */ \
  if(BETA.s0 != 0) { \
  REG.s0 = MAC(  BETA.s0, SRC.s0, REG.s0 ); \
  REG.s1 = MAC(  BETA.s0, SRC.s1, REG.s1 ); \
  } \
  if (BETA.s1 != 0) { \
  REG.s0 = MAC( -BETA.s1, SRC.s1, REG.s0 ); \
  REG.s1 = MAC(  BETA.s1, SRC.s0, REG.s1 ); \
  } \
  /* (3) */ \
  DST = REG;

/* 4x8 micro-tile */
#define MAC_4x8\
  TYPE_MAC(rA[0],rB[0],rC[0+0*TT0I]); \
  TYPE_MAC(rA[1],rB[0],rC[1+0*TT0I]); \
  TYPE_MAC(rA[2],rB[0],rC[2+0*TT0I]); \
  TYPE_MAC(rA[3],rB[0],rC[3+0*TT0I]); \
  TYPE_MAC(rA[0],rB[1],rC[0+1*TT0I]); \
  TYPE_MAC(rA[1],rB[1],rC[1+1*TT0I]); \
  TYPE_MAC(rA[2],rB[1],rC[2+1*TT0I]); \
  TYPE_MAC(rA[3],rB[1],rC[3+1*TT0I]); \
  TYPE_MAC(rA[0],rB[2],rC[0+2*TT0I]); \
  TYPE_MAC(rA[1],rB[2],rC[1+2*TT0I]); \
  TYPE_MAC(rA[2],rB[2],rC[2+2*TT0I]); \
  TYPE_MAC(rA[3],rB[2],rC[3+2*TT0I]); \
  TYPE_MAC(rA[0],rB[3],rC[0+3*TT0I]); \
  TYPE_MAC(rA[1],rB[3],rC[1+3*TT0I]); \
  TYPE_MAC(rA[2],rB[3],rC[2+3*TT0I]); \
  TYPE_MAC(rA[3],rB[3],rC[3+3*TT0I]); \
  TYPE_MAC(rA[0],rB[4],rC[0+4*TT0I]); \
  TYPE_MAC(rA[1],rB[4],rC[1+4*TT0I]); \
  TYPE_MAC(rA[2],rB[4],rC[2+4*TT0I]); \
  TYPE_MAC(rA[3],rB[4],rC[3+4*TT0I]); \
  TYPE_MAC(rA[0],rB[5],rC[0+5*TT0I]); \
  TYPE_MAC(rA[1],rB[5],rC[1+5*TT0I]); \
  TYPE_MAC(rA[2],rB[5],rC[2+5*TT0I]); \
  TYPE_MAC(rA[3],rB[5],rC[3+5*TT0I]); \
  TYPE_MAC(rA[0],rB[6],rC[0+6*TT0I]); \
  TYPE_MAC(rA[1],rB[6],rC[1+6*TT0I]); \
  TYPE_MAC(rA[2],rB[6],rC[2+6*TT0I]); \
  TYPE_MAC(rA[3],rB[6],rC[3+6*TT0I]); \
  TYPE_MAC(rA[0],rB[7],rC[0+7*TT0I]); \
  TYPE_MAC(rA[1],rB[7],rC[1+7*TT0I]); \
  TYPE_MAC(rA[2],rB[7],rC[2+7*TT0I]); \
  TYPE_MAC(rA[3],rB[7],rC[3+7*TT0I]); \

#define MAC_4x8_BLK\
  TYPE_MAC(rA[0+TT0I],rB[0+TT1J],rC[0+0*TT0I]); \
  TYPE_MAC(rA[1+TT0I],rB[0+TT1J],rC[1+0*TT0I]); \
  TYPE_MAC(rA[2+TT0I],rB[0+TT1J],rC[2+0*TT0I]); \
  TYPE_MAC(rA[3+TT0I],rB[0+TT1J],rC[3+0*TT0I]); \
  TYPE_MAC(rA[0+TT0I],rB[1+TT1J],rC[0+1*TT0I]); \
  TYPE_MAC(rA[1+TT0I],rB[1+TT1J],rC[1+1*TT0I]); \
  TYPE_MAC(rA[2+TT0I],rB[1+TT1J],rC[2+1*TT0I]); \
  TYPE_MAC(rA[3+TT0I],rB[1+TT1J],rC[3+1*TT0I]); \
  TYPE_MAC(rA[0+TT0I],rB[2+TT1J],rC[0+2*TT0I]); \
  TYPE_MAC(rA[1+TT0I],rB[2+TT1J],rC[1+2*TT0I]); \
  TYPE_MAC(rA[2+TT0I],rB[2+TT1J],rC[2+2*TT0I]); \
  TYPE_MAC(rA[3+TT0I],rB[2+TT1J],rC[3+2*TT0I]); \
  TYPE_MAC(rA[0+TT0I],rB[3+TT1J],rC[0+3*TT0I]); \
  TYPE_MAC(rA[1+TT0I],rB[3+TT1J],rC[1+3*TT0I]); \
  TYPE_MAC(rA[2+TT0I],rB[3+TT1J],rC[2+3*TT0I]); \
  TYPE_MAC(rA[3+TT0I],rB[3+TT1J],rC[3+3*TT0I]); \
  TYPE_MAC(rA[0+TT0I],rB[4+TT1J],rC[0+4*TT0I]); \
  TYPE_MAC(rA[1+TT0I],rB[4+TT1J],rC[1+4*TT0I]); \
  TYPE_MAC(rA[2+TT0I],rB[4+TT1J],rC[2+4*TT0I]); \
  TYPE_MAC(rA[3+TT0I],rB[4+TT1J],rC[3+4*TT0I]); \
  TYPE_MAC(rA[0+TT0I],rB[5+TT1J],rC[0+5*TT0I]); \
  TYPE_MAC(rA[1+TT0I],rB[5+TT1J],rC[1+5*TT0I]); \
  TYPE_MAC(rA[2+TT0I],rB[5+TT1J],rC[2+5*TT0I]); \
  TYPE_MAC(rA[3+TT0I],rB[5+TT1J],rC[3+5*TT0I]); \
  TYPE_MAC(rA[0+TT0I],rB[6+TT1J],rC[0+6*TT0I]); \
  TYPE_MAC(rA[1+TT0I],rB[6+TT1J],rC[1+6*TT0I]); \
  TYPE_MAC(rA[2+TT0I],rB[6+TT1J],rC[2+6*TT0I]); \
  TYPE_MAC(rA[3+TT0I],rB[6+TT1J],rC[3+6*TT0I]); \
  TYPE_MAC(rA[0+TT0I],rB[7+TT1J],rC[0+7*TT0I]); \
  TYPE_MAC(rA[1+TT0I],rB[7+TT1J],rC[1+7*TT0I]); \
  TYPE_MAC(rA[2+TT0I],rB[7+TT1J],rC[2+7*TT0I]); \
  TYPE_MAC(rA[3+TT0I],rB[7+TT1J],rC[3+7*TT0I]); \

/* hard-coded initial strides */
#define strideD0I 1
#define strideC0I 1
#define strideA0I 1
#define strideB1J 1


  /******************************************/
  /* Begin Kernel                           */
  /******************************************/

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-parameter"
extern "C"
__global__ void Cijk_Ailk_Bjlk_ZB_MT128x32x8_SE_K1(
  TensileComplexDouble *D,
  TensileComplexDouble const * __restrict__ C,
  TensileComplexDouble const * __restrict__ A,
  TensileComplexDouble const * __restrict__ B,
  TensileComplexDouble const alpha,
  TensileComplexDouble const beta,
  unsigned int const strideD1J,
  unsigned int const strideDK,
  unsigned int const strideC1J,
  unsigned int const strideCK,
  unsigned int const strideAL,
  unsigned int const strideAK,
  unsigned int const strideBL,
  unsigned int const strideBK,
  unsigned int const size0I,
  unsigned int const size1J,
  unsigned int const sizeK,
  unsigned int const sizeL,
  unsigned int staggerUIterParm,
  unsigned int problemNumGroupTiles0,
  unsigned int problemNumGroupTiles1,
  unsigned int magicNumberProblemNumGroupTiles0 )
#pragma clang diagnostic pop

 {


  /******************************************/
  /* Allocate Resources                     */
  /******************************************/

  unsigned int serial = hc_get_workitem_id(0);
  unsigned int sgId = serial / (SG0I*SG1J);
#define SCALAR_ZERO (TensileComplexDouble)(0)
#define SCALAR_OOB_DATA SCALAR_ZERO
  /* registers for MAC's */
  DEST_DATA_TYPE rC[TT0I*TT1J];
  DATA_TYPE rA[TT0I*2];
  DATA_TYPE rB[TT1J*2];

  /* registers for global->local */
  DATA_TYPE a_0_0_0_0;
  DATA_TYPE a_0_0_1_0;
  DATA_TYPE a_0_0_2_0;
  DATA_TYPE a_0_0_3_0;
  DATA_TYPE a_0_0_4_0;
  DATA_TYPE a_0_0_5_0;
  DATA_TYPE a_0_0_6_0;
  DATA_TYPE a_0_0_7_0;
  DATA_TYPE b_0_0_0_0;
  DATA_TYPE b_0_0_1_0;

  /* allocate local memory */
  __shared__ DATA_TYPE localMemory[LDS_NUM_ELEMENTS];


  /******************************************/
  /* Local Read Addresses                   */
  /******************************************/


  /* local read addresses: tile assignments a */

  unsigned int lr0I = (serial % SG0I);


  /* local read addresses: tile assignments b */

  unsigned int lr1J = (serial / SG0I) % SG1J;


  /* local read addresses: final offsets a */

  unsigned int localReadOffsetA = lr0I*VECTOR_WIDTH + sgId*(MT0I+PAD);


  /* local read addresses: final offsets b */

  unsigned int localReadOffsetB = lr1J*VECTOR_WIDTH + sgId*(MT1J+PAD) + LDS_OFFSET_B;


  /* local read addresses: declare addresses a */

  DATA_TYPE *localReadA;


  /* local read addresses: declare addresses b */

  DATA_TYPE *localReadB;



  /******************************************/
  /* Begin setupNewTile                     */
  /******************************************/


  /* global read addresses: work-group */

  unsigned int wg0I = hc_get_group_id(0);
  unsigned int wg1J = hc_get_group_id(1);
  unsigned int nwg0I = hc_get_num_groups(0);
  unsigned int nwg1J = hc_get_num_groups(1);

  uint64_t wgSerial = wg0I + (wg1J % WORK_GROUP_MAPPING) * nwg0I;// within block
  unsigned int block = wg1J / WORK_GROUP_MAPPING;
  unsigned int blockRemainder = (wg1J < nwg1J-(nwg1J % WORK_GROUP_MAPPING) ) ? 0 : nwg1J % WORK_GROUP_MAPPING;
  if ( blockRemainder == 0) {
    wg0I = wgSerial / 8;
    wg1J = wgSerial % 8 + block*WORK_GROUP_MAPPING;
  } else if ( blockRemainder == 1) {
    wg0I = wgSerial / 1;
    wg1J = wgSerial % 1 + block*WORK_GROUP_MAPPING;
  } else if ( blockRemainder == 2) {
    wg0I = wgSerial / 2;
    wg1J = wgSerial % 2 + block*WORK_GROUP_MAPPING;
  } else if ( blockRemainder == 3) {
    wg0I = wgSerial / 3;
    wg1J = wgSerial % 3 + block*WORK_GROUP_MAPPING;
  } else if ( blockRemainder == 4) {
    wg0I = wgSerial / 4;
    wg1J = wgSerial % 4 + block*WORK_GROUP_MAPPING;
  } else if ( blockRemainder == 5) {
    wg0I = wgSerial / 5;
    wg1J = wgSerial % 5 + block*WORK_GROUP_MAPPING;
  } else if ( blockRemainder == 6) {
    wg0I = wgSerial / 6;
    wg1J = wgSerial % 6 + block*WORK_GROUP_MAPPING;
  } else {
    wg0I = wgSerial / 7;
    wg1J = wgSerial % 7 + block*WORK_GROUP_MAPPING;
  }


  /* global read addresses: tile offset assignment a */

  unsigned int globalReadOffsetA0I = (serial%LVCA)*GLOBAL_LOAD_VECTOR_WIDTH_A + (wg0I)*MT0I;


  /* global read addresses: tile offset assignment b */

  unsigned int globalReadOffsetB1J = (serial%LVCB)*GLOBAL_LOAD_VECTOR_WIDTH_B + (wg1J)*MT1J;


  /* global read addresses: unroll assignment a */

  unsigned int globalReadOffsetAL = (serial/LVCA);


  /* global read addresses: unroll assignment b */

  unsigned int globalReadOffsetBL = (serial/LVCB);


  /* global read addresses: other free assignments */

  unsigned int wgK = ( hc_get_group_id(2) ) % sizeK;


  /* global read addresses: tile offsets a */

  unsigned int flattenedOffsetA_0_0 = globalReadOffsetA0I + 0 + 0*LSCA;
  flattenedOffsetA_0_0 = (flattenedOffsetA_0_0 > (size0I-1)) ? (size0I-1):flattenedOffsetA_0_0;
  unsigned int globalReadOffsetA0I_0_0 = flattenedOffsetA_0_0;


  /* global read addresses: tile offsets b */

  unsigned int flattenedOffsetB_0_0 = globalReadOffsetB1J + 0 + 0*LSCB;
  flattenedOffsetB_0_0 = (flattenedOffsetB_0_0 > (size1J-1)) ? (size1J-1):flattenedOffsetB_0_0;
  unsigned int globalReadOffsetB1J_0_0 = flattenedOffsetB_0_0;


  /* global read addresses: unroll offsets a */

  unsigned int globalReadOffsetAL_0_0 = globalReadOffsetAL + 0 + 0*LSPA;
  unsigned int globalReadOffsetAL_1_0 = globalReadOffsetAL + 0 + 1*LSPA;
  unsigned int globalReadOffsetAL_2_0 = globalReadOffsetAL + 0 + 2*LSPA;
  unsigned int globalReadOffsetAL_3_0 = globalReadOffsetAL + 0 + 3*LSPA;
  unsigned int globalReadOffsetAL_4_0 = globalReadOffsetAL + 0 + 4*LSPA;
  unsigned int globalReadOffsetAL_5_0 = globalReadOffsetAL + 0 + 5*LSPA;
  unsigned int globalReadOffsetAL_6_0 = globalReadOffsetAL + 0 + 6*LSPA;
  unsigned int globalReadOffsetAL_7_0 = globalReadOffsetAL + 0 + 7*LSPA;


  /* global read addresses: unroll offsets b */

  unsigned int globalReadOffsetBL_0_0 = globalReadOffsetBL + 0 + 0*LSPB;
  unsigned int globalReadOffsetBL_1_0 = globalReadOffsetBL + 0 + 1*LSPB;


  /* global read addresses: shift a */

  globalReadOffsetA0I_0_0 = (  globalReadOffsetA0I_0_0 > size0I-GLOBAL_LOAD_VECTOR_WIDTH_A+0) ? size0I-GLOBAL_LOAD_VECTOR_WIDTH_A+0 : globalReadOffsetA0I_0_0;


  /* global read addresses: shift b */

  globalReadOffsetB1J_0_0 = (  globalReadOffsetB1J_0_0 > size1J-GLOBAL_LOAD_VECTOR_WIDTH_B+0) ? size1J-GLOBAL_LOAD_VECTOR_WIDTH_B+0 : globalReadOffsetB1J_0_0;


  /* global read addresses: final offsets a */

  uint64_t globalReadOffsetA_0_0_0_0 = GLOBAL_OFFSET_A( globalReadOffsetA0I_0_0, globalReadOffsetAL_0_0, wgK );
  uint64_t globalReadOffsetA_0_0_1_0 = GLOBAL_OFFSET_A( globalReadOffsetA0I_0_0, globalReadOffsetAL_1_0, wgK );
  uint64_t globalReadOffsetA_0_0_2_0 = GLOBAL_OFFSET_A( globalReadOffsetA0I_0_0, globalReadOffsetAL_2_0, wgK );
  uint64_t globalReadOffsetA_0_0_3_0 = GLOBAL_OFFSET_A( globalReadOffsetA0I_0_0, globalReadOffsetAL_3_0, wgK );
  uint64_t globalReadOffsetA_0_0_4_0 = GLOBAL_OFFSET_A( globalReadOffsetA0I_0_0, globalReadOffsetAL_4_0, wgK );
  uint64_t globalReadOffsetA_0_0_5_0 = GLOBAL_OFFSET_A( globalReadOffsetA0I_0_0, globalReadOffsetAL_5_0, wgK );
  uint64_t globalReadOffsetA_0_0_6_0 = GLOBAL_OFFSET_A( globalReadOffsetA0I_0_0, globalReadOffsetAL_6_0, wgK );
  uint64_t globalReadOffsetA_0_0_7_0 = GLOBAL_OFFSET_A( globalReadOffsetA0I_0_0, globalReadOffsetAL_7_0, wgK );


  /* global read addresses: final offsets b */

  uint64_t globalReadOffsetB_0_0_0_0 = GLOBAL_OFFSET_B( globalReadOffsetB1J_0_0, globalReadOffsetBL_0_0, wgK );
  uint64_t globalReadOffsetB_0_0_1_0 = GLOBAL_OFFSET_B( globalReadOffsetB1J_0_0, globalReadOffsetBL_1_0, wgK );


  /* global read addresses: addresses a */

  DATA_TYPE const *globalReadA_0_0_0_0 = A + globalReadOffsetA_0_0_0_0;
  DATA_TYPE const *globalReadA_0_0_1_0 = A + globalReadOffsetA_0_0_1_0;
  DATA_TYPE const *globalReadA_0_0_2_0 = A + globalReadOffsetA_0_0_2_0;
  DATA_TYPE const *globalReadA_0_0_3_0 = A + globalReadOffsetA_0_0_3_0;
  DATA_TYPE const *globalReadA_0_0_4_0 = A + globalReadOffsetA_0_0_4_0;
  DATA_TYPE const *globalReadA_0_0_5_0 = A + globalReadOffsetA_0_0_5_0;
  DATA_TYPE const *globalReadA_0_0_6_0 = A + globalReadOffsetA_0_0_6_0;
  DATA_TYPE const *globalReadA_0_0_7_0 = A + globalReadOffsetA_0_0_7_0;


  /* global read addresses: addresses b */

  DATA_TYPE const *globalReadB_0_0_0_0 = B + globalReadOffsetB_0_0_0_0;
  DATA_TYPE const *globalReadB_0_0_1_0 = B + globalReadOffsetB_0_0_1_0;


  /* global read addresses: increments a */

  int64_t globalReadIncAL = (int64_t)strideAL*LOCAL_DEPTHU;


  /* global read addresses: increments b */

  int64_t globalReadIncBL = (int64_t)strideBL*LOCAL_DEPTHU;


  /******************************************/
  /* Local Write Addresses                  */
  /******************************************/


  /* local write addresses: tile assignment A */
  unsigned int lwA0I = (serial%LVCA)*GLOBAL_LOAD_VECTOR_WIDTH_A;


  /* local write addresses: tile assignment B */
  unsigned int lwB1J = (serial%LVCB)*GLOBAL_LOAD_VECTOR_WIDTH_B;


  /* local write addresses: unroll assignment A */
  unsigned int lwAL = (serial/LVCA);


  /* local write addresses: unroll assignment B */
  unsigned int lwBL = (serial/LVCB);


  /* local write addresses: first offset a */

  unsigned int localWriteFirstOffsetA = lwA0I + lwAL*(MT0I+PAD);


  /* local write addresses: first offset b */

  unsigned int localWriteFirstOffsetB = lwB1J + lwBL*(MT1J+PAD) + LDS_OFFSET_B;


  /* local write addresses: final offsets A */
  unsigned int localWriteOffsetA_0_0_0_0 = localWriteFirstOffsetA + (0 + 0*LSCA) + (0 + 0*LSPA)*(MT0I+PAD);
  unsigned int localWriteOffsetA_0_0_1_0 = localWriteFirstOffsetA + (0 + 0*LSCA) + (0 + 1*LSPA)*(MT0I+PAD);
  unsigned int localWriteOffsetA_0_0_2_0 = localWriteFirstOffsetA + (0 + 0*LSCA) + (0 + 2*LSPA)*(MT0I+PAD);
  unsigned int localWriteOffsetA_0_0_3_0 = localWriteFirstOffsetA + (0 + 0*LSCA) + (0 + 3*LSPA)*(MT0I+PAD);
  unsigned int localWriteOffsetA_0_0_4_0 = localWriteFirstOffsetA + (0 + 0*LSCA) + (0 + 4*LSPA)*(MT0I+PAD);
  unsigned int localWriteOffsetA_0_0_5_0 = localWriteFirstOffsetA + (0 + 0*LSCA) + (0 + 5*LSPA)*(MT0I+PAD);
  unsigned int localWriteOffsetA_0_0_6_0 = localWriteFirstOffsetA + (0 + 0*LSCA) + (0 + 6*LSPA)*(MT0I+PAD);
  unsigned int localWriteOffsetA_0_0_7_0 = localWriteFirstOffsetA + (0 + 0*LSCA) + (0 + 7*LSPA)*(MT0I+PAD);


  /* local write addresses: final offsets B */
  unsigned int localWriteOffsetB_0_0_0_0 = localWriteFirstOffsetB + (0 + 0*LSCB) + (0 + 0*LSPB)*(MT1J+PAD);
  unsigned int localWriteOffsetB_0_0_1_0 = localWriteFirstOffsetB + (0 + 0*LSCB) + (0 + 1*LSPB)*(MT1J+PAD);


  /* local write addresses: declare addresses A */
  DATA_TYPE *localWriteA_0_0_0_0;
  DATA_TYPE *localWriteA_0_0_1_0;
  DATA_TYPE *localWriteA_0_0_2_0;
  DATA_TYPE *localWriteA_0_0_3_0;
  DATA_TYPE *localWriteA_0_0_4_0;
  DATA_TYPE *localWriteA_0_0_5_0;
  DATA_TYPE *localWriteA_0_0_6_0;
  DATA_TYPE *localWriteA_0_0_7_0;


  /* local write addresses: declare addresses B */
  DATA_TYPE *localWriteB_0_0_0_0;
  DATA_TYPE *localWriteB_0_0_1_0;


  /* local write init pointers A */
  localWriteA_0_0_0_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_0_0);
  localWriteA_0_0_1_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_1_0);
  localWriteA_0_0_2_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_2_0);
  localWriteA_0_0_3_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_3_0);
  localWriteA_0_0_4_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_4_0);
  localWriteA_0_0_5_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_5_0);
  localWriteA_0_0_6_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_6_0);
  localWriteA_0_0_7_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_7_0);


  /* local write init pointers B */
  localWriteB_0_0_0_0 = (DATA_TYPE *)(localMemory + localWriteOffsetB_0_0_0_0);
  localWriteB_0_0_1_0 = (DATA_TYPE *)(localMemory + localWriteOffsetB_0_0_1_0);

  /* declare loop num iterations */

  unsigned int numIterL;


  rC[0] = SCALAR_ZERO;
  rC[1] = SCALAR_ZERO;
  rC[2] = SCALAR_ZERO;
  rC[3] = SCALAR_ZERO;
  rC[4] = SCALAR_ZERO;
  rC[5] = SCALAR_ZERO;
  rC[6] = SCALAR_ZERO;
  rC[7] = SCALAR_ZERO;
  rC[8] = SCALAR_ZERO;
  rC[9] = SCALAR_ZERO;
  rC[10] = SCALAR_ZERO;
  rC[11] = SCALAR_ZERO;
  rC[12] = SCALAR_ZERO;
  rC[13] = SCALAR_ZERO;
  rC[14] = SCALAR_ZERO;
  rC[15] = SCALAR_ZERO;
  rC[16] = SCALAR_ZERO;
  rC[17] = SCALAR_ZERO;
  rC[18] = SCALAR_ZERO;
  rC[19] = SCALAR_ZERO;
  rC[20] = SCALAR_ZERO;
  rC[21] = SCALAR_ZERO;
  rC[22] = SCALAR_ZERO;
  rC[23] = SCALAR_ZERO;
  rC[24] = SCALAR_ZERO;
  rC[25] = SCALAR_ZERO;
  rC[26] = SCALAR_ZERO;
  rC[27] = SCALAR_ZERO;
  rC[28] = SCALAR_ZERO;
  rC[29] = SCALAR_ZERO;
  rC[30] = SCALAR_ZERO;
  rC[31] = SCALAR_ZERO;


  /* Compute unroll loop num iter */
  numIterL = sizeL / LOCAL_DEPTHU;

  const unsigned origNumIter = numIterL;
  unsigned staggerUIter = (wg0I & staggerUIterParm);
  staggerUIter = (staggerUIter << 1); // shift so each stagger has 256-byte stride

  globalReadA_0_0_0_0 += (staggerUIter * globalReadIncAL); // apply stagger offset
  globalReadA_0_0_1_0 += (staggerUIter * globalReadIncAL); // apply stagger offset
  globalReadA_0_0_2_0 += (staggerUIter * globalReadIncAL); // apply stagger offset
  globalReadA_0_0_3_0 += (staggerUIter * globalReadIncAL); // apply stagger offset
  globalReadA_0_0_4_0 += (staggerUIter * globalReadIncAL); // apply stagger offset
  globalReadA_0_0_5_0 += (staggerUIter * globalReadIncAL); // apply stagger offset
  globalReadA_0_0_6_0 += (staggerUIter * globalReadIncAL); // apply stagger offset
  globalReadA_0_0_7_0 += (staggerUIter * globalReadIncAL); // apply stagger offset


  globalReadB_0_0_0_0 += (staggerUIter * globalReadIncBL); // apply stagger offset
  globalReadB_0_0_1_0 += (staggerUIter * globalReadIncBL); // apply stagger offset

  staggerUIter += 0; // add PrefetchGlobalRead

  /* local read addresses: init pointers a */

  localReadA = (DATA_TYPE *)(localMemory + localReadOffsetA);

  /* local read addresses: init pointers b */

  localReadB = (DATA_TYPE *)(localMemory + localReadOffsetB);


  /******************************************/
  /* End setupNewTile                       */
  /******************************************/


  /******************************************/
  /* Unrolled Loop(s) - Begin               */
  /******************************************/

  while (numIterL-- > 0) {


    /******************************************/
    /* Unroll Loop 1/1 - Begin                */
    /******************************************/



    /* global read A */
    a_0_0_0_0 = *(globalReadA_0_0_0_0 + 0);
    a_0_0_1_0 = *(globalReadA_0_0_1_0 + 0);
    a_0_0_2_0 = *(globalReadA_0_0_2_0 + 0);
    a_0_0_3_0 = *(globalReadA_0_0_3_0 + 0);
    a_0_0_4_0 = *(globalReadA_0_0_4_0 + 0);
    a_0_0_5_0 = *(globalReadA_0_0_5_0 + 0);
    a_0_0_6_0 = *(globalReadA_0_0_6_0 + 0);
    a_0_0_7_0 = *(globalReadA_0_0_7_0 + 0);

    /* global read B */
    b_0_0_0_0 = *(globalReadB_0_0_0_0 + 0);
    b_0_0_1_0 = *(globalReadB_0_0_1_0 + 0);

    /* global read inc A */
    globalReadA_0_0_0_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadA_0_0_0_0) + globalReadIncAL);
    if ((numIterL) == staggerUIter) {
      globalReadA_0_0_0_0 -= (origNumIter * globalReadIncAL); // wrap staggered offset back to row start
    }
    globalReadA_0_0_1_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadA_0_0_1_0) + globalReadIncAL);
    if ((numIterL) == staggerUIter) {
      globalReadA_0_0_1_0 -= (origNumIter * globalReadIncAL); // wrap staggered offset back to row start
    }
    globalReadA_0_0_2_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadA_0_0_2_0) + globalReadIncAL);
    if ((numIterL) == staggerUIter) {
      globalReadA_0_0_2_0 -= (origNumIter * globalReadIncAL); // wrap staggered offset back to row start
    }
    globalReadA_0_0_3_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadA_0_0_3_0) + globalReadIncAL);
    if ((numIterL) == staggerUIter) {
      globalReadA_0_0_3_0 -= (origNumIter * globalReadIncAL); // wrap staggered offset back to row start
    }
    globalReadA_0_0_4_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadA_0_0_4_0) + globalReadIncAL);
    if ((numIterL) == staggerUIter) {
      globalReadA_0_0_4_0 -= (origNumIter * globalReadIncAL); // wrap staggered offset back to row start
    }
    globalReadA_0_0_5_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadA_0_0_5_0) + globalReadIncAL);
    if ((numIterL) == staggerUIter) {
      globalReadA_0_0_5_0 -= (origNumIter * globalReadIncAL); // wrap staggered offset back to row start
    }
    globalReadA_0_0_6_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadA_0_0_6_0) + globalReadIncAL);
    if ((numIterL) == staggerUIter) {
      globalReadA_0_0_6_0 -= (origNumIter * globalReadIncAL); // wrap staggered offset back to row start
    }
    globalReadA_0_0_7_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadA_0_0_7_0) + globalReadIncAL);
    if ((numIterL) == staggerUIter) {
      globalReadA_0_0_7_0 -= (origNumIter * globalReadIncAL); // wrap staggered offset back to row start
    }

    /* global read inc B */
    globalReadB_0_0_0_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadB_0_0_0_0) + globalReadIncBL);
    if ((numIterL) == staggerUIter) {
      globalReadB_0_0_0_0 -= (origNumIter * globalReadIncBL); // wrap staggered offset back to row start
    }
    globalReadB_0_0_1_0 = (DATA_TYPE const *)( ((DATA_TYPE const *)globalReadB_0_0_1_0) + globalReadIncBL);
    if ((numIterL) == staggerUIter) {
      globalReadB_0_0_1_0 -= (origNumIter * globalReadIncBL); // wrap staggered offset back to row start
    }


    __syncthreads(); //PGR=0, prior iter done reading lds


    /* local write a */

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wconditional-uninitialized"
    *(localWriteA_0_0_0_0 + 0) = a_0_0_0_0;
    *(localWriteA_0_0_1_0 + 0) = a_0_0_1_0;
    *(localWriteA_0_0_2_0 + 0) = a_0_0_2_0;
    *(localWriteA_0_0_3_0 + 0) = a_0_0_3_0;
    *(localWriteA_0_0_4_0 + 0) = a_0_0_4_0;
    *(localWriteA_0_0_5_0 + 0) = a_0_0_5_0;
    *(localWriteA_0_0_6_0 + 0) = a_0_0_6_0;
    *(localWriteA_0_0_7_0 + 0) = a_0_0_7_0;
#pragma clang diagnostic pop


    /* local write b */

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wconditional-uninitialized"
    *(localWriteB_0_0_0_0 + 0) = b_0_0_0_0;
    *(localWriteB_0_0_1_0 + 0) = b_0_0_1_0;
#pragma clang diagnostic pop


    __syncthreads(); //


    /* prefetch local a */

    rA[0*VECTOR_WIDTH+0] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 


    /* prefetch local b */

    rB[0*VECTOR_WIDTH+0] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 

    /* local read increment a */

    localReadA += LOCAL_SPLITU*(MT0I+PAD);

    /* local read increment b */

    localReadB += LOCAL_SPLITU*(MT1J+PAD);




    /* iter 0 */


    /* local read a */
    rA[0*VECTOR_WIDTH+0+TT0I] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0+TT0I] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0+TT0I] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0+TT0I] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 

    /* local read b */
    rB[0*VECTOR_WIDTH+0+TT1J] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0+TT1J] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0+TT1J] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0+TT1J] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0+TT1J] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0+TT1J] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0+TT1J] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0+TT1J] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 

    /* local read increment a */
    localReadA += LOCAL_SPLITU*(MT0I+PAD);

    /* local read increment b */
    localReadB += LOCAL_SPLITU*(MT1J+PAD);
    MAC_4x8


    /* iter 1 */


    /* local read a */
    rA[0*VECTOR_WIDTH+0] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 

    /* local read b */
    rB[0*VECTOR_WIDTH+0] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 

    /* local read increment a */
    localReadA += LOCAL_SPLITU*(MT0I+PAD);

    /* local read increment b */
    localReadB += LOCAL_SPLITU*(MT1J+PAD);
    MAC_4x8_BLK


    /* iter 2 */


    /* local read a */
    rA[0*VECTOR_WIDTH+0+TT0I] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0+TT0I] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0+TT0I] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0+TT0I] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 

    /* local read b */
    rB[0*VECTOR_WIDTH+0+TT1J] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0+TT1J] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0+TT1J] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0+TT1J] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0+TT1J] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0+TT1J] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0+TT1J] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0+TT1J] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 

    /* local read increment a */
    localReadA += LOCAL_SPLITU*(MT0I+PAD);

    /* local read increment b */
    localReadB += LOCAL_SPLITU*(MT1J+PAD);
    MAC_4x8


    /* iter 3 */


    /* local read a */
    rA[0*VECTOR_WIDTH+0] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 

    /* local read b */
    rB[0*VECTOR_WIDTH+0] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 

    /* local read increment a */
    localReadA += LOCAL_SPLITU*(MT0I+PAD);

    /* local read increment b */
    localReadB += LOCAL_SPLITU*(MT1J+PAD);
    MAC_4x8_BLK


    /* iter 4 */


    /* local read a */
    rA[0*VECTOR_WIDTH+0+TT0I] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0+TT0I] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0+TT0I] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0+TT0I] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 

    /* local read b */
    rB[0*VECTOR_WIDTH+0+TT1J] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0+TT1J] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0+TT1J] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0+TT1J] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0+TT1J] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0+TT1J] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0+TT1J] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0+TT1J] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 

    /* local read increment a */
    localReadA += LOCAL_SPLITU*(MT0I+PAD);

    /* local read increment b */
    localReadB += LOCAL_SPLITU*(MT1J+PAD);
    MAC_4x8


    /* iter 5 */


    /* local read a */
    rA[0*VECTOR_WIDTH+0] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 

    /* local read b */
    rB[0*VECTOR_WIDTH+0] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 

    /* local read increment a */
    localReadA += LOCAL_SPLITU*(MT0I+PAD);

    /* local read increment b */
    localReadB += LOCAL_SPLITU*(MT1J+PAD);
    MAC_4x8_BLK


    /* iter 6 (localWrite + swap local pointers iteration) */


    /* local read a */
    rA[0*VECTOR_WIDTH+0+TT0I] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0+TT0I] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0+TT0I] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0+TT0I] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 

    /* local read b */
    rB[0*VECTOR_WIDTH+0+TT1J] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0+TT1J] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0+TT1J] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0+TT1J] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0+TT1J] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0+TT1J] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0+TT1J] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0+TT1J] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 

    /* local read init pointers a */
    localReadA = (DATA_TYPE *)(localMemory + localReadOffsetA);

    /* local read init pointers b */
    localReadB = (DATA_TYPE *)(localMemory + localReadOffsetB);
    MAC_4x8




    /* iter 7 (last) */

    MAC_4x8_BLK


    /******************************************/
    /* Unrolled Loop - End                    */
    /******************************************/

  }


  /******************************************/
  /* Tail Loop                              */
  /******************************************/


  /* Compute tail loop num iter */
  numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU);


  /* remove stagger offsets for tail loop */

  globalReadA_0_0_0_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncAL); // remove stagger offset
  globalReadA_0_0_1_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncAL); // remove stagger offset
  globalReadA_0_0_2_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncAL); // remove stagger offset
  globalReadA_0_0_3_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncAL); // remove stagger offset
  globalReadA_0_0_4_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncAL); // remove stagger offset
  globalReadA_0_0_5_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncAL); // remove stagger offset
  globalReadA_0_0_6_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncAL); // remove stagger offset
  globalReadA_0_0_7_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncAL); // remove stagger offset

  globalReadB_0_0_0_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncBL); // remove stagger offset
  globalReadB_0_0_1_0 += ((origNumIter - (staggerUIter - 0)) * globalReadIncBL); // remove stagger offset


  /* global read a */


  /* global read A */
  a_0_0_0_0 = ( globalReadOffsetAL_0_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadA_0_0_0_0 + 0);
  a_0_0_1_0 = ( globalReadOffsetAL_1_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadA_0_0_1_0 + 0);
  a_0_0_2_0 = ( globalReadOffsetAL_2_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadA_0_0_2_0 + 0);
  a_0_0_3_0 = ( globalReadOffsetAL_3_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadA_0_0_3_0 + 0);
  a_0_0_4_0 = ( globalReadOffsetAL_4_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadA_0_0_4_0 + 0);
  a_0_0_5_0 = ( globalReadOffsetAL_5_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadA_0_0_5_0 + 0);
  a_0_0_6_0 = ( globalReadOffsetAL_6_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadA_0_0_6_0 + 0);
  a_0_0_7_0 = ( globalReadOffsetAL_7_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadA_0_0_7_0 + 0);


  /* global read b */


  /* global read B */
  b_0_0_0_0 = ( globalReadOffsetBL_0_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadB_0_0_0_0 + 0);
  b_0_0_1_0 = ( globalReadOffsetBL_1_0 + 0 >= (sizeL % LOCAL_DEPTHU) ) ? SCALAR_OOB_DATA : *(globalReadB_0_0_1_0 + 0);


  __syncthreads(); //


  /* local write init pointers A */
  localWriteA_0_0_0_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_0_0);
  localWriteA_0_0_1_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_1_0);
  localWriteA_0_0_2_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_2_0);
  localWriteA_0_0_3_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_3_0);
  localWriteA_0_0_4_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_4_0);
  localWriteA_0_0_5_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_5_0);
  localWriteA_0_0_6_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_6_0);
  localWriteA_0_0_7_0 = (DATA_TYPE *)(localMemory + localWriteOffsetA_0_0_7_0);


  /* local write init pointers B */
  localWriteB_0_0_0_0 = (DATA_TYPE *)(localMemory + localWriteOffsetB_0_0_0_0);
  localWriteB_0_0_1_0 = (DATA_TYPE *)(localMemory + localWriteOffsetB_0_0_1_0);


  /* local write a */

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wconditional-uninitialized"
  *(localWriteA_0_0_0_0 + 0) = a_0_0_0_0;
  *(localWriteA_0_0_1_0 + 0) = a_0_0_1_0;
  *(localWriteA_0_0_2_0 + 0) = a_0_0_2_0;
  *(localWriteA_0_0_3_0 + 0) = a_0_0_3_0;
  *(localWriteA_0_0_4_0 + 0) = a_0_0_4_0;
  *(localWriteA_0_0_5_0 + 0) = a_0_0_5_0;
  *(localWriteA_0_0_6_0 + 0) = a_0_0_6_0;
  *(localWriteA_0_0_7_0 + 0) = a_0_0_7_0;
#pragma clang diagnostic pop


  /* local write b */

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wconditional-uninitialized"
  *(localWriteB_0_0_0_0 + 0) = b_0_0_0_0;
  *(localWriteB_0_0_1_0 + 0) = b_0_0_1_0;
#pragma clang diagnostic pop


  __syncthreads(); //


  /* tail loop: macs */

  while (numIterL-- > 0) {


    /* local read a */

    rA[0*VECTOR_WIDTH+0] = localReadA[0*SG0I*VECTOR_WIDTH + 0]; 
    rA[1*VECTOR_WIDTH+0] = localReadA[1*SG0I*VECTOR_WIDTH + 0]; 
    rA[2*VECTOR_WIDTH+0] = localReadA[2*SG0I*VECTOR_WIDTH + 0]; 
    rA[3*VECTOR_WIDTH+0] = localReadA[3*SG0I*VECTOR_WIDTH + 0]; 


    /* local read b */

    rB[0*VECTOR_WIDTH+0] = localReadB[0*SG1J*VECTOR_WIDTH + 0]; 
    rB[1*VECTOR_WIDTH+0] = localReadB[1*SG1J*VECTOR_WIDTH + 0]; 
    rB[2*VECTOR_WIDTH+0] = localReadB[2*SG1J*VECTOR_WIDTH + 0]; 
    rB[3*VECTOR_WIDTH+0] = localReadB[3*SG1J*VECTOR_WIDTH + 0]; 
    rB[4*VECTOR_WIDTH+0] = localReadB[4*SG1J*VECTOR_WIDTH + 0]; 
    rB[5*VECTOR_WIDTH+0] = localReadB[5*SG1J*VECTOR_WIDTH + 0]; 
    rB[6*VECTOR_WIDTH+0] = localReadB[6*SG1J*VECTOR_WIDTH + 0]; 
    rB[7*VECTOR_WIDTH+0] = localReadB[7*SG1J*VECTOR_WIDTH + 0]; 


    /* local read inc a */

    localReadA += LOCAL_SPLITU*(MT0I+PAD);


    /* local read inc b */

    localReadB += LOCAL_SPLITU*(MT1J+PAD);


    MAC_4x8

  }



  double type_mac_tmp;


  /* not-LocalSplitU: global write indices */

  unsigned int flattenedGlobalC0 = (wg0I)*MT0I + (serial % SG0I)*VECTOR_WIDTH;
  unsigned int flattenedGlobalC1 = (wg1J)*MT1J + (serial / SG0I)*VECTOR_WIDTH;
  unsigned int globalC0I = flattenedGlobalC0;
  unsigned int globalC1J = flattenedGlobalC1;
  unsigned int globalCK = (wgK);


  /* not-LocalSplitU: global write */


  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  0*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 0*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 0*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 0*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[0*VECTOR_WIDTH+0 + (0*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  1*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 0*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 1*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 0*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[1*VECTOR_WIDTH+0 + (0*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  2*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 0*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 2*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 0*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[2*VECTOR_WIDTH+0 + (0*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  3*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 0*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 3*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 0*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[3*VECTOR_WIDTH+0 + (0*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  0*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 1*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 0*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 1*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[0*VECTOR_WIDTH+0 + (1*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  1*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 1*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 1*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 1*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[1*VECTOR_WIDTH+0 + (1*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  2*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 1*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 2*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 1*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[2*VECTOR_WIDTH+0 + (1*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  3*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 1*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 3*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 1*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[3*VECTOR_WIDTH+0 + (1*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  0*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 2*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 0*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 2*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[0*VECTOR_WIDTH+0 + (2*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  1*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 2*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 1*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 2*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[1*VECTOR_WIDTH+0 + (2*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  2*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 2*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 2*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 2*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[2*VECTOR_WIDTH+0 + (2*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  3*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 2*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 3*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 2*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[3*VECTOR_WIDTH+0 + (2*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  0*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 3*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 0*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 3*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[0*VECTOR_WIDTH+0 + (3*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  1*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 3*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 1*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 3*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[1*VECTOR_WIDTH+0 + (3*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  2*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 3*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 2*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 3*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[2*VECTOR_WIDTH+0 + (3*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  3*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 3*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 3*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 3*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[3*VECTOR_WIDTH+0 + (3*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  0*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 4*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 0*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 4*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[0*VECTOR_WIDTH+0 + (4*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  1*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 4*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 1*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 4*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[1*VECTOR_WIDTH+0 + (4*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  2*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 4*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 2*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 4*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[2*VECTOR_WIDTH+0 + (4*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  3*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 4*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 3*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 4*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[3*VECTOR_WIDTH+0 + (4*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  0*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 5*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 0*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 5*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[0*VECTOR_WIDTH+0 + (5*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  1*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 5*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 1*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 5*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[1*VECTOR_WIDTH+0 + (5*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  2*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 5*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 2*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 5*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[2*VECTOR_WIDTH+0 + (5*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  3*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 5*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 3*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 5*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[3*VECTOR_WIDTH+0 + (5*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  0*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 6*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 0*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 6*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[0*VECTOR_WIDTH+0 + (6*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  1*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 6*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 1*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 6*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[1*VECTOR_WIDTH+0 + (6*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  2*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 6*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 2*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 6*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[2*VECTOR_WIDTH+0 + (6*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  3*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 6*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 3*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 6*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[3*VECTOR_WIDTH+0 + (6*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  0*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 7*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 0*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 7*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[0*VECTOR_WIDTH+0 + (7*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  1*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 7*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 1*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 7*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[1*VECTOR_WIDTH+0 + (7*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  2*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 7*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 2*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 7*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[2*VECTOR_WIDTH+0 + (7*VECTOR_WIDTH+0)*TT0I], beta) } }

  /* new vw0 offset - inc and extract tensor dims */
  globalC0I =   flattenedGlobalC0 +  3*SG0I*VECTOR_WIDTH;
  /* new vw1 offset - inc and extract tensor dims */
  globalC1J =   flattenedGlobalC1 + 0 + 7*SG1J*VECTOR_WIDTH;
  if (flattenedGlobalC0 + 3*SG0I*VECTOR_WIDTH < size0I) {  if (flattenedGlobalC1 + 7*SG1J*VECTOR_WIDTH < size1J) {  TYPE_MAC_WRITE( D[ GLOBAL_D( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], C[ GLOBAL_C( (uint64_t) globalC0I, (uint64_t) globalC1J, (uint64_t) globalCK) ], alpha, rC[3*VECTOR_WIDTH+0 + (7*VECTOR_WIDTH+0)*TT0I], beta) } }


}

// ==================================== Kernel end ===========================================

int main() {
    DATA_TYPE* cpu_A;
    DATA_TYPE* cpu_B;
    DATA_TYPE* cpu_C;
    DATA_TYPE* cpu_final;

    DATA_TYPE* gpu_A;
    DATA_TYPE* gpu_B;
    DATA_TYPE* gpu_C;

    DATA_TYPE alpha;
    DATA_TYPE beta;

    hipDeviceProp_t devProp;
    hipGetDeviceProperties(&devProp, 0);

    std::cout << "Device name " << devProp.name << std::endl;

    int i;

    cpu_A = (DATA_TYPE*)malloc(NUM * sizeof(DATA_TYPE));
    cpu_B = (DATA_TYPE*)malloc(NUM * sizeof(DATA_TYPE));
    cpu_C = (DATA_TYPE*)malloc(NUM * sizeof(DATA_TYPE));
    cpu_final = (DATA_TYPE*)malloc(NUM * sizeof(DATA_TYPE));

    // initialize the input data
    for (i = 0; i < NUM; i++) {
        cpu_A[i] = (DATA_TYPE) 1.0f;
        cpu_B[i] = (DATA_TYPE) 1.0f;
        cpu_C[i] = (DATA_TYPE) 0;
    }

//Debug
    std::cout << " A Matrix: ";
    for (i = 0; i < NUM; i++)
      std::cout << cpu_A[i] << ",";
    std::cout << std::endl;

    std::cout << " B Matrix: ";
    for (i = 0; i < NUM; i++)
      std::cout << cpu_B[i] << ",";
    std::cout << std::endl;

    alpha = (DATA_TYPE) 1.0f;
    beta = (DATA_TYPE) 0;

    // allocate the memory on the device side
    hipMalloc((void**)&gpu_A, NUM * sizeof(DATA_TYPE));
    hipMalloc((void**)&gpu_B, NUM * sizeof(DATA_TYPE));
    hipMalloc((void**)&gpu_C, NUM * sizeof(DATA_TYPE));

    // Memory transfer from host to device
    hipMemcpy(gpu_A, cpu_A, NUM * sizeof(DATA_TYPE), hipMemcpyHostToDevice);
    hipMemcpy(gpu_B, cpu_B, NUM * sizeof(DATA_TYPE), hipMemcpyHostToDevice);
    hipMemcpy(gpu_C, cpu_C, NUM * sizeof(DATA_TYPE), hipMemcpyHostToDevice);

    // Lauching kernel from host
    hipLaunchKernelGGL(
	HIP_KERNEL_NAME(Cijk_Ailk_Bjlk_ZB_MT128x32x8_SE_K1), 
	dim3(1,  1, 1),
	dim3(128, 1, 1),
        0, // groupMemBytes
        0,//stream
        gpu_C,
        gpu_C,
        gpu_A,
        gpu_A,
        alpha,
        beta,
        1,//stride begin
        1,
        1,
        1,
        1,
        7,
        1,
        7,//stride end
        1, //size i
        1, //size j
        1, //size k 
        7, //size l
        0,//sataggerUIter
        1,//problemNumGroupTiles0
        1,//problemNumGroupTiles1
        1//magicNumberProblemNumGroupTiles0
        );

    // Memory transfer from device to host
    hipMemcpy(cpu_final, gpu_C, NUM * sizeof(DATA_TYPE), hipMemcpyDeviceToHost);

    // verify the results

    std::cout << "Result = " << cpu_final[0] << std::endl;
    if(cpu_final[0].x == 7 && cpu_final[0].y == 0)
      std::cout << "PASS! " << std::endl;
    else
      std::cout << "FAILED! " << std::endl;
    // free the resources on device side
    hipFree(gpu_A);
    hipFree(gpu_B);
    hipFree(gpu_C);

    // free the resources on host side
    free(cpu_A);
    free(cpu_B);
    free(cpu_C);
    free(cpu_final);

    return 0;
}
