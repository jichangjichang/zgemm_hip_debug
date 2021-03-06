/*******************************************************************************
* Copyright (C) 2016-2019 Advanced Micro Devices, Inc. All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell cop-
* ies of the Software, and to permit persons to whom the Software is furnished
* to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IM-
* PLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
* FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
* COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
* IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNE-
* CTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*******************************************************************************/

/**************************************************
* This file was generated by Tensile:             *
* https://github.com/ROCmSoftwarePlatform/Tensile *
**************************************************/


#include "Solutions.h"
#include <algorithm>
TensileStatus Cijk_Ailk_Bjlk_ZB_MT64x128x8_SE_(
    SolutionLock * solutionLock,
    TensileComplexDouble * dataD,
    const TensileComplexDouble * dataC,
    const TensileComplexDouble * dataA,
    const TensileComplexDouble * dataB,
    TensileComplexDouble alpha,
    TensileComplexDouble beta,
    unsigned int strideD1J,
    unsigned int strideD2K,
    unsigned int strideC1J,
    unsigned int strideC2K,
    unsigned int strideA1L,
    unsigned int strideA2K,
    unsigned int strideB1L,
    unsigned int strideB2K,
    unsigned int sizeI,
    unsigned int sizeJ,
    unsigned int sizeK,
    unsigned int sizeL,
    hipStream_t stream,
    unsigned int numInputEvents,
    hipEvent_t * inputEvents,
    hipEvent_t * outputEvent) {
  TensileStatus status;
  int deviceId;
  hipGetDevice(&deviceId);

  /* kernels */
  const unsigned int numKernels = 1; // 1 or 4

  /* num kernels */
  unsigned int numEnqueues[numKernels] = { 1 };

  /* grid sizes */
  const unsigned int workDim = 3;
  const unsigned int threadTile[2] = { 4, 8 };
  const unsigned int groupSize[2] = { 16, 16 };
  size_t localWorkSize[3] = { 256, 1, 1 };
  size_t globalWorkSize[numKernels][3];
  globalWorkSize[0][2] = 1;
  globalWorkSize[0][2] *= sizeK;
  unsigned int sizeOfC0 = sizeI;
  unsigned int sizeOfC1 = sizeJ;
  unsigned int macroTile0 = static_cast<unsigned int>(groupSize[0] * threadTile[0]);
  unsigned int macroTile1 = static_cast<unsigned int>(groupSize[1] * threadTile[1]);
  unsigned int totalWorkGroups0 = sizeOfC0 / macroTile0;
  unsigned int totalWorkGroups1 = sizeOfC1 / macroTile1;
  // b/c single kernel, add extra work-group here if edge needed
  if (totalWorkGroups0*macroTile0 < sizeOfC0) { totalWorkGroups0++; }
  if (totalWorkGroups1*macroTile1 < sizeOfC1) { totalWorkGroups1++; }
  unsigned int problemNumGroupTiles0 = totalWorkGroups0;
  unsigned int problemNumGroupTiles1 = totalWorkGroups1;
  const unsigned smallNumMagicShift = 31; // bozo, review
  unsigned magicNumberProblemNumGroupTiles0 = (1L<<smallNumMagicShift) / problemNumGroupTiles0 + 1; // bozo, review
  unsigned numFullBlocks =  problemNumGroupTiles1 / 8; // divide by WorkGroupMapping
  unsigned wgmRemainder1 =  problemNumGroupTiles1 % 8;
  if (wgmRemainder1 == 0) wgmRemainder1 = 8;
  unsigned magicNumberWgmRemainder1 = ((1L<<smallNumMagicShift) / wgmRemainder1 + 1);
  globalWorkSize[0][0] = totalWorkGroups0;
  globalWorkSize[0][1] = totalWorkGroups1;

  /* index sizes */
  unsigned int sizes[numKernels][1][4];
  sizes[0][0][0] = sizeI;
  sizes[0][0][1] = sizeJ;
  sizes[0][0][2] = sizeK;
  sizes[0][0][3] = sizeL;
  uint64_t tensor2dSizeC = 1 * std::max(sizeI, strideC1J) * std::max(sizeJ, strideC2K);
  uint64_t tensor2dSizeA = 1;
  uint64_t tensor2dSizeAStride = 0;
  uint64_t tensor2dSizeAOffset = 0;
  tensor2dSizeAStride = std::max(tensor2dSizeA*sizeI, (uint64_t)strideA1L);
  tensor2dSizeAOffset += tensor2dSizeAStride - tensor2dSizeA*sizeI;
  tensor2dSizeA = tensor2dSizeAStride;
  tensor2dSizeAStride = std::max(tensor2dSizeA*sizeL, (uint64_t)strideA2K);
  tensor2dSizeAOffset += tensor2dSizeAStride - tensor2dSizeA*sizeL;
  tensor2dSizeA = tensor2dSizeAStride;
  tensor2dSizeA -= tensor2dSizeAOffset;

  uint64_t tensor2dSizeB = 1;
  uint64_t tensor2dSizeBStride = 0;
  uint64_t tensor2dSizeBOffset = 0;
  tensor2dSizeBStride = std::max(tensor2dSizeB*sizeJ, (uint64_t)strideB1L);
  tensor2dSizeBOffset += tensor2dSizeBStride - tensor2dSizeB*sizeJ;
  tensor2dSizeB = tensor2dSizeBStride;
  tensor2dSizeBStride = std::max(tensor2dSizeB*sizeL, (uint64_t)strideB2K);
  tensor2dSizeBOffset += tensor2dSizeBStride - tensor2dSizeB*sizeL;
  tensor2dSizeB = tensor2dSizeBStride;
  tensor2dSizeB -= tensor2dSizeBOffset;

  unsigned int staggerUIter = 32; // how many stride-sized clicks to stagger start offset
  int unrollLoopIters = sizeL/8/1; // /DepthU/GSU
  while (staggerUIter>1) {
    if (unrollLoopIters >= (staggerUIter*2)) {
      break;}
    staggerUIter /= 2; // step down to smaller stagger
  }
  if (staggerUIter>=1) staggerUIter -= 1;

  int kernelsLaunched=0;

  /* kernel 0: Cijk_Ailk_Bjlk_ZB_MT64x128x8_SE_K1 */
  unsigned int kernelIdx = 0;
  for (unsigned int enqueueIdx = 0; enqueueIdx < numEnqueues[0]; enqueueIdx++) {
    if( inputEvents != NULL )
      hipEventRecord(inputEvents[enqueueIdx], stream );
    try {
      kernelsLaunched++;
      hipLaunchKernelGGL(
        HIP_KERNEL_NAME(Cijk_Ailk_Bjlk_ZB_MT64x128x8_SE_K1),
        dim3(globalWorkSize[kernelIdx][0], globalWorkSize[kernelIdx][1], globalWorkSize[kernelIdx][2]),
        dim3(localWorkSize[0], localWorkSize[1], localWorkSize[2]),
        0, // groupMemBytes
        stream,
        dataD,
        dataC,
        dataA,
        dataB,
        alpha,
        beta,
        strideD1J,
        strideD2K,
        strideC1J,
        strideC2K,
        strideA1L,
        strideA2K,
        strideB1L,
        strideB2K,
        sizes[kernelIdx][enqueueIdx][0],
        sizes[kernelIdx][enqueueIdx][1],
        sizes[kernelIdx][enqueueIdx][2],
        sizes[kernelIdx][enqueueIdx][3]
        ,staggerUIter
        ,problemNumGroupTiles0
        ,problemNumGroupTiles1
        ,magicNumberProblemNumGroupTiles0
        );
      } catch (const std::exception& e) {
#ifdef DEBUG
        std::cerr << e.what() << std::endl;
#endif
        return tensileStatusFailure;
      }
      if( outputEvent != NULL )
        hipEventRecord(outputEvent[enqueueIdx], stream );
  }

  return tensileStatusSuccess;
}

/* Solution Parameters
  ProblemType: Cijk_Ailk_Bjlk_ZB
  AggressivePerfMode: 1
  AssertFree0ElementMultiple: 1
  AssertFree1ElementMultiple: 1
  AssertMinApproxSize: 0
  AssertSummationElementMultiple: 1
  AssignedDerivedParameters: False
  AssignedProblemIndependentDerivedParameters: True
  BufferLoad: False
  BufferStore: True
  CheckDimOverflow: 0
  CheckTensorDimAsserts: False
  DepthU: 8
  DirectToLds: False
  DirectToLdsA: False
  DirectToLdsB: False
  DisableAtomicFail: 0
  DisableKernelPieces: 0
  EdgeType: ShiftPtr
  ExpandPointerSwap: False
  FractionalLoad: False
  GlobalLoadVectorWidthA: 1
  GlobalLoadVectorWidthB: 1
  GlobalRead2A: True
  GlobalRead2B: True
  GlobalReadCoalesceGroupA: True
  GlobalReadCoalesceGroupB: True
  GlobalReadCoalesceVectorA: True
  GlobalReadCoalesceVectorB: True
  GlobalReadVectorWidth: 1
  GlobalSplitU: 1
  GlobalSplitUSummationAssignmentRoundRobin: True
  GlobalSplitUWorkGroupMappingRoundRobin: False
  GlobalWriteVectorWidth: 1
  GuaranteeNoPartialA: True
  GuaranteeNoPartialB: True
  ISA: [9, 0, 8]
  InnerUnroll: 1
  InterleaveAlpha: 0
  KernelLanguage: Source
  LSCA: 64
  LSCB: 128
  LSPA: 4
  LSPB: 2
  LVCA: 64
  LVCB: 128
  LVPA: 4
  LVPB: 2
  LdcEqualsLdd: True
  LdsNumElements: 1536
  LdsOffsetA: 0
  LdsOffsetB: 512
  LdsPadA: 0
  LdsPadB: 0
  LocalDotLayout: 1
  LocalRead2A: True
  LocalRead2B: True
  LocalSplitU: 1
  LocalWrite2A: True
  LocalWrite2B: True
  LocalWriteUseSgprA: False
  LocalWriteUseSgprB: False
  LoopDoWhile: False
  LoopIters: 8
  LoopTail: True
  LoopUnroll: 8
  MacroTile0: 64
  MacroTile1: 128
  MacroTileA: 64
  MacroTileB: 128
  MacroTileShapeMax: 64
  MacroTileShapeMin: 1
  MatrixInstruction: []
  MaxOccupancy: 40
  MaxVgprNumber: 256
  MinVgprNumber: 0
  NonTemporalA: 0
  NonTemporalB: 0
  NonTemporalC: 0
  NumElementsPerThread: 32
  NumGlobalWriteVectorsPerThread: 32
  NumLoadsA: 2
  NumLoadsB: 4
  NumLoadsCoalescedA: 1
  NumLoadsCoalescedB: 1
  NumLoadsPerpendicularA: 2
  NumLoadsPerpendicularB: 4
  NumThreads: 256
  OptNoLoadLoop: 1
  PackBatchDims: 0
  PackFreeDims: 1
  PackGranularity: 2
  PackSummationDims: 0
  PackedC0IdxChars: ['I']
  PackedC0IndicesX: [0]
  PackedC1IdxChars: ['J']
  PackedC1IndicesX: [1]
  PerformanceSyncLocation: -1
  PerformanceWaitCount: -1
  PerformanceWaitLocation: -1
  PersistentKernel: 0
  PrefetchAcrossPersistent: 0
  PrefetchGlobalRead: False
  PrefetchLocalRead: True
  ProblemType: Cijk_Ailk_Bjlk_ZB
  ReplacementKernel: False
  ScheduleGlobalRead: 1
  ScheduleIterAlg: 1
  ScheduleLocalWrite: 1
  StaggerU: 32
  StaggerUMapping: 0
  StaggerUStride: 256
  StoreVectorWidth: 4
  SubGroup0: 16
  SubGroup1: 16
  SubGroupA: 16
  SubGroupB: 16
  SuppressNoLoadLoop: False
  ThreadTile: [4, 8]
  ThreadTile0: 4
  ThreadTile1: 8
  ThreadTileA: 4
  ThreadTileB: 8
  UnrollMemFence: False
  UseSgprForGRO: 0
  Valid: True
  VectorAtomicWidth: 1
  VectorStore: True
  VectorWidth: 1
  WorkGroup: [16, 16, 1]
  WorkGroupMapping: 8
  WorkGroupMappingType: B
  _staggerStrideShift: 1
*/

