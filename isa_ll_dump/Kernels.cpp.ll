; ModuleID = 'Kernels.cpp.bc'
source_filename = "/root/zgemm_hip_debug/source/Kernels.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn-unknown-amdhsa-hcc"

%struct.tensile_complex = type { double, double }
%"class.Kalmar::index" = type { %"struct.Kalmar::index_impl" }
%"struct.Kalmar::index_impl" = type { %"class.Kalmar::__index_leaf" }
%"class.Kalmar::__index_leaf" = type { i32, i32 }
%"class.Kalmar::index.0" = type { %"struct.Kalmar::index_impl.1" }
%"struct.Kalmar::index_impl.1" = type { %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf.2" }
%"class.Kalmar::__index_leaf.2" = type { i32, i32 }
%"class.Kalmar::index.3" = type { %"struct.Kalmar::index_impl.4" }
%"struct.Kalmar::index_impl.4" = type { %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.5" }
%"class.Kalmar::__index_leaf.5" = type { i32, i32 }

@_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory = internal addrspace(3) global [640 x %struct.tensile_complex] undef, align 16
@llvm.used = appending global [358 x i8*] [i8* bitcast (void (%struct.tensile_complex*, %struct.tensile_complex*, %struct.tensile_complex*, %struct.tensile_complex*, %struct.tensile_complex, %struct.tensile_complex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1 to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math10fpclassifyEDF16_ to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math10fpclassifyEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math10fpclassifyEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math10nearbyintfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math10nextafterfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math10remainderfEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3cosEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3cosEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3cosEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3erfEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3erfEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3erfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3expEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3expEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3expEf to i8*), i8* bitcast (half (half, half, half)* @_ZN6Kalmar12precise_math3fmaEDF16_DF16_DF16_ to i8*), i8* bitcast (double (double, double, double)* @_ZN6Kalmar12precise_math3fmaEddd to i8*), i8* bitcast (float (float, float, float)* @_ZN6Kalmar12precise_math3fmaEfff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3logEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3logEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3logEf to i8*), i8* bitcast (double (i32)* @_ZN6Kalmar12precise_math3nanEi to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math3powEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math3powEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math3powEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3sinEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3sinEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3sinEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3tanEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3tanEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3tanEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4acosEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4acosEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4acosEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4asinEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4asinEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4asinEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4atanEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4atanEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4atanEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4cbrtEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4cbrtEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4cbrtEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4ceilEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4ceilEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4ceilEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4cosfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4coshEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4coshEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4coshEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4erfcEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4erfcEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4erfcEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4erffEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4exp2EDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4exp2Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4exp2Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4expfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4fabsEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4fabsEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4fabsEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math4fdimEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math4fdimEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4fdimEff to i8*), i8* bitcast (float (float, float, float)* @_ZN6Kalmar12precise_math4fmafEfff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math4fmaxEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math4fmaxEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4fmaxEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math4fminEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math4fminEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4fminEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math4fmodEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math4fmodEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4fmodEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4log2EDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4log2Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4log2Ef to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4logbEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4logbEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4logbEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4logfEf to i8*), i8* bitcast (half (half, half*)* @_ZN6Kalmar12precise_math4modfEDF16_PDF16_ to i8*), i8* bitcast (double (double, double*)* @_ZN6Kalmar12precise_math4modfEdPd to i8*), i8* bitcast (float (float, float*)* @_ZN6Kalmar12precise_math4modfEfPf to i8*), i8* bitcast (float (i32)* @_ZN6Kalmar12precise_math4nanfEi to i8*), i8* bitcast (half (i32)* @_ZN6Kalmar12precise_math4nanhEi to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4powfEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4sinfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4sinhEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4sinhEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4sinhEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4sqrtEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4sqrtEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4sqrtEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4tanfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4tanhEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4tanhEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4tanhEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5acosfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5acoshEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5acoshEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5acoshEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5asinfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5asinhEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5asinhEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5asinhEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math5atan2EDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math5atan2Edd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5atan2Eff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5atanfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5atanhEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5atanhEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5atanhEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5cbrtfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5ceilfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5coshfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5cospiEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5cospiEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5cospiEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5erfcfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5exp10EDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5exp10Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5exp10Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5exp2fEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5expm1EDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5expm1Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5expm1Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5fabsfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5fdimfEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5floorEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5floorEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5floorEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5fmaxfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5fminfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5fmodfEff to i8*), i8* bitcast (half (half, i32*)* @_ZN6Kalmar12precise_math5frexpEDF16_Pi to i8*), i8* bitcast (double (double, i32*)* @_ZN6Kalmar12precise_math5frexpEdPi to i8*), i8* bitcast (float (float, i32*)* @_ZN6Kalmar12precise_math5frexpEfPi to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math5hypotEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math5hypotEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5hypotEff to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math5ilogbEDF16_ to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math5ilogbEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math5ilogbEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math5isinfEDF16_ to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math5isinfEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math5isinfEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math5isnanEDF16_ to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math5isnanEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math5isnanEf to i8*), i8* bitcast (half (half, i16)* @_ZN6Kalmar12precise_math5ldexpEDF16_s to i8*), i8* bitcast (double (double, i32)* @_ZN6Kalmar12precise_math5ldexpEdi to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar12precise_math5ldexpEfi to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5log10EDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5log10Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5log10Ef to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5log1pEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5log1pEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5log1pEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5log2fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5logbfEf to i8*), i8* bitcast (float (float, float*)* @_ZN6Kalmar12precise_math5modffEfPf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5rcbrtEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5rcbrtEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5rcbrtEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5roundEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5roundEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5roundEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5rsqrtEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5rsqrtEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5rsqrtEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math5scalbEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math5scalbEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5scalbEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5sinhfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5sinpiEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5sinpiEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5sinpiEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5sqrtfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5tanhfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5tanpiEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5tanpiEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5tanpiEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5truncEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5truncEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5truncEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6acoshfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6asinhfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math6atan2fEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6atanhfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6cospifEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math6erfinvEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math6erfinvEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6erfinvEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6exp10fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6expm1fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6floorfEf to i8*), i8* bitcast (float (float, i32*)* @_ZN6Kalmar12precise_math6frexpfEfPi to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math6hypotfEff to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math6ilogbfEf to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar12precise_math6ldexpfEfi to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math6lgammaEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math6lgammaEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6lgammaEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6log10fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6log1pfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6rcbrtfEf to i8*), i8* bitcast (half (half, half, i32*)* @_ZN6Kalmar12precise_math6remquoEDF16_DF16_Pi to i8*), i8* bitcast (double (double, double, i32*)* @_ZN6Kalmar12precise_math6remquoEddPi to i8*), i8* bitcast (float (float, float, i32*)* @_ZN6Kalmar12precise_math6remquoEffPi to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6roundfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6rsqrtfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math6scalbfEff to i8*), i8* bitcast (half (half, i32)* @_ZN6Kalmar12precise_math6scalbnEDF16_i to i8*), i8* bitcast (double (double, i32)* @_ZN6Kalmar12precise_math6scalbnEdi to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar12precise_math6scalbnEfi to i8*), i8* bitcast (void (half, half*, half*)* @_ZN6Kalmar12precise_math6sincosEDF16_PDF16_S1_ to i8*), i8* bitcast (void (double, double*, double*)* @_ZN6Kalmar12precise_math6sincosEdPdS1_ to i8*), i8* bitcast (void (float, float*, float*)* @_ZN6Kalmar12precise_math6sincosEfPfS1_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6sinpifEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6tanpifEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math6tgammaEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math6tgammaEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6tgammaEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6truncfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math7erfcinvEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math7erfcinvEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math7erfcinvEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math7erfinvfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math7lgammafEf to i8*), i8* bitcast (float (float, float, i32*)* @_ZN6Kalmar12precise_math7remquofEffPi to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar12precise_math7scalbnfEfi to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math7signbitEDF16_ to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math7signbitEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math7signbitEf to i8*), i8* bitcast (void (float, float*, float*)* @_ZN6Kalmar12precise_math7sincosfEfPfS1_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math7tgammafEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math8copysignEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math8copysignEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math8copysignEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math8erfcinvfEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math8isfiniteEDF16_ to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math8isfiniteEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math8isfiniteEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math8isnormalEDF16_ to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math8isnormalEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math8isnormalEf to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math8signbitfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math9copysignfEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math9nearbyintEDF16_ to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math9nearbyintEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math9nearbyintEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math9nextafterEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math9nextafterEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math9nextafterEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math9remainderEDF16_DF16_ to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math9remainderEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math9remainderEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3cosEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3cosEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3expEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3expEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3logEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3logEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math3powEDF16_DF16_ to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math3powEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3sinEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3sinEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3tanEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3tanEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4acosEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4acosEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4asinEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4asinEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4atanEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4atanEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4ceilEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4ceilEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4cosfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4coshEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4coshEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4exp2EDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4exp2Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4expfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4fabsEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4fabsEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math4fmaxEDF16_DF16_ to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math4fmaxEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math4fminEDF16_DF16_ to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math4fminEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math4fmodEDF16_DF16_ to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math4fmodEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4log2EDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4log2Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4logfEf to i8*), i8* bitcast (half (half, half*)* @_ZN6Kalmar9fast_math4modfEDF16_PDF16_ to i8*), i8* bitcast (float (float, float*)* @_ZN6Kalmar9fast_math4modfEfPf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math4powfEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4sinfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4sinhEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4sinhEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4sqrtEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4sqrtEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4tanfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4tanhEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4tanhEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5acosfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5asinfEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math5atan2EDF16_DF16_ to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math5atan2Eff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5atanfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5ceilfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5coshfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5exp2fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5fabsfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5floorEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5floorEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math5fmaxfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math5fminfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math5fmodfEff to i8*), i8* bitcast (half (half, i32*)* @_ZN6Kalmar9fast_math5frexpEDF16_Pi to i8*), i8* bitcast (float (float, i32*)* @_ZN6Kalmar9fast_math5frexpEfPi to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar9fast_math5isinfEDF16_ to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math5isinfEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar9fast_math5isnanEDF16_ to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math5isnanEf to i8*), i8* bitcast (half (half, i16)* @_ZN6Kalmar9fast_math5ldexpEDF16_t to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar9fast_math5ldexpEfi to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5log10EDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5log10Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5log2fEf to i8*), i8* bitcast (float (float, float*)* @_ZN6Kalmar9fast_math5modffEfPf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5roundEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5roundEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5rsqrtEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5rsqrtEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5sinhfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5sqrtfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5tanhfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5truncEDF16_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5truncEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math6atan2fEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6floorfEf to i8*), i8* bitcast (float (float, i32*)* @_ZN6Kalmar9fast_math6frexpfEfPi to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar9fast_math6ldexpfEfi to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6log10fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6roundfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6rsqrtfEf to i8*), i8* bitcast (void (half, half*, half*)* @_ZN6Kalmar9fast_math6sincosEDF16_PDF16_S1_ to i8*), i8* bitcast (void (float, float*, float*)* @_ZN6Kalmar9fast_math6sincosEfPfS1_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6truncfEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar9fast_math7signbitEDF16_ to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math7signbitEf to i8*), i8* bitcast (void (float, float*, float*)* @_ZN6Kalmar9fast_math7sincosfEfPfS1_ to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar9fast_math8isfiniteEDF16_ to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math8isfiniteEf to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math8signbitfEf to i8*)], section "llvm.metadata"

define weak_odr void @_ZN6Kalmar5indexILi1EEC2Ev(%"class.Kalmar::index"* %this) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC1Ev(%"class.Kalmar::index"* %this) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC2ERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC1ERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC2Ei(%"class.Kalmar::index"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC1Ei(%"class.Kalmar::index"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC2EPKi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC1EPKi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC2EPi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi1EEC1EPi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEaSERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i4.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr i32 @_ZNK6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %this, i32 %c) local_unnamed_addr #1 align 2 {
entry:
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"struct.Kalmar::index_impl", %"struct.Kalmar::index_impl"* %base_, i64 %idx.ext.i, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  ret i32 %0
}

define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %this, i32 %c) local_unnamed_addr #1 align 2 {
entry:
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"struct.Kalmar::index_impl", %"struct.Kalmar::index_impl"* %base_, i64 %idx.ext.i, i32 0, i32 0
  ret i32* %__idx.i.i
}

define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi1EEeqERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i4.i, align 4, !tbaa !8
  %cmp.i = icmp eq i32 %0, %1
  ret i1 %cmp.i
}

define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi1EEneERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i4.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i4.i.i, align 4, !tbaa !8
  %cmp.i.i = icmp ne i32 %0, %1
  ret i1 %cmp.i.i
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEpLERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %rhs) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %rhs, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i4.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %1, %0
  store i32 %add.i.i, i32* %__idx.i4.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmIERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %rhs) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %rhs, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i4.i, align 4, !tbaa !3
  %sub.i.i = sub nsw i32 %1, %0
  store i32 %sub.i.i, i32* %__idx.i4.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmLERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i4.i, align 4, !tbaa !3
  %mul.i.i = mul nsw i32 %1, %0
  store i32 %mul.i.i, i32* %__idx.i4.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEdVERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i4.i, align 4, !tbaa !3
  %div.i.i = sdiv i32 %1, %0
  store i32 %div.i.i, i32* %__idx.i4.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EErMERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i4.i, align 4, !tbaa !3
  %rem.i.i = srem i32 %1, %0
  store i32 %rem.i.i, i32* %__idx.i4.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEpLEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %0, %value
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmIEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %sub.i.i = sub nsw i32 %0, %value
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmLEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %mul.i.i = mul nsw i32 %0, %value
  store i32 %mul.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEdVEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %div.i.i = sdiv i32 %0, %value
  store i32 %div.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EErMEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %rem.i.i = srem i32 %0, %value
  store i32 %rem.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEppEv(%"class.Kalmar::index"* %this) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %0, 1
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr void @_ZN6Kalmar5indexILi1EEppEi(%"class.Kalmar::index"* noalias sret %agg.result, %"class.Kalmar::index"* %this, i32) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %1, 1
  store i32 %add.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  ret void
}

define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmmEv(%"class.Kalmar::index"* %this) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %sub.i.i = add nsw i32 %0, -1
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  ret %"class.Kalmar::index"* %this
}

define weak_odr void @_ZN6Kalmar5indexILi1EEmmEi(%"class.Kalmar::index"* noalias sret %agg.result, %"class.Kalmar::index"* %this, i32) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i.i, align 4, !tbaa !3
  %sub.i.i = add nsw i32 %1, -1
  store i32 %sub.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  ret void
}

; Function Attrs: convergent
define weak_odr void @_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index"* %this) local_unnamed_addr #2 align 2 {
entry:
  %call.i = tail call i32 @amp_get_global_id(i32 0) #8
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %call.i, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC2Ev(%"class.Kalmar::index.0"* %this) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i2.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %__idx.i2.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC1Ev(%"class.Kalmar::index.0"* %this) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %__idx.i2.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %__idx.i2.i.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC2ERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i3.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i3.i, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %__idx.i4.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i4.i.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC1ERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i.i, align 4, !tbaa !8
  %__idx.i3.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i3.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  %__idx.i4.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i4.i.i.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC2Ei(%"class.Kalmar::index.0"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i2.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %i0, i32* %__idx.i2.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC1Ei(%"class.Kalmar::index.0"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %__idx.i2.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %i0, i32* %__idx.i2.i.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC2EPKi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds i32, i32* %components, i64 1
  %1 = load i32, i32* %arrayidx2.i, align 4, !tbaa !8
  %__idx.i3.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i3.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC1EPKi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds i32, i32* %components, i64 1
  %1 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !8
  %__idx.i3.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i3.i.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC2EPi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds i32, i32* %components, i64 1
  %1 = load i32, i32* %arrayidx2.i, align 4, !tbaa !8
  %__idx.i3.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i3.i, align 4, !tbaa !9
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi2EEC1EPi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds i32, i32* %components, i64 1
  %1 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !8
  %__idx.i3.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i3.i.i, align 4, !tbaa !9
  ret void
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEaSERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i12.i, align 4, !tbaa !3
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %__idx.i10.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i10.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr i32 @_ZNK6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %this, i32 %c) local_unnamed_addr #1 align 2 {
entry:
  %this12.cast.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i, i64 %idx.ext.i, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  ret i32 %0
}

define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %this, i32 %c) local_unnamed_addr #1 align 2 {
entry:
  %this12.cast.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i, i64 %idx.ext.i, i32 0
  ret i32* %__idx.i.i
}

define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi2EEeqERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) local_unnamed_addr #1 align 2 {
entry:
  %this12.cast.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i, i64 1, i32 0
  %0 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %this12.cast.i.i4.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0
  %__idx.i.i.i6.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i4.i, i64 1, i32 0
  %1 = load i32, i32* %__idx.i.i.i6.i, align 4, !tbaa !8
  %cmp.i = icmp eq i32 %0, %1
  br i1 %cmp.i, label %land.rhs.i, label %_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_.exit

land.rhs.i:                                       ; preds = %entry
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i4.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %__idx.i.i.i4.i.i, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32 %2, %3
  br label %_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_.exit

_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_.exit: ; preds = %land.rhs.i, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp.i.i, %land.rhs.i ]
  ret i1 %4
}

define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi2EEneERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) local_unnamed_addr #1 align 2 {
entry:
  %this12.cast.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i.i, i64 1, i32 0
  %0 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !8
  %this12.cast.i.i4.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0
  %__idx.i.i.i6.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i4.i.i, i64 1, i32 0
  %1 = load i32, i32* %__idx.i.i.i6.i.i, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32 %0, %1
  br i1 %cmp.i.i, label %land.rhs.i.i, label %_ZNK6Kalmar5indexILi2EEeqERKS1_.exit

land.rhs.i.i:                                     ; preds = %entry
  %__idx.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i4.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %__idx.i.i.i4.i.i.i, align 4, !tbaa !8
  %cmp.i.i.i = icmp ne i32 %2, %3
  br label %_ZNK6Kalmar5indexILi2EEeqERKS1_.exit

_ZNK6Kalmar5indexILi2EEeqERKS1_.exit:             ; preds = %land.rhs.i.i, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp.i.i.i, %land.rhs.i.i ]
  ret i1 %4
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEpLERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %rhs) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %rhs, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i12.i, align 4, !tbaa !3
  %add.i13.i = add nsw i32 %1, %0
  store i32 %add.i13.i, i32* %__idx.i12.i, align 4, !tbaa !3
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %rhs, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %__idx.i10.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i10.i, align 4, !tbaa !9
  %add.i.i = add nsw i32 %3, %2
  store i32 %add.i.i, i32* %__idx.i10.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmIERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %rhs) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %rhs, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i12.i, align 4, !tbaa !3
  %sub.i13.i = sub nsw i32 %1, %0
  store i32 %sub.i13.i, i32* %__idx.i12.i, align 4, !tbaa !3
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %rhs, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %__idx.i10.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i10.i, align 4, !tbaa !9
  %sub.i.i = sub nsw i32 %3, %2
  store i32 %sub.i.i, i32* %__idx.i10.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmLERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i12.i, align 4, !tbaa !3
  %mul.i13.i = mul nsw i32 %1, %0
  store i32 %mul.i13.i, i32* %__idx.i12.i, align 4, !tbaa !3
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %__idx.i10.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i10.i, align 4, !tbaa !9
  %mul.i.i = mul nsw i32 %3, %2
  store i32 %mul.i.i, i32* %__idx.i10.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEdVERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i12.i, align 4, !tbaa !3
  %div.i13.i = sdiv i32 %1, %0
  store i32 %div.i13.i, i32* %__idx.i12.i, align 4, !tbaa !3
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %__idx.i10.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i10.i, align 4, !tbaa !9
  %div.i.i = sdiv i32 %3, %2
  store i32 %div.i.i, i32* %__idx.i10.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EErMERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i12.i, align 4, !tbaa !3
  %rem.i13.i = srem i32 %1, %0
  store i32 %rem.i13.i, i32* %__idx.i12.i, align 4, !tbaa !3
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %__idx.i10.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i10.i, align 4, !tbaa !9
  %rem.i.i = srem i32 %3, %2
  store i32 %rem.i.i, i32* %__idx.i10.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEpLEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %0, %value
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i7.i, align 4, !tbaa !9
  %add.i8.i = add nsw i32 %1, %value
  store i32 %add.i8.i, i32* %__idx.i7.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmIEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %sub.i.i = sub nsw i32 %0, %value
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i7.i, align 4, !tbaa !9
  %sub.i8.i = sub nsw i32 %1, %value
  store i32 %sub.i8.i, i32* %__idx.i7.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmLEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %mul.i.i = mul nsw i32 %0, %value
  store i32 %mul.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i7.i, align 4, !tbaa !9
  %mul.i8.i = mul nsw i32 %1, %value
  store i32 %mul.i8.i, i32* %__idx.i7.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEdVEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %div.i.i = sdiv i32 %0, %value
  store i32 %div.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i7.i, align 4, !tbaa !9
  %div.i8.i = sdiv i32 %1, %value
  store i32 %div.i8.i, i32* %__idx.i7.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EErMEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %rem.i.i = srem i32 %0, %value
  store i32 %rem.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i7.i, align 4, !tbaa !9
  %rem.i8.i = srem i32 %1, %value
  store i32 %rem.i8.i, i32* %__idx.i7.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEppEv(%"class.Kalmar::index.0"* %this) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %0, 1
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i7.i, align 4, !tbaa !9
  %add.i8.i = add nsw i32 %1, 1
  store i32 %add.i8.i, i32* %__idx.i7.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr void @_ZN6Kalmar5indexILi2EEppEi(%"class.Kalmar::index.0"* noalias sret %agg.result, %"class.Kalmar::index.0"* %this, i32) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %__idx.i3.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i3.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i.i, align 4, !tbaa !3
  %__idx.i4.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %agg.result, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i4.i.i.i.i, align 4, !tbaa !9
  %add.i.i = add nsw i32 %1, 1
  store i32 %add.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  %add.i8.i = add nsw i32 %2, 1
  store i32 %add.i8.i, i32* %__idx.i3.i.i.i, align 4, !tbaa !9
  ret void
}

define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmmEv(%"class.Kalmar::index.0"* %this) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %sub.i.i = add nsw i32 %0, -1
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i7.i, align 4, !tbaa !9
  %sub.i8.i = add nsw i32 %1, -1
  store i32 %sub.i8.i, i32* %__idx.i7.i, align 4, !tbaa !9
  ret %"class.Kalmar::index.0"* %this
}

define weak_odr void @_ZN6Kalmar5indexILi2EEmmEi(%"class.Kalmar::index.0"* noalias sret %agg.result, %"class.Kalmar::index.0"* %this, i32) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %__idx.i3.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i3.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i.i, align 4, !tbaa !3
  %__idx.i4.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %agg.result, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i4.i.i.i.i, align 4, !tbaa !9
  %sub.i.i = add nsw i32 %1, -1
  store i32 %sub.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  %sub.i8.i = add nsw i32 %2, -1
  store i32 %sub.i8.i, i32* %__idx.i3.i.i.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: convergent
define weak_odr void @_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index.0"* %this) local_unnamed_addr #2 align 2 {
entry:
  %call.i = tail call i32 @amp_get_global_id(i32 0) #8
  %this12.cast.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i, i64 1, i32 0
  store i32 %call.i, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %call.i.i = tail call i32 @amp_get_global_id(i32 1) #8
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %call.i.i, i32* %__idx.i.i.i.i.i, align 4, !tbaa !8
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC2Ev(%"class.Kalmar::index.3"* %this) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i3.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %__idx.i3.i, align 4, !tbaa !9
  %__idx.i2.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 0, i32* %__idx.i2.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC1Ev(%"class.Kalmar::index.3"* %this) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %__idx.i3.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %__idx.i3.i.i, align 4, !tbaa !9
  %__idx.i2.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 0, i32* %__idx.i2.i.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC2ERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i6.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i6.i, align 4, !tbaa !8
  %__idx.i5.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i5.i, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %__idx.i7.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i7.i.i, align 4, !tbaa !9
  %__idx.i6.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %2, i32* %__idx.i6.i.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC1ERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i.i, align 4, !tbaa !8
  %__idx.i6.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i6.i.i, align 4, !tbaa !8
  %__idx.i5.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i5.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  %__idx.i7.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i7.i.i.i, align 4, !tbaa !9
  %__idx.i6.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %2, i32* %__idx.i6.i.i.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC2Ei(%"class.Kalmar::index.3"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i3.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %i0, i32* %__idx.i3.i, align 4, !tbaa !9
  %__idx.i2.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %i0, i32* %__idx.i2.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC1Ei(%"class.Kalmar::index.3"* %this, i32 %i0) unnamed_addr #0 align 2 {
entry:
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %__idx.i3.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %i0, i32* %__idx.i3.i.i, align 4, !tbaa !9
  %__idx.i2.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %i0, i32* %__idx.i2.i.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC2EPKi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds i32, i32* %components, i64 1
  %1 = load i32, i32* %arrayidx2.i, align 4, !tbaa !8
  %__idx.i5.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i5.i, align 4, !tbaa !9
  %arrayidx3.i = getelementptr inbounds i32, i32* %components, i64 2
  %2 = load i32, i32* %arrayidx3.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %2, i32* %__idx.i4.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC1EPKi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds i32, i32* %components, i64 1
  %1 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !8
  %__idx.i5.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i5.i.i, align 4, !tbaa !9
  %arrayidx3.i.i = getelementptr inbounds i32, i32* %components, i64 2
  %2 = load i32, i32* %arrayidx3.i.i, align 4, !tbaa !8
  %__idx.i4.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %2, i32* %__idx.i4.i.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC2EPi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds i32, i32* %components, i64 1
  %1 = load i32, i32* %arrayidx2.i, align 4, !tbaa !8
  %__idx.i5.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i5.i, align 4, !tbaa !9
  %arrayidx3.i = getelementptr inbounds i32, i32* %components, i64 2
  %2 = load i32, i32* %arrayidx3.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %2, i32* %__idx.i4.i, align 4, !tbaa !11
  ret void
}

define weak_odr void @_ZN6Kalmar5indexILi3EEC1EPi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
entry:
  %0 = load i32, i32* %components, align 4, !tbaa !8
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i.i.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds i32, i32* %components, i64 1
  %1 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !8
  %__idx.i5.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i5.i.i, align 4, !tbaa !9
  %arrayidx3.i.i = getelementptr inbounds i32, i32* %components, i64 2
  %2 = load i32, i32* %arrayidx3.i.i, align 4, !tbaa !8
  %__idx.i4.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %2, i32* %__idx.i4.i.i, align 4, !tbaa !11
  ret void
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEaSERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %0, i32* %__idx.i21.i, align 4, !tbaa !3
  %__idx.i20.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i20.i, align 4, !tbaa !8
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %1, i32* %__idx.i19.i, align 4, !tbaa !9
  %__idx.i18.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i18.i, align 4, !tbaa !8
  %__idx.i17.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %2, i32* %__idx.i17.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %this, i32 %c) local_unnamed_addr #1 align 2 {
entry:
  %this12.cast.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i, i64 %idx.ext.i, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  ret i32 %0
}

define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %this, i32 %c) local_unnamed_addr #1 align 2 {
entry:
  %this12.cast.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i, i64 %idx.ext.i, i32 0
  ret i32* %__idx.i.i
}

define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi3EEeqERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) local_unnamed_addr #1 align 2 {
entry:
  %this12.cast.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i, i64 2, i32 0
  %0 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %this12.cast.i.i4.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0
  %__idx.i.i.i6.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i4.i, i64 2, i32 0
  %1 = load i32, i32* %__idx.i.i.i6.i, align 4, !tbaa !8
  %cmp.i = icmp eq i32 %0, %1
  br i1 %cmp.i, label %land.rhs.i, label %_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_.exit

land.rhs.i:                                       ; preds = %entry
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i, i64 1, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i6.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i4.i, i64 1, i32 0
  %3 = load i32, i32* %__idx.i.i.i6.i.i, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32 %2, %3
  br i1 %cmp.i.i, label %land.rhs.i.i, label %_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_.exit

land.rhs.i.i:                                     ; preds = %land.rhs.i
  %__idx.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %4 = load i32, i32* %__idx.i.i.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i4.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %__idx.i.i.i4.i.i.i, align 4, !tbaa !8
  %cmp.i.i.i = icmp eq i32 %4, %5
  br label %_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_.exit

_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_.exit: ; preds = %land.rhs.i.i, %land.rhs.i, %entry
  %6 = phi i1 [ false, %entry ], [ false, %land.rhs.i ], [ %cmp.i.i.i, %land.rhs.i.i ]
  ret i1 %6
}

define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi3EEneERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) local_unnamed_addr #1 align 2 {
entry:
  %this12.cast.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i.i, i64 2, i32 0
  %0 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !8
  %this12.cast.i.i4.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0
  %__idx.i.i.i6.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i4.i.i, i64 2, i32 0
  %1 = load i32, i32* %__idx.i.i.i6.i.i, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32 %0, %1
  br i1 %cmp.i.i, label %land.rhs.i.i, label %_ZNK6Kalmar5indexILi3EEeqERKS1_.exit

land.rhs.i.i:                                     ; preds = %entry
  %__idx.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i.i, i64 1, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i6.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i4.i.i, i64 1, i32 0
  %3 = load i32, i32* %__idx.i.i.i6.i.i.i, align 4, !tbaa !8
  %cmp.i.i.i = icmp eq i32 %2, %3
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %_ZNK6Kalmar5indexILi3EEeqERKS1_.exit

land.rhs.i.i.i:                                   ; preds = %land.rhs.i.i
  %__idx.i.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %4 = load i32, i32* %__idx.i.i.i.i.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i4.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %__idx.i.i.i4.i.i.i.i, align 4, !tbaa !8
  %cmp.i.i.i.i = icmp ne i32 %4, %5
  br label %_ZNK6Kalmar5indexILi3EEeqERKS1_.exit

_ZNK6Kalmar5indexILi3EEeqERKS1_.exit:             ; preds = %land.rhs.i.i.i, %land.rhs.i.i, %entry
  %6 = phi i1 [ true, %entry ], [ true, %land.rhs.i.i ], [ %cmp.i.i.i.i, %land.rhs.i.i.i ]
  ret i1 %6
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEpLERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %rhs) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i22.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i22.i, align 4, !tbaa !3
  %add.i23.i = add nsw i32 %1, %0
  store i32 %add.i23.i, i32* %__idx.i22.i, align 4, !tbaa !3
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i19.i, align 4, !tbaa !9
  %add.i20.i = add nsw i32 %3, %2
  store i32 %add.i20.i, i32* %__idx.i19.i, align 4, !tbaa !9
  %__idx.i18.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 2, i32 0
  %4 = load i32, i32* %__idx.i18.i, align 4, !tbaa !8
  %__idx.i17.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i17.i, align 4, !tbaa !11
  %add.i.i = add nsw i32 %5, %4
  store i32 %add.i.i, i32* %__idx.i17.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmIERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %rhs) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i22.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i22.i, align 4, !tbaa !3
  %sub.i23.i = sub nsw i32 %1, %0
  store i32 %sub.i23.i, i32* %__idx.i22.i, align 4, !tbaa !3
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i19.i, align 4, !tbaa !9
  %sub.i20.i = sub nsw i32 %3, %2
  store i32 %sub.i20.i, i32* %__idx.i19.i, align 4, !tbaa !9
  %__idx.i18.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 2, i32 0
  %4 = load i32, i32* %__idx.i18.i, align 4, !tbaa !8
  %__idx.i17.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i17.i, align 4, !tbaa !11
  %sub.i.i = sub nsw i32 %5, %4
  store i32 %sub.i.i, i32* %__idx.i17.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmLERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i22.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i22.i, align 4, !tbaa !3
  %mul.i23.i = mul nsw i32 %1, %0
  store i32 %mul.i23.i, i32* %__idx.i22.i, align 4, !tbaa !3
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i19.i, align 4, !tbaa !9
  %mul.i20.i = mul nsw i32 %3, %2
  store i32 %mul.i20.i, i32* %__idx.i19.i, align 4, !tbaa !9
  %__idx.i18.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 2, i32 0
  %4 = load i32, i32* %__idx.i18.i, align 4, !tbaa !8
  %__idx.i17.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i17.i, align 4, !tbaa !11
  %mul.i.i = mul nsw i32 %5, %4
  store i32 %mul.i.i, i32* %__idx.i17.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEdVERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i22.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i22.i, align 4, !tbaa !3
  %div.i23.i = sdiv i32 %1, %0
  store i32 %div.i23.i, i32* %__idx.i22.i, align 4, !tbaa !3
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i19.i, align 4, !tbaa !9
  %div.i20.i = sdiv i32 %3, %2
  store i32 %div.i20.i, i32* %__idx.i19.i, align 4, !tbaa !9
  %__idx.i18.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 2, i32 0
  %4 = load i32, i32* %__idx.i18.i, align 4, !tbaa !8
  %__idx.i17.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i17.i, align 4, !tbaa !11
  %div.i.i = sdiv i32 %5, %4
  store i32 %div.i.i, i32* %__idx.i17.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EErMERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !8
  %__idx.i22.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i22.i, align 4, !tbaa !3
  %rem.i23.i = srem i32 %1, %0
  store i32 %rem.i23.i, i32* %__idx.i22.i, align 4, !tbaa !3
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i19.i, align 4, !tbaa !9
  %rem.i20.i = srem i32 %3, %2
  store i32 %rem.i20.i, i32* %__idx.i19.i, align 4, !tbaa !9
  %__idx.i18.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 2, i32 0
  %4 = load i32, i32* %__idx.i18.i, align 4, !tbaa !8
  %__idx.i17.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i17.i, align 4, !tbaa !11
  %rem.i.i = srem i32 %5, %4
  store i32 %rem.i.i, i32* %__idx.i17.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEpLEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %0, %value
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i14.i, align 4, !tbaa !9
  %add.i15.i = add nsw i32 %1, %value
  store i32 %add.i15.i, i32* %__idx.i14.i, align 4, !tbaa !9
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i12.i, align 4, !tbaa !11
  %add.i13.i = add nsw i32 %2, %value
  store i32 %add.i13.i, i32* %__idx.i12.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmIEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %sub.i.i = sub nsw i32 %0, %value
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i14.i, align 4, !tbaa !9
  %sub.i15.i = sub nsw i32 %1, %value
  store i32 %sub.i15.i, i32* %__idx.i14.i, align 4, !tbaa !9
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i12.i, align 4, !tbaa !11
  %sub.i13.i = sub nsw i32 %2, %value
  store i32 %sub.i13.i, i32* %__idx.i12.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmLEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %mul.i.i = mul nsw i32 %0, %value
  store i32 %mul.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i14.i, align 4, !tbaa !9
  %mul.i15.i = mul nsw i32 %1, %value
  store i32 %mul.i15.i, i32* %__idx.i14.i, align 4, !tbaa !9
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i12.i, align 4, !tbaa !11
  %mul.i13.i = mul nsw i32 %2, %value
  store i32 %mul.i13.i, i32* %__idx.i12.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEdVEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %div.i.i = sdiv i32 %0, %value
  store i32 %div.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i14.i, align 4, !tbaa !9
  %div.i15.i = sdiv i32 %1, %value
  store i32 %div.i15.i, i32* %__idx.i14.i, align 4, !tbaa !9
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i12.i, align 4, !tbaa !11
  %div.i13.i = sdiv i32 %2, %value
  store i32 %div.i13.i, i32* %__idx.i12.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EErMEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %rem.i.i = srem i32 %0, %value
  store i32 %rem.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i14.i, align 4, !tbaa !9
  %rem.i15.i = srem i32 %1, %value
  store i32 %rem.i15.i, i32* %__idx.i14.i, align 4, !tbaa !9
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i12.i, align 4, !tbaa !11
  %rem.i13.i = srem i32 %2, %value
  store i32 %rem.i13.i, i32* %__idx.i12.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEppEv(%"class.Kalmar::index.3"* %this) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %0, 1
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i14.i, align 4, !tbaa !9
  %add.i15.i = add nsw i32 %1, 1
  store i32 %add.i15.i, i32* %__idx.i14.i, align 4, !tbaa !9
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i12.i, align 4, !tbaa !11
  %add.i13.i = add nsw i32 %2, 1
  store i32 %add.i13.i, i32* %__idx.i12.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr void @_ZN6Kalmar5indexILi3EEppEi(%"class.Kalmar::index.3"* noalias sret %agg.result, %"class.Kalmar::index.3"* %this, i32) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %__idx.i6.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i6.i.i.i, align 4, !tbaa !8
  %__idx.i5.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i5.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i.i, align 4, !tbaa !3
  %__idx.i7.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i7.i.i.i.i, align 4, !tbaa !9
  %__idx.i6.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i6.i.i.i.i, align 4, !tbaa !11
  %add.i.i = add nsw i32 %1, 1
  store i32 %add.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  %add.i15.i = add nsw i32 %2, 1
  store i32 %add.i15.i, i32* %__idx.i6.i.i.i, align 4, !tbaa !9
  %add.i13.i = add nsw i32 %3, 1
  store i32 %add.i13.i, i32* %__idx.i5.i.i.i, align 4, !tbaa !11
  ret void
}

define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmmEv(%"class.Kalmar::index.3"* %this) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %__idx.i.i, align 4, !tbaa !3
  %sub.i.i = add nsw i32 %0, -1
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !3
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %1 = load i32, i32* %__idx.i14.i, align 4, !tbaa !9
  %sub.i15.i = add nsw i32 %1, -1
  store i32 %sub.i15.i, i32* %__idx.i14.i, align 4, !tbaa !9
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %2 = load i32, i32* %__idx.i12.i, align 4, !tbaa !11
  %sub.i13.i = add nsw i32 %2, -1
  store i32 %sub.i13.i, i32* %__idx.i12.i, align 4, !tbaa !11
  ret %"class.Kalmar::index.3"* %this
}

define weak_odr void @_ZN6Kalmar5indexILi3EEmmEi(%"class.Kalmar::index.3"* noalias sret %agg.result, %"class.Kalmar::index.3"* %this, i32) local_unnamed_addr #1 align 2 {
entry:
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %__idx.i6.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i6.i.i.i, align 4, !tbaa !8
  %__idx.i5.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i5.i.i.i, align 4, !tbaa !8
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i.i, align 4, !tbaa !3
  %__idx.i7.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i7.i.i.i.i, align 4, !tbaa !9
  %__idx.i6.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i6.i.i.i.i, align 4, !tbaa !11
  %sub.i.i = add nsw i32 %1, -1
  store i32 %sub.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !3
  %sub.i15.i = add nsw i32 %2, -1
  store i32 %sub.i15.i, i32* %__idx.i6.i.i.i, align 4, !tbaa !9
  %sub.i13.i = add nsw i32 %3, -1
  store i32 %sub.i13.i, i32* %__idx.i5.i.i.i, align 4, !tbaa !11
  ret void
}

; Function Attrs: convergent
define weak_odr void @_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index.3"* %this) local_unnamed_addr #2 align 2 {
entry:
  %call.i = tail call i32 @amp_get_global_id(i32 0) #8
  %this12.cast.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i, i64 2, i32 0
  store i32 %call.i, i32* %__idx.i.i.i.i, align 4, !tbaa !8
  %call.i.i = tail call i32 @amp_get_global_id(i32 1) #8
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %this12.cast.i.i.i, i64 1, i32 0
  store i32 %call.i.i, i32* %__idx.i.i.i.i.i, align 4, !tbaa !8
  %call.i.i.i = tail call i32 @amp_get_global_id(i32 2) #8
  %__idx.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %call.i.i.i, i32* %__idx.i.i.i.i.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5acosfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_acos_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_acos_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4acosEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_acos_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_acos_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4acosEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_acos_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5asinfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_asin_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_asin_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4asinEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_asin_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_asin_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4asinEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_asin_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5atanfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_atan_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_atan_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4atanEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_atan_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_atan_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4atanEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_atan_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math6atan2fEff(float %y, float %x) #3 {
entry:
  %call = tail call float @__ocml_atan2_f32(float %y, float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_atan2_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math5atan2EDF16_DF16_(half %y, half %x) #3 {
entry:
  %call = tail call half @__ocml_atan2_f16(half %y, half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_atan2_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5atan2Eff(float %y, float %x) #3 {
entry:
  %call.i = tail call float @__ocml_atan2_f32(float %y, float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5ceilfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_ceil_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_ceil_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4ceilEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_ceil_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_ceil_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4ceilEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_ceil_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4cosfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_native_cos_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_native_cos_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math3cosEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_cos_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_native_cos_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math3cosEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_native_cos_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5coshfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cosh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_cosh_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4coshEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_cosh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_cosh_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4coshEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_cosh_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4expfEf(float %x) #3 {
entry:
  %conv = fpext float %x to double
  %mul = fmul double %conv, 0x3FF71547652B82FE
  %conv1 = fptrunc double %mul to float
  %call = tail call float @__ocml_native_exp2_f32(float %conv1) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_native_exp2_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math3expEDF16_(half %x) #3 {
entry:
  %conv = fpext half %x to double
  %mul = fmul double %conv, 0x3FF71547652B82FE
  %conv1 = fptrunc double %mul to half
  %call = tail call half @__ocml_native_exp2_f16(half %conv1) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_native_exp2_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math3expEf(float %x) #3 {
entry:
  %conv.i = fpext float %x to double
  %mul.i = fmul double %conv.i, 0x3FF71547652B82FE
  %conv1.i = fptrunc double %mul.i to float
  %call.i = tail call float @__ocml_native_exp2_f32(float %conv1.i) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5exp2fEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_native_exp2_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4exp2EDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_exp2_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4exp2Ef(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_native_exp2_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5fabsfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_fabs_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_fabs_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4fabsEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_fabs_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_fabs_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4fabsEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_fabs_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math6floorfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_floor_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_floor_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math5floorEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_floor_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_floor_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5floorEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_floor_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5fmaxfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmax_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_fmax_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4fmaxEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_fmax_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_fmax_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4fmaxEff(float %x, float %y) #3 {
entry:
  %call.i = tail call float @__ocml_fmax_f32(float %x, float %y) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5fminfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmin_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_fmin_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4fminEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_fmin_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_fmin_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4fminEff(float %x, float %y) #3 {
entry:
  %call.i = tail call float @__ocml_fmin_f32(float %x, float %y) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5fmodfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmod_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_fmod_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4fmodEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_fmod_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_fmod_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4fmodEff(float %x, float %y) #3 {
entry:
  %call.i = tail call float @__ocml_fmod_f32(float %x, float %y) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math6frexpfEfPi(float %x, i32* %exp) #3 {
entry:
  %e = alloca i32, align 4, addrspace(5)
  %call = call float @__ocml_frexp_f32(float %x, i32 addrspace(5)* %e) #9
  %0 = load i32, i32 addrspace(5)* %e, align 4, !tbaa !8
  store i32 %0, i32* %exp, align 4, !tbaa !8
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_frexp_f32(float, i32 addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math5frexpEDF16_Pi(half %x, i32* %exp) #3 {
entry:
  %e = alloca i32, align 4, addrspace(5)
  %call = call half @__ocml_frexp_f16(half %x, i32 addrspace(5)* %e) #9
  %0 = load i32, i32 addrspace(5)* %e, align 4, !tbaa !8
  store i32 %0, i32* %exp, align 4, !tbaa !8
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_frexp_f16(half, i32 addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5frexpEfPi(float %x, i32* %exp) #3 {
entry:
  %e.i = alloca i32, align 4, addrspace(5)
  %0 = bitcast i32 addrspace(5)* %e.i to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %0)
  %call.i = call float @__ocml_frexp_f32(float %x, i32 addrspace(5)* %e.i) #9
  %1 = load i32, i32 addrspace(5)* %e.i, align 4, !tbaa !8
  store i32 %1, i32* %exp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %0)
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math8isfiniteEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_isfinite_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isfinite_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math8isfiniteEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_isfinite_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isfinite_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math5isinfEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_isinf_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isinf_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math5isinfEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_isinf_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isinf_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math5isnanEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_isnan_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isnan_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math5isnanEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_isnan_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isnan_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math6ldexpfEfi(float %x, i32 %exp) #3 {
entry:
  %call = tail call float @__ocml_ldexp_f32(float %x, i32 %exp) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_ldexp_f32(float, i32) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math5ldexpEDF16_t(half %x, i16 zeroext %exp) #3 {
entry:
  %call = tail call half @__ocml_ldexp_f16(half %x, i16 signext %exp) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_ldexp_f16(half, i16 signext) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5ldexpEfi(float %x, i32 %exp) #3 {
entry:
  %call.i = tail call float @__ocml_ldexp_f32(float %x, i32 %exp) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4logfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_native_log2_f32(float %x) #9
  %mul = fmul float %call, 0x3FE62E4300000000
  ret float %mul
}

; Function Attrs: convergent
declare float @__ocml_native_log2_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math3logEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_log2_f16(half %x) #9
  %mul = fmul half %call, 0xH398C
  ret half %mul
}

; Function Attrs: convergent
declare half @__ocml_native_log2_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math3logEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_native_log2_f32(float %x) #9
  %mul.i = fmul float %call.i, 0x3FE62E4300000000
  ret float %mul.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math6log10fEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_native_log2_f32(float %x) #9
  %mul = fmul float %call, 0x3FD3441360000000
  ret float %mul
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math5log10EDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_log2_f16(half %x) #9
  %mul = fmul half %call, 0xH34D1
  ret half %mul
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5log10Ef(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_native_log2_f32(float %x) #9
  %mul.i = fmul float %call.i, 0x3FD3441360000000
  ret float %mul.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5log2fEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_native_log2_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4log2EDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_log2_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4log2Ef(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_native_log2_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5modffEfPf(float %x, float* %iptr) #3 {
entry:
  %i = alloca float, align 4, addrspace(5)
  %call = call float @__ocml_modf_f32(float %x, float addrspace(5)* %i) #9
  %0 = bitcast float addrspace(5)* %i to i32 addrspace(5)*
  %1 = load i32, i32 addrspace(5)* %0, align 4, !tbaa !13
  %2 = bitcast float* %iptr to i32*
  store i32 %1, i32* %2, align 4, !tbaa !13
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_modf_f32(float, float addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4modfEDF16_PDF16_(half %x, half* %iptr) #3 {
entry:
  %i = alloca half, align 2, addrspace(5)
  %call = call half @__ocml_modf_f16(half %x, half addrspace(5)* %i) #9
  %0 = load half, half addrspace(5)* %i, align 2, !tbaa !15
  store half %0, half* %iptr, align 2, !tbaa !15
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_modf_f16(half, half addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4modfEfPf(float %x, float* %iptr) #3 {
entry:
  %i.i = alloca float, align 4, addrspace(5)
  %0 = bitcast float addrspace(5)* %i.i to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %0)
  %call.i = call float @__ocml_modf_f32(float %x, float addrspace(5)* %i.i) #9
  %1 = bitcast float addrspace(5)* %i.i to i32 addrspace(5)*
  %2 = load i32, i32 addrspace(5)* %1, align 4, !tbaa !13
  %3 = bitcast float* %iptr to i32*
  store i32 %2, i32* %3, align 4, !tbaa !13
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %0)
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4powfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_pow_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_pow_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math3powEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_pow_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_pow_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math3powEff(float %x, float %y) #3 {
entry:
  %call.i = tail call float @__ocml_pow_f32(float %x, float %y) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math6roundfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_round_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_round_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math5roundEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_round_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_round_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5roundEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_round_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math6rsqrtfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_native_rsqrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_native_rsqrt_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math5rsqrtEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_rsqrt_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_native_rsqrt_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5rsqrtEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_native_rsqrt_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math8signbitfEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_signbit_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_signbit_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math7signbitEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_signbit_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_signbit_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar9fast_math7signbitEf(float %x) #3 {
entry:
  %call.i = tail call i32 @__ocml_signbit_f32(float %x) #9
  ret i32 %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4sinfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_native_sin_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_native_sin_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math3sinEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_sin_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_native_sin_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math3sinEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_native_sin_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr void @_ZN6Kalmar9fast_math7sincosfEfPfS1_(float %x, float* %s, float* %c) #3 {
entry:
  %lc = alloca float, align 4, addrspace(5)
  %call = call float @__ocml_sincos_f32(float %x, float addrspace(5)* %lc) #9
  store float %call, float* %s, align 4, !tbaa !13
  %0 = bitcast float addrspace(5)* %lc to i32 addrspace(5)*
  %1 = load i32, i32 addrspace(5)* %0, align 4, !tbaa !13
  %2 = bitcast float* %c to i32*
  store i32 %1, i32* %2, align 4, !tbaa !13
  ret void
}

; Function Attrs: convergent
declare float @__ocml_sincos_f32(float, float addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr void @_ZN6Kalmar9fast_math6sincosEDF16_PDF16_S1_(half %x, half* %s, half* %c) #3 {
entry:
  %lc = alloca half, align 2, addrspace(5)
  %call = call half @__ocml_sincos_f16(half %x, half addrspace(5)* %lc) #9
  store half %call, half* %s, align 2, !tbaa !15
  %0 = load half, half addrspace(5)* %lc, align 2, !tbaa !15
  store half %0, half* %c, align 2, !tbaa !15
  ret void
}

; Function Attrs: convergent
declare half @__ocml_sincos_f16(half, half addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr void @_ZN6Kalmar9fast_math6sincosEfPfS1_(float %x, float* %s, float* %c) #3 {
entry:
  %lc.i = alloca float, align 4, addrspace(5)
  %0 = bitcast float addrspace(5)* %lc.i to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %0)
  %call.i = call float @__ocml_sincos_f32(float %x, float addrspace(5)* %lc.i) #9
  store float %call.i, float* %s, align 4, !tbaa !13
  %1 = bitcast float addrspace(5)* %lc.i to i32 addrspace(5)*
  %2 = load i32, i32 addrspace(5)* %1, align 4, !tbaa !13
  %3 = bitcast float* %c to i32*
  store i32 %2, i32* %3, align 4, !tbaa !13
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %0)
  ret void
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5sinhfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sinh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_sinh_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4sinhEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_sinh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_sinh_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4sinhEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_sinh_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5sqrtfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_native_sqrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_native_sqrt_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4sqrtEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_sqrt_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_native_sqrt_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4sqrtEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_native_sqrt_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4tanfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tan_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_tan_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math3tanEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_native_sin_f16(half %x) #9
  %call1 = tail call half @__ocml_native_cos_f16(half %x) #9
  %call2 = tail call half @__hc_rcp_native_f16(half %call1) #9
  %mul = fmul half %call, %call2
  ret half %mul
}

; Function Attrs: convergent
declare half @__hc_rcp_native_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math3tanEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_tan_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5tanhfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tanh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_tanh_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math4tanhEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_tanh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_tanh_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math4tanhEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_tanh_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math6truncfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_trunc_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_trunc_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar9fast_math5truncEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_trunc_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_trunc_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar9fast_math5truncEf(float %x) #3 {
entry:
  %call.i = tail call float @__ocml_trunc_f32(float %x) #9
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5acosfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_acos_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4acosEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_acos_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4acosEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_acos_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4acosEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_acos_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_acos_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6acoshfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_acosh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_acosh_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5acoshEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_acosh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_acosh_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5acoshEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_acosh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5acoshEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_acosh_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_acosh_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5asinfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_asin_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4asinEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_asin_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4asinEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_asin_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4asinEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_asin_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_asin_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6asinhfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_asinh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_asinh_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5asinhEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_asinh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_asinh_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5asinhEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_asinh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5asinhEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_asinh_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_asinh_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5atanfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_atan_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4atanEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_atan_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4atanEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_atan_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4atanEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_atan_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_atan_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6atanhfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_atanh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_atanh_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5atanhEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_atanh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_atanh_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5atanhEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_atanh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5atanhEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_atanh_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_atanh_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6atan2fEff(float %y, float %x) #3 {
entry:
  %call = tail call float @__ocml_atan2_f32(float %y, float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5atan2EDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_atan2_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5atan2Eff(float %y, float %x) #3 {
entry:
  %call = tail call float @__ocml_atan2_f32(float %y, float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5atan2Edd(double %y, double %x) #3 {
entry:
  %call = tail call double @__ocml_atan2_f64(double %y, double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_atan2_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5cbrtfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cbrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_cbrt_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4cbrtEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_cbrt_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_cbrt_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4cbrtEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cbrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4cbrtEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_cbrt_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_cbrt_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5ceilfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_ceil_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4ceilEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_ceil_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4ceilEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_ceil_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4ceilEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_ceil_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_ceil_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math9copysignfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_copysign_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_copysign_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math8copysignEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_copysign_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_copysign_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math8copysignEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_copysign_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math8copysignEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_copysign_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_copysign_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4cosfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cos_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_cos_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math3cosEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_cos_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_cos_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math3cosEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cos_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3cosEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_cos_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_cos_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5coshfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cosh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4coshEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_cosh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4coshEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cosh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4coshEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_cosh_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_cosh_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6cospifEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cospi_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_cospi_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5cospiEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_cospi_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_cospi_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5cospiEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_cospi_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5cospiEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_cospi_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_cospi_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4erffEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_erf_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_erf_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math3erfEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_erf_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_erf_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math3erfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_erf_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3erfEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_erf_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_erf_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5erfcfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_erfc_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_erfc_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4erfcEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_erfc_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_erfc_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4erfcEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_erfc_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4erfcEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_erfc_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_erfc_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math8erfcinvfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_erfcinv_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_erfcinv_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math7erfcinvEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_erfcinv_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_erfcinv_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math7erfcinvEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_erfcinv_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math7erfcinvEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_erfcinv_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_erfcinv_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math7erfinvfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_erfinv_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_erfinv_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math6erfinvEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_erfinv_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_erfinv_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6erfinvEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_erfinv_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math6erfinvEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_erfinv_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_erfinv_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4expfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_exp_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_exp_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math3expEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_exp_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_exp_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math3expEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_exp_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3expEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_exp_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_exp_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5exp2fEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_exp2_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_exp2_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4exp2EDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_exp2_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_exp2_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4exp2Ef(float %x) #3 {
entry:
  %call = tail call float @__ocml_exp2_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4exp2Ed(double %x) #3 {
entry:
  %call = tail call double @__ocml_exp2_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_exp2_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6exp10fEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_exp10_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_exp10_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5exp10EDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_exp10_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_exp10_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5exp10Ef(float %x) #3 {
entry:
  %call = tail call float @__ocml_exp10_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5exp10Ed(double %x) #3 {
entry:
  %call = tail call double @__ocml_exp10_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_exp10_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6expm1fEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_expm1_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_expm1_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5expm1EDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_expm1_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_expm1_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5expm1Ef(float %x) #3 {
entry:
  %call = tail call float @__ocml_expm1_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5expm1Ed(double %x) #3 {
entry:
  %call = tail call double @__ocml_expm1_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_expm1_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5fabsfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_fabs_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4fabsEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_fabs_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4fabsEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_fabs_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4fabsEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_fabs_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_fabs_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5fdimfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fdim_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_fdim_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4fdimEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_fdim_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_fdim_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4fdimEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fdim_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4fdimEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_fdim_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_fdim_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6floorfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_floor_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5floorEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_floor_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5floorEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_floor_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5floorEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_floor_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_floor_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4fmafEfff(float %x, float %y, float %z) #3 {
entry:
  %call = tail call float @__ocml_fma_f32(float %x, float %y, float %z) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_fma_f32(float, float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math3fmaEDF16_DF16_DF16_(half %x, half %y, half %z) #3 {
entry:
  %call = tail call half @__ocml_fma_f16(half %x, half %y, half %z) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_fma_f16(half, half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math3fmaEfff(float %x, float %y, float %z) #3 {
entry:
  %call = tail call float @__ocml_fma_f32(float %x, float %y, float %z) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3fmaEddd(double %x, double %y, double %z) #3 {
entry:
  %call = tail call double @__ocml_fma_f64(double %x, double %y, double %z) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_fma_f64(double, double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5fmaxfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmax_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4fmaxEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_fmax_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4fmaxEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmax_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4fmaxEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_fmax_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_fmax_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5fminfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmin_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4fminEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_fmin_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4fminEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmin_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4fminEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_fmin_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_fmin_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5fmodfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmod_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4fmodEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_fmod_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4fmodEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_fmod_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4fmodEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_fmod_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_fmod_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math10fpclassifyEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_fpclassify_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_fpclassify_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math10fpclassifyEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_fpclassify_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_fpclassify_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math10fpclassifyEd(double %x) #3 {
entry:
  %call = tail call i32 @__ocml_fpclassify_f64(double %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_fpclassify_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6frexpfEfPi(float %x, i32* %exp) #3 {
entry:
  %e = alloca i32, align 4, addrspace(5)
  %call = call float @__ocml_frexp_f32(float %x, i32 addrspace(5)* %e) #9
  %0 = load i32, i32 addrspace(5)* %e, align 4, !tbaa !8
  store i32 %0, i32* %exp, align 4, !tbaa !8
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5frexpEDF16_Pi(half %x, i32* %exp) #3 {
entry:
  %e = alloca i32, align 4, addrspace(5)
  %call = call half @__ocml_frexp_f16(half %x, i32 addrspace(5)* %e) #9
  %0 = load i32, i32 addrspace(5)* %e, align 4, !tbaa !8
  store i32 %0, i32* %exp, align 4, !tbaa !8
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5frexpEfPi(float %x, i32* %exp) #3 {
entry:
  %e.i = alloca i32, align 4, addrspace(5)
  %0 = bitcast i32 addrspace(5)* %e.i to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %0)
  %call.i = call float @__ocml_frexp_f32(float %x, i32 addrspace(5)* %e.i) #9
  %1 = load i32, i32 addrspace(5)* %e.i, align 4, !tbaa !8
  store i32 %1, i32* %exp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %0)
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5frexpEdPi(double %x, i32* %exp) #3 {
entry:
  %e.i = alloca i32, align 4, addrspace(5)
  %conv = fptrunc double %x to float
  %0 = bitcast i32 addrspace(5)* %e.i to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %0)
  %call.i = call float @__ocml_frexp_f32(float %conv, i32 addrspace(5)* %e.i) #9
  %1 = load i32, i32 addrspace(5)* %e.i, align 4, !tbaa !8
  store i32 %1, i32* %exp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %0)
  %conv1 = fpext float %call.i to double
  ret double %conv1
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6hypotfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_hypot_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_hypot_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5hypotEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_hypot_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_hypot_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5hypotEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_hypot_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5hypotEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_hypot_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_hypot_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math6ilogbfEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_ilogb_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_ilogb_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5ilogbEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_ilogb_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_ilogb_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5ilogbEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_ilogb_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5ilogbEd(double %x) #3 {
entry:
  %call = tail call i32 @__ocml_ilogb_f64(double %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_ilogb_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isfiniteEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_isfinite_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isfiniteEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_isfinite_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isfiniteEd(double %x) #3 {
entry:
  %call = tail call i32 @__ocml_isfinite_f64(double %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isfinite_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isinfEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_isinf_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isinfEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_isinf_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isinfEd(double %x) #3 {
entry:
  %call = tail call i32 @__ocml_isinf_f64(double %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isinf_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isnanEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_isnan_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isnanEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_isnan_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isnanEd(double %x) #3 {
entry:
  %call = tail call i32 @__ocml_isnan_f64(double %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isnan_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isnormalEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_isnormal_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isnormal_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isnormalEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_isnormal_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isnormal_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isnormalEd(double %x) #3 {
entry:
  %call = tail call i32 @__ocml_isnormal_f64(double %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_isnormal_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6ldexpfEfi(float %x, i32 %exp) #3 {
entry:
  %call = tail call float @__ocml_ldexp_f32(float %x, i32 %exp) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5ldexpEDF16_s(half %x, i16 signext %e) #3 {
entry:
  %call = tail call half @__ocml_ldexp_f16(half %x, i16 signext %e) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5ldexpEfi(float %x, i32 %exp) #3 {
entry:
  %call = tail call float @__ocml_ldexp_f32(float %x, i32 %exp) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5ldexpEdi(double %x, i32 %exp) #3 {
entry:
  %call = tail call double @__ocml_ldexp_f64(double %x, i32 %exp) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_ldexp_f64(double, i32) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math7lgammafEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_lgamma_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_lgamma_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math6lgammaEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_lgamma_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_lgamma_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6lgammaEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_lgamma_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math6lgammaEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_lgamma_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_lgamma_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4logfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_log_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_log_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math3logEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_log_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_log_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math3logEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_log_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3logEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_log_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_log_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6log10fEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_log10_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_log10_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5log10EDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_log10_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_log10_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5log10Ef(float %x) #3 {
entry:
  %call = tail call float @__ocml_log10_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5log10Ed(double %x) #3 {
entry:
  %call = tail call double @__ocml_log10_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_log10_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5log2fEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_log2_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_log2_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4log2EDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_log2_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_log2_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4log2Ef(float %x) #3 {
entry:
  %call = tail call float @__ocml_log2_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4log2Ed(double %x) #3 {
entry:
  %call = tail call double @__ocml_log2_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_log2_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6log1pfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_log1p_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_log1p_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5log1pEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_log1p_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_log1p_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5log1pEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_log1p_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5log1pEd(double %x) #3 {
entry:
  %conv = fptrunc double %x to float
  %call = tail call float @__ocml_log1p_f32(float %conv) #9
  %conv1 = fpext float %call to double
  ret double %conv1
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5logbfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_logb_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_logb_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4logbEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_logb_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_logb_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4logbEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_logb_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4logbEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_logb_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_logb_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5modffEfPf(float %x, float* %iptr) #3 {
entry:
  %i = alloca float, align 4, addrspace(5)
  %call = call float @__ocml_modf_f32(float %x, float addrspace(5)* %i) #9
  %0 = bitcast float addrspace(5)* %i to i32 addrspace(5)*
  %1 = load i32, i32 addrspace(5)* %0, align 4, !tbaa !13
  %2 = bitcast float* %iptr to i32*
  store i32 %1, i32* %2, align 4, !tbaa !13
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4modfEDF16_PDF16_(half %x, half* %p) #3 {
entry:
  %lp = alloca half, align 2, addrspace(5)
  %call = call half @__ocml_modf_f16(half %x, half addrspace(5)* %lp) #9
  %0 = load half, half addrspace(5)* %lp, align 2, !tbaa !15
  store half %0, half* %p, align 2, !tbaa !15
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4modfEfPf(float %x, float* %p) #3 {
entry:
  %i.i = alloca float, align 4, addrspace(5)
  %0 = bitcast float addrspace(5)* %i.i to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %0)
  %call.i = call float @__ocml_modf_f32(float %x, float addrspace(5)* %i.i) #9
  %1 = bitcast float addrspace(5)* %i.i to i32 addrspace(5)*
  %2 = load i32, i32 addrspace(5)* %1, align 4, !tbaa !13
  %3 = bitcast float* %p to i32*
  store i32 %2, i32* %3, align 4, !tbaa !13
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %0)
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4modfEdPd(double %x, double* %p) #3 {
entry:
  %lp = alloca double, align 8, addrspace(5)
  %call = call double @__ocml_modf_f64(double %x, double addrspace(5)* %lp) #9
  %0 = bitcast double addrspace(5)* %lp to i64 addrspace(5)*
  %1 = load i64, i64 addrspace(5)* %0, align 8, !tbaa !17
  %2 = bitcast double* %p to i64*
  store i64 %1, i64* %2, align 8, !tbaa !17
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_modf_f64(double, double addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4nanhEi(i32 %x) #3 {
entry:
  %call = tail call half @__ocml_nan_f16(i32 %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_nan_f16(i32) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4nanfEi(i32 %tagp) #3 {
entry:
  %call = tail call float @__ocml_nan_f32(i32 %tagp) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_nan_f32(i32) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3nanEi(i32 %tagp) #3 {
entry:
  %conv = sext i32 %tagp to i64
  %call = tail call double @__ocml_nan_f64(i64 %conv) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_nan_f64(i64) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math10nearbyintfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_nearbyint_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_nearbyint_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math9nearbyintEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_nearbyint_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_nearbyint_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math9nearbyintEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_nearbyint_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math9nearbyintEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_nearbyint_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_nearbyint_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math10nextafterfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_nextafter_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_nextafter_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math9nextafterEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_nextafter_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_nextafter_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math9nextafterEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_nextafter_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math9nextafterEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_nextafter_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_nextafter_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4powfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_pow_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math3powEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_pow_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math3powEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_pow_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3powEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_pow_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_pow_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6rcbrtfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_rcbrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_rcbrt_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5rcbrtEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_rcbrt_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_rcbrt_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5rcbrtEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_rcbrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5rcbrtEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_rcbrt_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_rcbrt_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math10remainderfEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_remainder_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_remainder_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math9remainderEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_remainder_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_remainder_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math9remainderEff(float %x, float %y) #3 {
entry:
  %call = tail call float @__ocml_remainder_f32(float %x, float %y) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math9remainderEdd(double %x, double %y) #3 {
entry:
  %call = tail call double @__ocml_remainder_f64(double %x, double %y) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_remainder_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math7remquofEffPi(float %x, float %y, i32* %quo) #3 {
entry:
  %lq = alloca i32, align 4, addrspace(5)
  %call = call float @__ocml_remquo_f32(float %x, float %y, i32 addrspace(5)* %lq) #9
  %0 = load i32, i32 addrspace(5)* %lq, align 4, !tbaa !8
  store i32 %0, i32* %quo, align 4, !tbaa !8
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_remquo_f32(float, float, i32 addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math6remquoEDF16_DF16_Pi(half %x, half %y, i32* %q) #3 {
entry:
  %lq = alloca i32, align 4, addrspace(5)
  %call = call half @__ocml_remquo_f16(half %x, half %y, i32 addrspace(5)* %lq) #9
  %0 = load i32, i32 addrspace(5)* %lq, align 4, !tbaa !8
  store i32 %0, i32* %q, align 4, !tbaa !8
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_remquo_f16(half, half, i32 addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6remquoEffPi(float %x, float %y, i32* %quo) #3 {
entry:
  %lq.i = alloca i32, align 4, addrspace(5)
  %0 = bitcast i32 addrspace(5)* %lq.i to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %0)
  %call.i = call float @__ocml_remquo_f32(float %x, float %y, i32 addrspace(5)* %lq.i) #9
  %1 = load i32, i32 addrspace(5)* %lq.i, align 4, !tbaa !8
  store i32 %1, i32* %quo, align 4, !tbaa !8
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %0)
  ret float %call.i
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math6remquoEddPi(double %x, double %y, i32* %quo) #3 {
entry:
  %lq = alloca i32, align 4, addrspace(5)
  %call = call double @__ocml_remquo_f64(double %x, double %y, i32 addrspace(5)* %lq) #9
  %0 = load i32, i32 addrspace(5)* %lq, align 4, !tbaa !8
  store i32 %0, i32* %quo, align 4, !tbaa !8
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_remquo_f64(double, double, i32 addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6roundfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_round_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5roundEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_round_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5roundEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_round_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5roundEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_round_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_round_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6rsqrtfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_rsqrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_rsqrt_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5rsqrtEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_rsqrt_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_rsqrt_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5rsqrtEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_rsqrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5rsqrtEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_rsqrt_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_rsqrt_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6sinpifEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sinpi_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_sinpi_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5sinpiEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_sinpi_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_sinpi_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5sinpiEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sinpi_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5sinpiEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_sinpi_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_sinpi_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6scalbfEff(float %x, float %exp) #3 {
entry:
  %call = tail call float @__ocml_scalb_f32(float %x, float %exp) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_scalb_f32(float, float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5scalbEDF16_DF16_(half %x, half %y) #3 {
entry:
  %call = tail call half @__ocml_scalb_f16(half %x, half %y) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_scalb_f16(half, half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5scalbEff(float %x, float %exp) #3 {
entry:
  %call = tail call float @__ocml_scalb_f32(float %x, float %exp) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5scalbEdd(double %x, double %exp) #3 {
entry:
  %call = tail call double @__ocml_scalb_f64(double %x, double %exp) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_scalb_f64(double, double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math7scalbnfEfi(float %x, i32 %exp) #3 {
entry:
  %call = tail call float @__ocml_scalbn_f32(float %x, i32 %exp) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_scalbn_f32(float, i32) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math6scalbnEDF16_i(half %x, i32 %e) #3 {
entry:
  %call = tail call half @__ocml_scalbn_f16(half %x, i32 %e) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_scalbn_f16(half, i32) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6scalbnEfi(float %x, i32 %exp) #3 {
entry:
  %call = tail call float @__ocml_scalbn_f32(float %x, i32 %exp) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math6scalbnEdi(double %x, i32 %exp) #3 {
entry:
  %call = tail call double @__ocml_scalbn_f64(double %x, i32 %exp) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_scalbn_f64(double, i32) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math8signbitfEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_signbit_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math7signbitEDF16_(half %x) #3 {
entry:
  %call = tail call i32 @__ocml_signbit_f16(half %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math7signbitEf(float %x) #3 {
entry:
  %call = tail call i32 @__ocml_signbit_f32(float %x) #9
  ret i32 %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr i32 @_ZN6Kalmar12precise_math7signbitEd(double %x) #3 {
entry:
  %call = tail call i32 @__ocml_signbit_f64(double %x) #9
  ret i32 %call
}

; Function Attrs: convergent
declare i32 @__ocml_signbit_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4sinfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sin_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_sin_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math3sinEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_sin_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_sin_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math3sinEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sin_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3sinEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_sin_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_sin_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr void @_ZN6Kalmar12precise_math7sincosfEfPfS1_(float %x, float* %s, float* %c) #3 {
entry:
  %lc = alloca float, align 4, addrspace(5)
  %call = call float @__ocml_sincos_f32(float %x, float addrspace(5)* %lc) #9
  store float %call, float* %s, align 4, !tbaa !13
  %0 = bitcast float addrspace(5)* %lc to i32 addrspace(5)*
  %1 = load i32, i32 addrspace(5)* %0, align 4, !tbaa !13
  %2 = bitcast float* %c to i32*
  store i32 %1, i32* %2, align 4, !tbaa !13
  ret void
}

; Function Attrs: convergent inlinehint
define linkonce_odr void @_ZN6Kalmar12precise_math6sincosEDF16_PDF16_S1_(half %x, half* %s, half* %c) #3 {
entry:
  %lc = alloca half, align 2, addrspace(5)
  %call = call half @__ocml_sincos_f16(half %x, half addrspace(5)* %lc) #9
  store half %call, half* %s, align 2, !tbaa !15
  %0 = load half, half addrspace(5)* %lc, align 2, !tbaa !15
  store half %0, half* %c, align 2, !tbaa !15
  ret void
}

; Function Attrs: convergent inlinehint
define linkonce_odr void @_ZN6Kalmar12precise_math6sincosEfPfS1_(float %x, float* %s, float* %c) #3 {
entry:
  %lc.i = alloca float, align 4, addrspace(5)
  %0 = bitcast float addrspace(5)* %lc.i to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %0)
  %call.i = call float @__ocml_sincos_f32(float %x, float addrspace(5)* %lc.i) #9
  store float %call.i, float* %s, align 4, !tbaa !13
  %1 = bitcast float addrspace(5)* %lc.i to i32 addrspace(5)*
  %2 = load i32, i32 addrspace(5)* %1, align 4, !tbaa !13
  %3 = bitcast float* %c to i32*
  store i32 %2, i32* %3, align 4, !tbaa !13
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %0)
  ret void
}

; Function Attrs: convergent inlinehint
define linkonce_odr void @_ZN6Kalmar12precise_math6sincosEdPdS1_(double %x, double* %s, double* %c) #3 {
entry:
  %lc = alloca double, align 8, addrspace(5)
  %call = call double @__ocml_sincos_f64(double %x, double addrspace(5)* %lc) #9
  store double %call, double* %s, align 8, !tbaa !17
  %0 = bitcast double addrspace(5)* %lc to i64 addrspace(5)*
  %1 = load i64, i64 addrspace(5)* %0, align 8, !tbaa !17
  %2 = bitcast double* %c to i64*
  store i64 %1, i64* %2, align 8, !tbaa !17
  ret void
}

; Function Attrs: convergent
declare double @__ocml_sincos_f64(double, double addrspace(5)*) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5sinhfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sinh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4sinhEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_sinh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4sinhEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sinh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4sinhEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_sinh_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_sinh_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5sqrtfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sqrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_sqrt_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4sqrtEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_sqrt_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_sqrt_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4sqrtEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_sqrt_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4sqrtEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_sqrt_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_sqrt_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math7tgammafEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tgamma_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_tgamma_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math6tgammaEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_tgamma_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_tgamma_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6tgammaEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tgamma_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math6tgammaEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_tgamma_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_tgamma_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4tanfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tan_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math3tanEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_tan_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_tan_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math3tanEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tan_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math3tanEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_tan_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_tan_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5tanhfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tanh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math4tanhEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_tanh_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math4tanhEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tanh_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math4tanhEd(double %x) #3 {
entry:
  %conv = fptrunc double %x to float
  %call = tail call float @__ocml_tanh_f32(float %conv) #9
  %conv1 = fpext float %call to double
  ret double %conv1
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6tanpifEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tanpi_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent
declare float @__ocml_tanpi_f32(float) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5tanpiEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_tanpi_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent
declare half @__ocml_tanpi_f16(half) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5tanpiEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_tanpi_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5tanpiEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_tanpi_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_tanpi_f64(double) local_unnamed_addr #4

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math6truncfEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_trunc_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr half @_ZN6Kalmar12precise_math5truncEDF16_(half %x) #3 {
entry:
  %call = tail call half @__ocml_trunc_f16(half %x) #9
  ret half %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr float @_ZN6Kalmar12precise_math5truncEf(float %x) #3 {
entry:
  %call = tail call float @__ocml_trunc_f32(float %x) #9
  ret float %call
}

; Function Attrs: convergent inlinehint
define linkonce_odr double @_ZN6Kalmar12precise_math5truncEd(double %x) #3 {
entry:
  %call = tail call double @__ocml_trunc_f64(double %x) #9
  ret double %call
}

; Function Attrs: convergent
declare double @__ocml_trunc_f64(double) local_unnamed_addr #4

; Function Attrs: convergent norecurse nounwind
define weak_odr amdgpu_kernel void @Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1(%struct.tensile_complex* %D, %struct.tensile_complex* noalias %C, %struct.tensile_complex* noalias %A, %struct.tensile_complex* noalias %B, %struct.tensile_complex %alpha.coerce, %struct.tensile_complex %beta.coerce, i32 %strideD1J, i32 %strideDK, i32 %strideC1J, i32 %strideCK, i32 %strideAL, i32 %strideAK, i32 %strideBL, i32 %strideBK, i32 %size0I, i32 %size1J, i32 %sizeK, i32 %sizeL, i32 %staggerUIterParm, i32 %problemNumGroupTiles0, i32 %problemNumGroupTiles1, i32 %magicNumberProblemNumGroupTiles0) #5 {
entry:
  %alpha.coerce.elt = extractvalue %struct.tensile_complex %alpha.coerce, 0
  %alpha.coerce.elt12915 = extractvalue %struct.tensile_complex %alpha.coerce, 1
  %beta.coerce.elt = extractvalue %struct.tensile_complex %beta.coerce, 0
  %beta.coerce.elt12917 = extractvalue %struct.tensile_complex %beta.coerce, 1
  %call = tail call i32 @hc_get_workitem_id(i32 0) #8
  %div = lshr i32 %call, 6
  %rem = and i32 %call, 7
  %div3 = lshr i32 %call, 3
  %rem4 = and i32 %div3, 7
  %mul5 = shl nuw nsw i32 %div, 5
  %add = or i32 %mul5, %rem
  %mul7 = mul nuw i32 %div, 48
  %add8 = or i32 %rem4, %mul7
  %add9 = add i32 %add8, 256
  %call10 = tail call i32 @hc_get_group_id(i32 0) #8
  %call11 = tail call i32 @hc_get_group_id(i32 1) #8
  %rem14 = and i32 %call, 31
  %mul16 = shl i32 %call10, 5
  %add17 = or i32 %mul16, %rem14
  %rem18 = and i32 %call, 15
  %mul20 = mul i32 %call11, 48
  %add21 = or i32 %mul20, %rem18
  %div22 = lshr i32 %call, 5
  %div23 = lshr i32 %call, 4
  %call24 = tail call i32 @hc_get_group_id(i32 2) #8
  %rem25 = urem i32 %call24, %sizeK
  %add31 = add i32 %add21, 16
  %add33 = add i32 %add21, 32
  %add37 = add nuw nsw i32 %div22, 2
  %add39 = add nuw nsw i32 %div22, 4
  %add41 = add nuw nsw i32 %div22, 6
  %add45 = add nuw nsw i32 %div23, 4
  %sub = add i32 %size0I, -1
  %cmp = icmp ugt i32 %add17, %sub
  %sub. = select i1 %cmp, i32 %sub, i32 %add17
  %sub49 = add i32 %size1J, -1
  %cmp51 = icmp ugt i32 %add21, %sub49
  %cond57 = select i1 %cmp51, i32 %sub49, i32 %add21
  %cmp60 = icmp ugt i32 %add31, %sub49
  %sub58. = select i1 %cmp60, i32 %sub49, i32 %add31
  %cmp69 = icmp ugt i32 %add33, %sub49
  %cond75 = select i1 %cmp69, i32 %sub49, i32 %add33
  %mul77 = mul i32 %div22, %strideAL
  %mul79 = mul i32 %rem25, %strideAK
  %add78 = add i32 %mul79, %sub.
  %add80 = add i32 %add78, %mul77
  %conv = zext i32 %add80 to i64
  %mul82 = mul i32 %add37, %strideAL
  %add85 = add i32 %add78, %mul82
  %conv86 = zext i32 %add85 to i64
  %mul88 = mul i32 %add39, %strideAL
  %add91 = add i32 %add78, %mul88
  %conv92 = zext i32 %add91 to i64
  %mul94 = mul i32 %add41, %strideAL
  %add97 = add i32 %add78, %mul94
  %conv98 = zext i32 %add97 to i64
  %mul100 = mul i32 %div23, %strideBL
  %mul102 = mul i32 %rem25, %strideBK
  %add101 = add i32 %mul102, %mul100
  %add103 = add i32 %add101, %cond57
  %conv104 = zext i32 %add103 to i64
  %add109 = add i32 %add101, %sub58.
  %conv110 = zext i32 %add109 to i64
  %add115 = add i32 %add101, %cond75
  %conv116 = zext i32 %add115 to i64
  %mul118 = mul i32 %add45, %strideBL
  %add119 = add i32 %mul102, %mul118
  %add121 = add i32 %add119, %cond57
  %conv122 = zext i32 %add121 to i64
  %add127 = add i32 %add119, %sub58.
  %conv128 = zext i32 %add127 to i64
  %add133 = add i32 %add119, %cond75
  %conv134 = zext i32 %add133 to i64
  %add.ptr = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %A, i64 %conv
  %add.ptr135 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %A, i64 %conv86
  %add.ptr136 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %A, i64 %conv92
  %add.ptr137 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %A, i64 %conv98
  %add.ptr138 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %B, i64 %conv104
  %add.ptr139 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %B, i64 %conv110
  %add.ptr140 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %B, i64 %conv116
  %add.ptr141 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %B, i64 %conv122
  %add.ptr142 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %B, i64 %conv128
  %add.ptr143 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %B, i64 %conv134
  %conv144 = zext i32 %strideAL to i64
  %mul145 = shl nuw nsw i64 %conv144, 3
  %conv146 = zext i32 %strideBL to i64
  %mul147 = shl nuw nsw i64 %conv146, 3
  %mul156 = mul i32 %div23, 48
  %add157 = or i32 %mul156, %rem18
  %add158 = add i32 %add157, 256
  %add162 = add i32 %call, 64
  %add164 = add i32 %call, 128
  %add166 = add i32 %call, 192
  %add169 = add i32 %add157, 272
  %add171 = add i32 %add157, 288
  %add174 = add i32 %add157, 448
  %add176 = add i32 %add157, 464
  %add178 = add i32 %add157, 480
  %add.ptr17912918 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %call
  %add.ptr179 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr17912918 to %struct.tensile_complex*
  %add.ptr18112919 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add162
  %add.ptr181 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr18112919 to %struct.tensile_complex*
  %add.ptr18312920 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add164
  %add.ptr183 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr18312920 to %struct.tensile_complex*
  %add.ptr18512921 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add166
  %add.ptr185 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr18512921 to %struct.tensile_complex*
  %add.ptr18712922 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add158
  %add.ptr187 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr18712922 to %struct.tensile_complex*
  %add.ptr18912923 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add169
  %add.ptr189 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr18912923 to %struct.tensile_complex*
  %add.ptr19112924 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add171
  %add.ptr191 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr19112924 to %struct.tensile_complex*
  %add.ptr19312925 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add174
  %add.ptr193 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr19312925 to %struct.tensile_complex*
  %add.ptr19512926 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add176
  %add.ptr195 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr19512926 to %struct.tensile_complex*
  %add.ptr19712927 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add178
  %add.ptr197 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr19712927 to %struct.tensile_complex*
  %div244 = lshr i32 %sizeL, 3
  %and = and i32 %call10, %staggerUIterParm
  %shl = shl i32 %and, 1
  %conv245 = zext i32 %shl to i64
  %mul246 = mul nsw i64 %mul145, %conv245
  %add.ptr247 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr, i64 %mul246
  %add.ptr250 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr135, i64 %mul246
  %add.ptr253 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr136, i64 %mul246
  %add.ptr256 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr137, i64 %mul246
  %mul258 = mul nsw i64 %mul147, %conv245
  %add.ptr259 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr138, i64 %mul258
  %add.ptr262 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr139, i64 %mul258
  %add.ptr265 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr140, i64 %mul258
  %add.ptr268 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr141, i64 %mul258
  %add.ptr271 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr142, i64 %mul258
  %add.ptr274 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr143, i64 %mul258
  %add.ptr27712952 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add
  %add.ptr277 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr27712952 to %struct.tensile_complex*
  %add.ptr27912953 = getelementptr inbounds [640 x %struct.tensile_complex], [640 x %struct.tensile_complex] addrspace(3)* @_ZZ33Cijk_Ailk_Bjlk_ZB_MT32x48x8_SE_K1E11localMemory, i32 0, i32 %add9
  %add.ptr279 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr27912953 to %struct.tensile_complex*
  %cmp28017149 = icmp eq i32 %div244, 0
  br i1 %cmp28017149, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %conv293 = zext i32 %div244 to i64
  %0 = mul nuw i64 %mul145, %conv293
  %idx.neg = sub i64 0, %0
  %1 = mul nuw i64 %mul147, %conv293
  %idx.neg32516814 = sub i64 0, %1
  %2 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr17912918 to i64 addrspace(3)*
  %3 = addrspacecast i64 addrspace(3)* %2 to i64*
  %a_0_0_0_0.sroa.4.0..sroa_idx13935 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr179, i64 0, i32 1
  %4 = bitcast double* %a_0_0_0_0.sroa.4.0..sroa_idx13935 to i64*
  %5 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr18112919 to i64 addrspace(3)*
  %6 = addrspacecast i64 addrspace(3)* %5 to i64*
  %a_0_0_1_0.sroa.4.0..sroa_idx13926 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr181, i64 0, i32 1
  %7 = bitcast double* %a_0_0_1_0.sroa.4.0..sroa_idx13926 to i64*
  %8 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr18312920 to i64 addrspace(3)*
  %9 = addrspacecast i64 addrspace(3)* %8 to i64*
  %a_0_0_2_0.sroa.4.0..sroa_idx13917 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr183, i64 0, i32 1
  %10 = bitcast double* %a_0_0_2_0.sroa.4.0..sroa_idx13917 to i64*
  %11 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr18512921 to i64 addrspace(3)*
  %12 = addrspacecast i64 addrspace(3)* %11 to i64*
  %a_0_0_3_0.sroa.4.0..sroa_idx13908 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr185, i64 0, i32 1
  %13 = bitcast double* %a_0_0_3_0.sroa.4.0..sroa_idx13908 to i64*
  %14 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr18712922 to i64 addrspace(3)*
  %15 = addrspacecast i64 addrspace(3)* %14 to i64*
  %b_0_0_0_0.sroa.4.0..sroa_idx13899 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr187, i64 0, i32 1
  %16 = bitcast double* %b_0_0_0_0.sroa.4.0..sroa_idx13899 to i64*
  %17 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr18912923 to i64 addrspace(3)*
  %18 = addrspacecast i64 addrspace(3)* %17 to i64*
  %b_1_0_0_0.sroa.4.0..sroa_idx13890 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr189, i64 0, i32 1
  %19 = bitcast double* %b_1_0_0_0.sroa.4.0..sroa_idx13890 to i64*
  %20 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr19112924 to i64 addrspace(3)*
  %21 = addrspacecast i64 addrspace(3)* %20 to i64*
  %b_2_0_0_0.sroa.4.0..sroa_idx13881 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr191, i64 0, i32 1
  %22 = bitcast double* %b_2_0_0_0.sroa.4.0..sroa_idx13881 to i64*
  %23 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr19312925 to i64 addrspace(3)*
  %24 = addrspacecast i64 addrspace(3)* %23 to i64*
  %b_0_0_1_0.sroa.4.0..sroa_idx13872 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr193, i64 0, i32 1
  %25 = bitcast double* %b_0_0_1_0.sroa.4.0..sroa_idx13872 to i64*
  %26 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr19512926 to i64 addrspace(3)*
  %27 = addrspacecast i64 addrspace(3)* %26 to i64*
  %b_1_0_1_0.sroa.4.0..sroa_idx13863 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr195, i64 0, i32 1
  %28 = bitcast double* %b_1_0_1_0.sroa.4.0..sroa_idx13863 to i64*
  %29 = bitcast %struct.tensile_complex addrspace(3)* %add.ptr19712927 to i64 addrspace(3)*
  %30 = addrspacecast i64 addrspace(3)* %29 to i64*
  %b_2_0_1_0.sroa.4.0..sroa_idx13854 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr197, i64 0, i32 1
  %31 = bitcast double* %b_2_0_1_0.sroa.4.0..sroa_idx13854 to i64*
  %rA.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr277, i64 0, i32 0
  %rA.sroa.117.0..sroa_idx14735 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr277, i64 0, i32 1
  %rA.sroa.225.16.arrayidx380.sroa_idx14981 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr277, i64 8, i32 0
  %rA.sroa.342.16.arrayidx380.sroa_idx14998 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr277, i64 8, i32 1
  %rA.sroa.450.32..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr277, i64 16, i32 0
  %rA.sroa.567.32..sroa_idx15231 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr277, i64 16, i32 1
  %rA.sroa.675.48..sroa_idx15475 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr277, i64 24, i32 0
  %rA.sroa.792.48..sroa_idx15492 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr277, i64 24, i32 1
  %rB.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 0, i32 0
  %rB.sroa.54.0..sroa_idx13999 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 0, i32 1
  %rB.sroa.90.16.arrayidx388.sroa_idx14096 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 8, i32 0
  %rB.sroa.144.16.arrayidx388.sroa_idx14113 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 8, i32 1
  %rB.sroa.180.32..sroa_idx14214 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 16, i32 0
  %rB.sroa.234.32..sroa_idx14231 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 16, i32 1
  %rB.sroa.270.48..sroa_idx14320 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 24, i32 0
  %rB.sroa.324.48..sroa_idx14337 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 24, i32 1
  %rB.sroa.360.64..sroa_idx14446 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 32, i32 0
  %rB.sroa.414.64..sroa_idx14463 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 32, i32 1
  %rB.sroa.450.80..sroa_idx14544 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 40, i32 0
  %rB.sroa.504.80..sroa_idx14561 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr279, i64 40, i32 1
  %add.ptr39817012 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27712952, i32 32
  %add.ptr398 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr39817012 to %struct.tensile_complex*
  %add.ptr39917013 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27912953, i32 48
  %add.ptr399 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr39917013 to %struct.tensile_complex*
  %rA.sroa.0.0..sroa_idx14731 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr398, i64 0, i32 0
  %rA.sroa.117.0..sroa_idx14748 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr398, i64 0, i32 1
  %rA.sroa.225.16.arrayidx1384.sroa_idx14967 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr398, i64 8, i32 0
  %rA.sroa.342.16.arrayidx1384.sroa_idx14984 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr398, i64 8, i32 1
  %rA.sroa.450.32.arrayidx1386.sroa_idx15220 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr398, i64 16, i32 0
  %rA.sroa.567.32.arrayidx1386.sroa_idx15237 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr398, i64 16, i32 1
  %rA.sroa.675.48.arrayidx1388.sroa_idx15473 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr398, i64 24, i32 0
  %rA.sroa.792.48.arrayidx1388.sroa_idx15490 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr398, i64 24, i32 1
  %rB.sroa.0.0..sroa_idx13987 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 0, i32 0
  %rB.sroa.54.0..sroa_idx14004 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 0, i32 1
  %rB.sroa.90.16.arrayidx1392.sroa_idx14095 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 8, i32 0
  %rB.sroa.144.16.arrayidx1392.sroa_idx14112 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 8, i32 1
  %rB.sroa.180.32.arrayidx1394.sroa_idx14216 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 16, i32 0
  %rB.sroa.234.32.arrayidx1394.sroa_idx14233 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 16, i32 1
  %rB.sroa.270.48.arrayidx1396.sroa_idx14322 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 24, i32 0
  %rB.sroa.324.48.arrayidx1396.sroa_idx14339 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 24, i32 1
  %rB.sroa.360.64..sroa_idx14444 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 32, i32 0
  %rB.sroa.414.64..sroa_idx14461 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 32, i32 1
  %rB.sroa.450.80..sroa_idx14546 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 40, i32 0
  %rB.sroa.504.80..sroa_idx14563 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr399, i64 40, i32 1
  %add.ptr140217014 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27712952, i32 64
  %add.ptr1402 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr140217014 to %struct.tensile_complex*
  %add.ptr140317015 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27912953, i32 96
  %add.ptr1403 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr140317015 to %struct.tensile_complex*
  %rA.sroa.0.0..sroa_idx14729 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1402, i64 0, i32 0
  %rA.sroa.117.0..sroa_idx14746 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1402, i64 0, i32 1
  %rA.sroa.225.16.arrayidx2390.sroa_idx14969 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1402, i64 8, i32 0
  %rA.sroa.342.16.arrayidx2390.sroa_idx14986 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1402, i64 8, i32 1
  %rA.sroa.450.32.arrayidx2392.sroa_idx15218 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1402, i64 16, i32 0
  %rA.sroa.567.32.arrayidx2392.sroa_idx15235 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1402, i64 16, i32 1
  %rA.sroa.675.48.arrayidx2394.sroa_idx15471 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1402, i64 24, i32 0
  %rA.sroa.792.48.arrayidx2394.sroa_idx15488 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1402, i64 24, i32 1
  %rB.sroa.0.0..sroa_idx13989 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 0, i32 0
  %rB.sroa.54.0..sroa_idx14006 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 0, i32 1
  %rB.sroa.90.16.arrayidx2398.sroa_idx14098 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 8, i32 0
  %rB.sroa.144.16.arrayidx2398.sroa_idx14115 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 8, i32 1
  %rB.sroa.180.32.arrayidx2400.sroa_idx14218 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 16, i32 0
  %rB.sroa.234.32.arrayidx2400.sroa_idx14235 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 16, i32 1
  %rB.sroa.270.48.arrayidx2402.sroa_idx14324 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 24, i32 0
  %rB.sroa.324.48.arrayidx2402.sroa_idx14341 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 24, i32 1
  %rB.sroa.360.64..sroa_idx14442 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 32, i32 0
  %rB.sroa.414.64..sroa_idx14459 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 32, i32 1
  %rB.sroa.450.80..sroa_idx14548 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 40, i32 0
  %rB.sroa.504.80..sroa_idx14565 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr1403, i64 40, i32 1
  %add.ptr240817016 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27712952, i32 96
  %add.ptr2408 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr240817016 to %struct.tensile_complex*
  %add.ptr240917017 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27912953, i32 144
  %add.ptr2409 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr240917017 to %struct.tensile_complex*
  %rA.sroa.0.0..sroa_idx14727 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2408, i64 0, i32 0
  %rA.sroa.117.0..sroa_idx14744 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2408, i64 0, i32 1
  %rA.sroa.225.16.arrayidx3396.sroa_idx14971 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2408, i64 8, i32 0
  %rA.sroa.342.16.arrayidx3396.sroa_idx14988 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2408, i64 8, i32 1
  %rA.sroa.450.32.arrayidx3398.sroa_idx15216 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2408, i64 16, i32 0
  %rA.sroa.567.32.arrayidx3398.sroa_idx15233 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2408, i64 16, i32 1
  %rA.sroa.675.48.arrayidx3400.sroa_idx15469 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2408, i64 24, i32 0
  %rA.sroa.792.48.arrayidx3400.sroa_idx15486 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2408, i64 24, i32 1
  %rB.sroa.0.0..sroa_idx13993 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 0, i32 0
  %rB.sroa.54.0..sroa_idx14010 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 0, i32 1
  %rB.sroa.90.16.arrayidx3404.sroa_idx14100 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 8, i32 0
  %rB.sroa.144.16.arrayidx3404.sroa_idx14117 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 8, i32 1
  %rB.sroa.180.32.arrayidx3406.sroa_idx14222 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 16, i32 0
  %rB.sroa.234.32.arrayidx3406.sroa_idx14239 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 16, i32 1
  %rB.sroa.270.48.arrayidx3408.sroa_idx14326 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 24, i32 0
  %rB.sroa.324.48.arrayidx3408.sroa_idx14343 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 24, i32 1
  %rB.sroa.360.64..sroa_idx14440 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 32, i32 0
  %rB.sroa.414.64..sroa_idx14457 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 32, i32 1
  %rB.sroa.450.80..sroa_idx14550 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 40, i32 0
  %rB.sroa.504.80..sroa_idx14567 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr2409, i64 40, i32 1
  %add.ptr341417018 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27712952, i32 128
  %add.ptr3414 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr341417018 to %struct.tensile_complex*
  %add.ptr341517019 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27912953, i32 192
  %add.ptr3415 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr341517019 to %struct.tensile_complex*
  %rA.sroa.0.0..sroa_idx14725 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3414, i64 0, i32 0
  %rA.sroa.117.0..sroa_idx14742 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3414, i64 0, i32 1
  %rA.sroa.225.16.arrayidx4402.sroa_idx14975 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3414, i64 8, i32 0
  %rA.sroa.342.16.arrayidx4402.sroa_idx14992 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3414, i64 8, i32 1
  %rA.sroa.450.32.arrayidx4404.sroa_idx15214 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3414, i64 16, i32 0
  %rA.sroa.567.32.arrayidx4404.sroa_idx15230 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3414, i64 16, i32 1
  %rA.sroa.675.48.arrayidx4406.sroa_idx15467 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3414, i64 24, i32 0
  %rA.sroa.792.48.arrayidx4406.sroa_idx15484 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3414, i64 24, i32 1
  %rB.sroa.0.0..sroa_idx13995 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 0, i32 0
  %rB.sroa.54.0..sroa_idx14012 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 0, i32 1
  %rB.sroa.90.16.arrayidx4410.sroa_idx14102 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 8, i32 0
  %rB.sroa.144.16.arrayidx4410.sroa_idx14119 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 8, i32 1
  %rB.sroa.180.32.arrayidx4412.sroa_idx14220 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 16, i32 0
  %rB.sroa.234.32.arrayidx4412.sroa_idx14237 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 16, i32 1
  %rB.sroa.270.48.arrayidx4414.sroa_idx14328 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 24, i32 0
  %rB.sroa.324.48.arrayidx4414.sroa_idx14345 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 24, i32 1
  %rB.sroa.360.64..sroa_idx14438 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 32, i32 0
  %rB.sroa.414.64..sroa_idx14455 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 32, i32 1
  %rB.sroa.450.80..sroa_idx14552 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 40, i32 0
  %rB.sroa.504.80..sroa_idx14569 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr3415, i64 40, i32 1
  %add.ptr442017020 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27712952, i32 160
  %add.ptr4420 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr442017020 to %struct.tensile_complex*
  %add.ptr442117021 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27912953, i32 240
  %add.ptr4421 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr442117021 to %struct.tensile_complex*
  %rA.sroa.0.0..sroa_idx14723 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4420, i64 0, i32 0
  %rA.sroa.117.0..sroa_idx14740 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4420, i64 0, i32 1
  %rA.sroa.225.16.arrayidx5408.sroa_idx14966 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4420, i64 8, i32 0
  %rA.sroa.342.16.arrayidx5408.sroa_idx14983 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4420, i64 8, i32 1
  %rA.sroa.450.32.arrayidx5410.sroa_idx15228 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4420, i64 16, i32 0
  %rA.sroa.567.32.arrayidx5410.sroa_idx15245 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4420, i64 16, i32 1
  %rA.sroa.675.48.arrayidx5412.sroa_idx15465 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4420, i64 24, i32 0
  %rA.sroa.792.48.arrayidx5412.sroa_idx15482 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4420, i64 24, i32 1
  %rB.sroa.0.0..sroa_idx13997 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 0, i32 0
  %rB.sroa.54.0..sroa_idx14014 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 0, i32 1
  %rB.sroa.90.16.arrayidx5416.sroa_idx14104 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 8, i32 0
  %rB.sroa.144.16.arrayidx5416.sroa_idx14121 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 8, i32 1
  %rB.sroa.180.32.arrayidx5418.sroa_idx14212 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 16, i32 0
  %rB.sroa.234.32.arrayidx5418.sroa_idx14229 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 16, i32 1
  %rB.sroa.270.48.arrayidx5420.sroa_idx14330 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 24, i32 0
  %rB.sroa.324.48.arrayidx5420.sroa_idx14347 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 24, i32 1
  %rB.sroa.360.64..sroa_idx14436 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 32, i32 0
  %rB.sroa.414.64..sroa_idx14453 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 32, i32 1
  %rB.sroa.450.80..sroa_idx14554 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 40, i32 0
  %rB.sroa.504.80..sroa_idx14571 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr4421, i64 40, i32 1
  %add.ptr542617022 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27712952, i32 192
  %add.ptr5426 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr542617022 to %struct.tensile_complex*
  %add.ptr542717023 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27912953, i32 288
  %add.ptr5427 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr542717023 to %struct.tensile_complex*
  %rA.sroa.0.0..sroa_idx14721 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5426, i64 0, i32 0
  %rA.sroa.117.0..sroa_idx14738 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5426, i64 0, i32 1
  %rA.sroa.225.16.arrayidx6414.sroa_idx14979 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5426, i64 8, i32 0
  %rA.sroa.342.16.arrayidx6414.sroa_idx14996 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5426, i64 8, i32 1
  %rA.sroa.450.32.arrayidx6416.sroa_idx15226 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5426, i64 16, i32 0
  %rA.sroa.567.32.arrayidx6416.sroa_idx15243 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5426, i64 16, i32 1
  %rA.sroa.675.48.arrayidx6418.sroa_idx15463 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5426, i64 24, i32 0
  %rA.sroa.792.48.arrayidx6418.sroa_idx15480 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5426, i64 24, i32 1
  %rB.sroa.0.0..sroa_idx13983 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 0, i32 0
  %rB.sroa.54.0..sroa_idx14000 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 0, i32 1
  %rB.sroa.90.16.arrayidx6422.sroa_idx14108 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 8, i32 0
  %rB.sroa.144.16.arrayidx6422.sroa_idx14125 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 8, i32 1
  %rB.sroa.180.32.arrayidx6424.sroa_idx14208 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 16, i32 0
  %rB.sroa.234.32.arrayidx6424.sroa_idx14224 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 16, i32 1
  %rB.sroa.270.48.arrayidx6426.sroa_idx14332 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 24, i32 0
  %rB.sroa.324.48.arrayidx6426.sroa_idx14349 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 24, i32 1
  %rB.sroa.360.64..sroa_idx14434 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 32, i32 0
  %rB.sroa.414.64..sroa_idx14451 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 32, i32 1
  %rB.sroa.450.80..sroa_idx14556 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 40, i32 0
  %rB.sroa.504.80..sroa_idx14573 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr5427, i64 40, i32 1
  %add.ptr643217024 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27712952, i32 224
  %add.ptr6432 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr643217024 to %struct.tensile_complex*
  %add.ptr643317025 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex addrspace(3)* %add.ptr27912953, i32 336
  %add.ptr6433 = addrspacecast %struct.tensile_complex addrspace(3)* %add.ptr643317025 to %struct.tensile_complex*
  %rA.sroa.0.0..sroa_idx14719 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6432, i64 0, i32 0
  %rA.sroa.117.0..sroa_idx14736 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6432, i64 0, i32 1
  %rA.sroa.225.16.arrayidx7420.sroa_idx14977 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6432, i64 8, i32 0
  %rA.sroa.342.16.arrayidx7420.sroa_idx14994 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6432, i64 8, i32 1
  %rA.sroa.450.32.arrayidx7422.sroa_idx15224 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6432, i64 16, i32 0
  %rA.sroa.567.32.arrayidx7422.sroa_idx15241 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6432, i64 16, i32 1
  %rA.sroa.675.48.arrayidx7424.sroa_idx15461 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6432, i64 24, i32 0
  %rA.sroa.792.48.arrayidx7424.sroa_idx15478 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6432, i64 24, i32 1
  %rB.sroa.0.0..sroa_idx13985 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 0, i32 0
  %rB.sroa.54.0..sroa_idx14002 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 0, i32 1
  %rB.sroa.90.16.arrayidx7428.sroa_idx14106 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 8, i32 0
  %rB.sroa.144.16.arrayidx7428.sroa_idx14123 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 8, i32 1
  %rB.sroa.180.32.arrayidx7430.sroa_idx14210 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 16, i32 0
  %rB.sroa.234.32.arrayidx7430.sroa_idx14227 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 16, i32 1
  %rB.sroa.270.48.arrayidx7432.sroa_idx14334 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 24, i32 0
  %rB.sroa.324.48.arrayidx7432.sroa_idx14351 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 24, i32 1
  %rB.sroa.360.64..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 32, i32 0
  %rB.sroa.414.64..sroa_idx14448 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 32, i32 1
  %rB.sroa.450.80..sroa_idx14558 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 40, i32 0
  %rB.sroa.504.80..sroa_idx14575 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr6433, i64 40, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %dec17184.in = phi i32 [ %div244, %while.body.lr.ph ], [ %dec17184, %while.body ]
  %rC.sroa.1669.017183 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8423, %while.body ]
  %32 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8403, %while.body ]
  %rC.sroa.1598.017182 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8382, %while.body ]
  %33 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8362, %while.body ]
  %rC.sroa.1527.017181 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8341, %while.body ]
  %34 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8321, %while.body ]
  %rC.sroa.1456.017180 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8300, %while.body ]
  %35 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8280, %while.body ]
  %rC.sroa.1385.017179 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8259, %while.body ]
  %36 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8239, %while.body ]
  %rC.sroa.1314.017178 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8218, %while.body ]
  %37 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8198, %while.body ]
  %rC.sroa.1243.017177 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8177, %while.body ]
  %38 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8157, %while.body ]
  %rC.sroa.1172.017176 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8136, %while.body ]
  %39 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8116, %while.body ]
  %rC.sroa.1101.017175 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8095, %while.body ]
  %40 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8075, %while.body ]
  %rC.sroa.1030.017174 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8054, %while.body ]
  %41 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8034, %while.body ]
  %rC.sroa.959.017173 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add8013, %while.body ]
  %42 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7993, %while.body ]
  %rC.sroa.888.017172 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7972, %while.body ]
  %43 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7952, %while.body ]
  %rC.sroa.817.017171 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7931, %while.body ]
  %44 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7911, %while.body ]
  %rC.sroa.746.017170 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7890, %while.body ]
  %45 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7870, %while.body ]
  %rC.sroa.675.017169 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7849, %while.body ]
  %46 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7829, %while.body ]
  %rC.sroa.604.017168 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7808, %while.body ]
  %47 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7788, %while.body ]
  %rC.sroa.533.017167 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7767, %while.body ]
  %48 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7747, %while.body ]
  %rC.sroa.462.017166 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7726, %while.body ]
  %49 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7706, %while.body ]
  %rC.sroa.391.017165 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7685, %while.body ]
  %50 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7665, %while.body ]
  %rC.sroa.320.017164 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7644, %while.body ]
  %51 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7624, %while.body ]
  %rC.sroa.249.017163 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7603, %while.body ]
  %52 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7583, %while.body ]
  %rC.sroa.178.017162 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7562, %while.body ]
  %53 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7542, %while.body ]
  %rC.sroa.107.017161 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7521, %while.body ]
  %54 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7501, %while.body ]
  %rC.sroa.36.017160 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7480, %while.body ]
  %55 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %add7460, %while.body ]
  %globalReadB_2_0_1_0.017159 = phi %struct.tensile_complex* [ %add.ptr274, %while.body.lr.ph ], [ %add.ptr36616905.add.ptr36016901, %while.body ]
  %globalReadB_1_0_1_0.017158 = phi %struct.tensile_complex* [ %add.ptr271, %while.body.lr.ph ], [ %add.ptr35816883.add.ptr35216879, %while.body ]
  %globalReadB_0_0_1_0.017157 = phi %struct.tensile_complex* [ %add.ptr268, %while.body.lr.ph ], [ %add.ptr35016863.add.ptr34416859, %while.body ]
  %globalReadB_2_0_0_0.017156 = phi %struct.tensile_complex* [ %add.ptr265, %while.body.lr.ph ], [ %add.ptr34216845.add.ptr33616841, %while.body ]
  %globalReadB_1_0_0_0.017155 = phi %struct.tensile_complex* [ %add.ptr262, %while.body.lr.ph ], [ %add.ptr33416829.add.ptr32816825, %while.body ]
  %globalReadB_0_0_0_0.017154 = phi %struct.tensile_complex* [ %add.ptr259, %while.body.lr.ph ], [ %add.ptr32616815.add.ptr32016811, %while.body ]
  %globalReadA_0_0_3_0.017153 = phi %struct.tensile_complex* [ %add.ptr256, %while.body.lr.ph ], [ %add.ptr31816803.add.ptr31216799, %while.body ]
  %globalReadA_0_0_2_0.017152 = phi %struct.tensile_complex* [ %add.ptr253, %while.body.lr.ph ], [ %add.ptr31016793.add.ptr30416789, %while.body ]
  %globalReadA_0_0_1_0.017151 = phi %struct.tensile_complex* [ %add.ptr250, %while.body.lr.ph ], [ %add.ptr30216785.add.ptr29616781, %while.body ]
  %globalReadA_0_0_0_0.017150 = phi %struct.tensile_complex* [ %add.ptr247, %while.body.lr.ph ], [ %add.ptr295.add.ptr291, %while.body ]
  %dec17184 = add nsw i32 %dec17184.in, -1
  %56 = bitcast %struct.tensile_complex* %globalReadA_0_0_0_0.017150 to i64*
  %a_0_0_0_0.sroa.0.0.copyload1393316992 = load i64, i64* %56, align 8
  %a_0_0_0_0.sroa.4.0..sroa_idx13937 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_0_0.017150, i64 0, i32 1
  %57 = bitcast double* %a_0_0_0_0.sroa.4.0..sroa_idx13937 to i64*
  %a_0_0_0_0.sroa.4.0.copyload1393816993 = load i64, i64* %57, align 8
  %58 = bitcast %struct.tensile_complex* %globalReadA_0_0_1_0.017151 to i64*
  %a_0_0_1_0.sroa.0.0.copyload1392416994 = load i64, i64* %58, align 8
  %a_0_0_1_0.sroa.4.0..sroa_idx13928 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_1_0.017151, i64 0, i32 1
  %59 = bitcast double* %a_0_0_1_0.sroa.4.0..sroa_idx13928 to i64*
  %a_0_0_1_0.sroa.4.0.copyload1392916995 = load i64, i64* %59, align 8
  %60 = bitcast %struct.tensile_complex* %globalReadA_0_0_2_0.017152 to i64*
  %a_0_0_2_0.sroa.0.0.copyload1391516996 = load i64, i64* %60, align 8
  %a_0_0_2_0.sroa.4.0..sroa_idx13919 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_2_0.017152, i64 0, i32 1
  %61 = bitcast double* %a_0_0_2_0.sroa.4.0..sroa_idx13919 to i64*
  %a_0_0_2_0.sroa.4.0.copyload1392016997 = load i64, i64* %61, align 8
  %62 = bitcast %struct.tensile_complex* %globalReadA_0_0_3_0.017153 to i64*
  %a_0_0_3_0.sroa.0.0.copyload1390616998 = load i64, i64* %62, align 8
  %a_0_0_3_0.sroa.4.0..sroa_idx13910 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_3_0.017153, i64 0, i32 1
  %63 = bitcast double* %a_0_0_3_0.sroa.4.0..sroa_idx13910 to i64*
  %a_0_0_3_0.sroa.4.0.copyload1391116999 = load i64, i64* %63, align 8
  %64 = bitcast %struct.tensile_complex* %globalReadB_0_0_0_0.017154 to i64*
  %b_0_0_0_0.sroa.0.0.copyload1389717000 = load i64, i64* %64, align 8
  %b_0_0_0_0.sroa.4.0..sroa_idx13901 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_0_0_0_0.017154, i64 0, i32 1
  %65 = bitcast double* %b_0_0_0_0.sroa.4.0..sroa_idx13901 to i64*
  %b_0_0_0_0.sroa.4.0.copyload1390217001 = load i64, i64* %65, align 8
  %66 = bitcast %struct.tensile_complex* %globalReadB_1_0_0_0.017155 to i64*
  %b_1_0_0_0.sroa.0.0.copyload1388817002 = load i64, i64* %66, align 8
  %b_1_0_0_0.sroa.4.0..sroa_idx13892 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_1_0_0_0.017155, i64 0, i32 1
  %67 = bitcast double* %b_1_0_0_0.sroa.4.0..sroa_idx13892 to i64*
  %b_1_0_0_0.sroa.4.0.copyload1389317003 = load i64, i64* %67, align 8
  %68 = bitcast %struct.tensile_complex* %globalReadB_2_0_0_0.017156 to i64*
  %b_2_0_0_0.sroa.0.0.copyload1387917004 = load i64, i64* %68, align 8
  %b_2_0_0_0.sroa.4.0..sroa_idx13883 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_2_0_0_0.017156, i64 0, i32 1
  %69 = bitcast double* %b_2_0_0_0.sroa.4.0..sroa_idx13883 to i64*
  %b_2_0_0_0.sroa.4.0.copyload1388417005 = load i64, i64* %69, align 8
  %70 = bitcast %struct.tensile_complex* %globalReadB_0_0_1_0.017157 to i64*
  %b_0_0_1_0.sroa.0.0.copyload1387017006 = load i64, i64* %70, align 8
  %b_0_0_1_0.sroa.4.0..sroa_idx13874 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_0_0_1_0.017157, i64 0, i32 1
  %71 = bitcast double* %b_0_0_1_0.sroa.4.0..sroa_idx13874 to i64*
  %b_0_0_1_0.sroa.4.0.copyload1387517007 = load i64, i64* %71, align 8
  %72 = bitcast %struct.tensile_complex* %globalReadB_1_0_1_0.017158 to i64*
  %b_1_0_1_0.sroa.0.0.copyload1386117008 = load i64, i64* %72, align 8
  %b_1_0_1_0.sroa.4.0..sroa_idx13865 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_1_0_1_0.017158, i64 0, i32 1
  %73 = bitcast double* %b_1_0_1_0.sroa.4.0..sroa_idx13865 to i64*
  %b_1_0_1_0.sroa.4.0.copyload1386617009 = load i64, i64* %73, align 8
  %74 = bitcast %struct.tensile_complex* %globalReadB_2_0_1_0.017159 to i64*
  %b_2_0_1_0.sroa.0.0.copyload1385217010 = load i64, i64* %74, align 8
  %b_2_0_1_0.sroa.4.0..sroa_idx13856 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_2_0_1_0.017159, i64 0, i32 1
  %75 = bitcast double* %b_2_0_1_0.sroa.4.0..sroa_idx13856 to i64*
  %b_2_0_1_0.sroa.4.0.copyload1385717011 = load i64, i64* %75, align 8
  %add.ptr291 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_0_0.017150, i64 %mul145
  %cmp292 = icmp eq i32 %dec17184, %shl
  %add.ptr295 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr291, i64 %idx.neg
  %add.ptr29616781 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_1_0.017151, i64 %mul145
  %add.ptr30216785 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr29616781, i64 %idx.neg
  %add.ptr30416789 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_2_0.017152, i64 %mul145
  %add.ptr31016793 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr30416789, i64 %idx.neg
  %add.ptr31216799 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_3_0.017153, i64 %mul145
  %add.ptr31816803 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr31216799, i64 %idx.neg
  %add.ptr32016811 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_0_0_0_0.017154, i64 %mul147
  %add.ptr32616815 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr32016811, i64 %idx.neg32516814
  %add.ptr32816825 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_1_0_0_0.017155, i64 %mul147
  %add.ptr33416829 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr32816825, i64 %idx.neg32516814
  %add.ptr33616841 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_2_0_0_0.017156, i64 %mul147
  %add.ptr34216845 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr33616841, i64 %idx.neg32516814
  %add.ptr34416859 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_0_0_1_0.017157, i64 %mul147
  %add.ptr35016863 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr34416859, i64 %idx.neg32516814
  %add.ptr35216879 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_1_0_1_0.017158, i64 %mul147
  %add.ptr35816883 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr35216879, i64 %idx.neg32516814
  %add.ptr36016901 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_2_0_1_0.017159, i64 %mul147
  %add.ptr36616905 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr36016901, i64 %idx.neg32516814
  %add.ptr35816883.add.ptr35216879 = select i1 %cmp292, %struct.tensile_complex* %add.ptr35816883, %struct.tensile_complex* %add.ptr35216879
  %add.ptr34216845.add.ptr33616841 = select i1 %cmp292, %struct.tensile_complex* %add.ptr34216845, %struct.tensile_complex* %add.ptr33616841
  %add.ptr32616815.add.ptr32016811 = select i1 %cmp292, %struct.tensile_complex* %add.ptr32616815, %struct.tensile_complex* %add.ptr32016811
  %add.ptr31016793.add.ptr30416789 = select i1 %cmp292, %struct.tensile_complex* %add.ptr31016793, %struct.tensile_complex* %add.ptr30416789
  %add.ptr295.add.ptr291 = select i1 %cmp292, %struct.tensile_complex* %add.ptr295, %struct.tensile_complex* %add.ptr291
  %add.ptr30216785.add.ptr29616781 = select i1 %cmp292, %struct.tensile_complex* %add.ptr30216785, %struct.tensile_complex* %add.ptr29616781
  %add.ptr31816803.add.ptr31216799 = select i1 %cmp292, %struct.tensile_complex* %add.ptr31816803, %struct.tensile_complex* %add.ptr31216799
  %add.ptr33416829.add.ptr32816825 = select i1 %cmp292, %struct.tensile_complex* %add.ptr33416829, %struct.tensile_complex* %add.ptr32816825
  %add.ptr35016863.add.ptr34416859 = select i1 %cmp292, %struct.tensile_complex* %add.ptr35016863, %struct.tensile_complex* %add.ptr34416859
  %add.ptr36616905.add.ptr36016901 = select i1 %cmp292, %struct.tensile_complex* %add.ptr36616905, %struct.tensile_complex* %add.ptr36016901
  tail call void @hc_barrier(i32 1) #10
  store i64 %a_0_0_0_0.sroa.0.0.copyload1393316992, i64* %3, align 8
  store i64 %a_0_0_0_0.sroa.4.0.copyload1393816993, i64* %4, align 8
  store i64 %a_0_0_1_0.sroa.0.0.copyload1392416994, i64* %6, align 8
  store i64 %a_0_0_1_0.sroa.4.0.copyload1392916995, i64* %7, align 8
  store i64 %a_0_0_2_0.sroa.0.0.copyload1391516996, i64* %9, align 8
  store i64 %a_0_0_2_0.sroa.4.0.copyload1392016997, i64* %10, align 8
  store i64 %a_0_0_3_0.sroa.0.0.copyload1390616998, i64* %12, align 8
  store i64 %a_0_0_3_0.sroa.4.0.copyload1391116999, i64* %13, align 8
  store i64 %b_0_0_0_0.sroa.0.0.copyload1389717000, i64* %15, align 8
  store i64 %b_0_0_0_0.sroa.4.0.copyload1390217001, i64* %16, align 8
  store i64 %b_1_0_0_0.sroa.0.0.copyload1388817002, i64* %18, align 8
  store i64 %b_1_0_0_0.sroa.4.0.copyload1389317003, i64* %19, align 8
  store i64 %b_2_0_0_0.sroa.0.0.copyload1387917004, i64* %21, align 8
  store i64 %b_2_0_0_0.sroa.4.0.copyload1388417005, i64* %22, align 8
  store i64 %b_0_0_1_0.sroa.0.0.copyload1387017006, i64* %24, align 8
  store i64 %b_0_0_1_0.sroa.4.0.copyload1387517007, i64* %25, align 8
  store i64 %b_1_0_1_0.sroa.0.0.copyload1386117008, i64* %27, align 8
  store i64 %b_1_0_1_0.sroa.4.0.copyload1386617009, i64* %28, align 8
  store i64 %b_2_0_1_0.sroa.0.0.copyload1385217010, i64* %30, align 8
  store i64 %b_2_0_1_0.sroa.4.0.copyload1385717011, i64* %31, align 8
  tail call void @hc_barrier(i32 1) #10
  %rA.sroa.0.0.copyload = load double, double* %rA.sroa.0.0..sroa_idx, align 8
  %rA.sroa.117.0.copyload = load double, double* %rA.sroa.117.0..sroa_idx14735, align 8
  %rA.sroa.225.16.copyload14982 = load double, double* %rA.sroa.225.16.arrayidx380.sroa_idx14981, align 8
  %rA.sroa.342.16.copyload14999 = load double, double* %rA.sroa.342.16.arrayidx380.sroa_idx14998, align 8
  %rA.sroa.450.32.copyload15215 = load double, double* %rA.sroa.450.32..sroa_idx, align 8
  %rA.sroa.567.32.copyload15232 = load double, double* %rA.sroa.567.32..sroa_idx15231, align 8
  %rA.sroa.675.48.copyload15476 = load double, double* %rA.sroa.675.48..sroa_idx15475, align 8
  %rA.sroa.792.48.copyload15493 = load double, double* %rA.sroa.792.48..sroa_idx15492, align 8
  %rB.sroa.0.0.copyload = load double, double* %rB.sroa.0.0..sroa_idx, align 8
  %rB.sroa.54.0.copyload = load double, double* %rB.sroa.54.0..sroa_idx13999, align 8
  %rB.sroa.90.16.copyload14097 = load double, double* %rB.sroa.90.16.arrayidx388.sroa_idx14096, align 8
  %rB.sroa.144.16.copyload14114 = load double, double* %rB.sroa.144.16.arrayidx388.sroa_idx14113, align 8
  %rB.sroa.180.32.copyload14215 = load double, double* %rB.sroa.180.32..sroa_idx14214, align 8
  %rB.sroa.234.32.copyload14232 = load double, double* %rB.sroa.234.32..sroa_idx14231, align 8
  %rB.sroa.270.48.copyload14321 = load double, double* %rB.sroa.270.48..sroa_idx14320, align 8
  %rB.sroa.324.48.copyload14338 = load double, double* %rB.sroa.324.48..sroa_idx14337, align 8
  %rB.sroa.360.64.copyload14447 = load double, double* %rB.sroa.360.64..sroa_idx14446, align 8
  %rB.sroa.414.64.copyload14464 = load double, double* %rB.sroa.414.64..sroa_idx14463, align 8
  %rB.sroa.450.80.copyload14545 = load double, double* %rB.sroa.450.80..sroa_idx14544, align 8
  %rB.sroa.504.80.copyload14562 = load double, double* %rB.sroa.504.80..sroa_idx14561, align 8
  %mul403 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.0.0.copyload
  %add406 = fadd double %55, %mul403
  %76 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.54.0.copyload
  %add416 = fsub double %add406, %76
  %mul423 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.54.0.copyload
  %add426 = fadd double %rC.sroa.36.017160, %mul423
  %mul433 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.0.0.copyload
  %add436 = fadd double %mul433, %add426
  %mul443 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.0.0.copyload
  %add446 = fadd double %54, %mul443
  %77 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.54.0.copyload
  %add457 = fsub double %add446, %77
  %mul464 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.54.0.copyload
  %add467 = fadd double %rC.sroa.107.017161, %mul464
  %mul474 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.0.0.copyload
  %add477 = fadd double %mul474, %add467
  %mul484 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.0.0.copyload
  %add487 = fadd double %53, %mul484
  %78 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.54.0.copyload
  %add498 = fsub double %add487, %78
  %mul505 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.54.0.copyload
  %add508 = fadd double %rC.sroa.178.017162, %mul505
  %mul515 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.0.0.copyload
  %add518 = fadd double %mul515, %add508
  %mul525 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.0.0.copyload
  %add528 = fadd double %52, %mul525
  %79 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.54.0.copyload
  %add539 = fsub double %add528, %79
  %mul546 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.54.0.copyload
  %add549 = fadd double %rC.sroa.249.017163, %mul546
  %mul556 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.0.0.copyload
  %add559 = fadd double %mul556, %add549
  %mul566 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.90.16.copyload14097
  %add569 = fadd double %51, %mul566
  %80 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.144.16.copyload14114
  %add580 = fsub double %add569, %80
  %mul587 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.144.16.copyload14114
  %add590 = fadd double %rC.sroa.320.017164, %mul587
  %mul597 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.90.16.copyload14097
  %add600 = fadd double %mul597, %add590
  %mul607 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.90.16.copyload14097
  %add610 = fadd double %50, %mul607
  %81 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.144.16.copyload14114
  %add621 = fsub double %add610, %81
  %mul628 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.144.16.copyload14114
  %add631 = fadd double %rC.sroa.391.017165, %mul628
  %mul638 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.90.16.copyload14097
  %add641 = fadd double %mul638, %add631
  %mul648 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.90.16.copyload14097
  %add651 = fadd double %49, %mul648
  %82 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.144.16.copyload14114
  %add662 = fsub double %add651, %82
  %mul669 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.144.16.copyload14114
  %add672 = fadd double %rC.sroa.462.017166, %mul669
  %mul679 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.90.16.copyload14097
  %add682 = fadd double %mul679, %add672
  %mul689 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.90.16.copyload14097
  %add692 = fadd double %48, %mul689
  %83 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.144.16.copyload14114
  %add703 = fsub double %add692, %83
  %mul710 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.144.16.copyload14114
  %add713 = fadd double %rC.sroa.533.017167, %mul710
  %mul720 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.90.16.copyload14097
  %add723 = fadd double %mul720, %add713
  %mul730 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.180.32.copyload14215
  %add733 = fadd double %47, %mul730
  %84 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.234.32.copyload14232
  %add744 = fsub double %add733, %84
  %mul751 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.234.32.copyload14232
  %add754 = fadd double %rC.sroa.604.017168, %mul751
  %mul761 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.180.32.copyload14215
  %add764 = fadd double %mul761, %add754
  %mul771 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.180.32.copyload14215
  %add774 = fadd double %46, %mul771
  %85 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.234.32.copyload14232
  %add785 = fsub double %add774, %85
  %mul792 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.234.32.copyload14232
  %add795 = fadd double %rC.sroa.675.017169, %mul792
  %mul802 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.180.32.copyload14215
  %add805 = fadd double %mul802, %add795
  %mul812 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.180.32.copyload14215
  %add815 = fadd double %45, %mul812
  %86 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.234.32.copyload14232
  %add826 = fsub double %add815, %86
  %mul833 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.234.32.copyload14232
  %add836 = fadd double %rC.sroa.746.017170, %mul833
  %mul843 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.180.32.copyload14215
  %add846 = fadd double %mul843, %add836
  %mul853 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.180.32.copyload14215
  %add856 = fadd double %44, %mul853
  %87 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.234.32.copyload14232
  %add867 = fsub double %add856, %87
  %mul874 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.234.32.copyload14232
  %add877 = fadd double %rC.sroa.817.017171, %mul874
  %mul884 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.180.32.copyload14215
  %add887 = fadd double %mul884, %add877
  %mul894 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.270.48.copyload14321
  %add897 = fadd double %43, %mul894
  %88 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.324.48.copyload14338
  %add908 = fsub double %add897, %88
  %mul915 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.324.48.copyload14338
  %add918 = fadd double %rC.sroa.888.017172, %mul915
  %mul925 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.270.48.copyload14321
  %add928 = fadd double %mul925, %add918
  %mul935 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.270.48.copyload14321
  %add938 = fadd double %42, %mul935
  %89 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.324.48.copyload14338
  %add949 = fsub double %add938, %89
  %mul956 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.324.48.copyload14338
  %add959 = fadd double %rC.sroa.959.017173, %mul956
  %mul966 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.270.48.copyload14321
  %add969 = fadd double %mul966, %add959
  %mul976 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.270.48.copyload14321
  %add979 = fadd double %41, %mul976
  %90 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.324.48.copyload14338
  %add990 = fsub double %add979, %90
  %mul997 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.324.48.copyload14338
  %add1000 = fadd double %rC.sroa.1030.017174, %mul997
  %mul1007 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.270.48.copyload14321
  %add1010 = fadd double %mul1007, %add1000
  %mul1017 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.270.48.copyload14321
  %add1020 = fadd double %40, %mul1017
  %91 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.324.48.copyload14338
  %add1031 = fsub double %add1020, %91
  %mul1038 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.324.48.copyload14338
  %add1041 = fadd double %rC.sroa.1101.017175, %mul1038
  %mul1048 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.270.48.copyload14321
  %add1051 = fadd double %mul1048, %add1041
  %mul1058 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.360.64.copyload14447
  %add1061 = fadd double %39, %mul1058
  %92 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.414.64.copyload14464
  %add1072 = fsub double %add1061, %92
  %mul1079 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.414.64.copyload14464
  %add1082 = fadd double %rC.sroa.1172.017176, %mul1079
  %mul1089 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.360.64.copyload14447
  %add1092 = fadd double %mul1089, %add1082
  %mul1099 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.360.64.copyload14447
  %add1102 = fadd double %38, %mul1099
  %93 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.414.64.copyload14464
  %add1113 = fsub double %add1102, %93
  %mul1120 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.414.64.copyload14464
  %add1123 = fadd double %rC.sroa.1243.017177, %mul1120
  %mul1130 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.360.64.copyload14447
  %add1133 = fadd double %mul1130, %add1123
  %mul1140 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.360.64.copyload14447
  %add1143 = fadd double %37, %mul1140
  %94 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.414.64.copyload14464
  %add1154 = fsub double %add1143, %94
  %mul1161 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.414.64.copyload14464
  %add1164 = fadd double %rC.sroa.1314.017178, %mul1161
  %mul1171 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.360.64.copyload14447
  %add1174 = fadd double %mul1171, %add1164
  %mul1181 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.360.64.copyload14447
  %add1184 = fadd double %36, %mul1181
  %95 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.414.64.copyload14464
  %add1195 = fsub double %add1184, %95
  %mul1202 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.414.64.copyload14464
  %add1205 = fadd double %rC.sroa.1385.017179, %mul1202
  %mul1212 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.360.64.copyload14447
  %add1215 = fadd double %mul1212, %add1205
  %mul1222 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.450.80.copyload14545
  %add1225 = fadd double %35, %mul1222
  %96 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.504.80.copyload14562
  %add1236 = fsub double %add1225, %96
  %mul1243 = fmul double %rA.sroa.0.0.copyload, %rB.sroa.504.80.copyload14562
  %add1246 = fadd double %rC.sroa.1456.017180, %mul1243
  %mul1253 = fmul double %rA.sroa.117.0.copyload, %rB.sroa.450.80.copyload14545
  %add1256 = fadd double %mul1253, %add1246
  %mul1263 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.450.80.copyload14545
  %add1266 = fadd double %34, %mul1263
  %97 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.504.80.copyload14562
  %add1277 = fsub double %add1266, %97
  %mul1284 = fmul double %rA.sroa.225.16.copyload14982, %rB.sroa.504.80.copyload14562
  %add1287 = fadd double %rC.sroa.1527.017181, %mul1284
  %mul1294 = fmul double %rA.sroa.342.16.copyload14999, %rB.sroa.450.80.copyload14545
  %add1297 = fadd double %mul1294, %add1287
  %mul1304 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.450.80.copyload14545
  %add1307 = fadd double %33, %mul1304
  %98 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.504.80.copyload14562
  %add1318 = fsub double %add1307, %98
  %mul1325 = fmul double %rA.sroa.450.32.copyload15215, %rB.sroa.504.80.copyload14562
  %add1328 = fadd double %rC.sroa.1598.017182, %mul1325
  %mul1335 = fmul double %rA.sroa.567.32.copyload15232, %rB.sroa.450.80.copyload14545
  %add1338 = fadd double %mul1335, %add1328
  %mul1345 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.450.80.copyload14545
  %add1348 = fadd double %32, %mul1345
  %99 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.504.80.copyload14562
  %add1359 = fsub double %add1348, %99
  %mul1366 = fmul double %rA.sroa.675.48.copyload15476, %rB.sroa.504.80.copyload14562
  %add1369 = fadd double %rC.sroa.1669.017183, %mul1366
  %mul1376 = fmul double %rA.sroa.792.48.copyload15493, %rB.sroa.450.80.copyload14545
  %add1379 = fadd double %mul1376, %add1369
  %rA.sroa.0.0.copyload14732 = load double, double* %rA.sroa.0.0..sroa_idx14731, align 8
  %rA.sroa.117.0.copyload14749 = load double, double* %rA.sroa.117.0..sroa_idx14748, align 8
  %rA.sroa.225.16.copyload14968 = load double, double* %rA.sroa.225.16.arrayidx1384.sroa_idx14967, align 8
  %rA.sroa.342.16.copyload14985 = load double, double* %rA.sroa.342.16.arrayidx1384.sroa_idx14984, align 8
  %rA.sroa.450.32.copyload15221 = load double, double* %rA.sroa.450.32.arrayidx1386.sroa_idx15220, align 8
  %rA.sroa.567.32.copyload15238 = load double, double* %rA.sroa.567.32.arrayidx1386.sroa_idx15237, align 8
  %rA.sroa.675.48.copyload15474 = load double, double* %rA.sroa.675.48.arrayidx1388.sroa_idx15473, align 8
  %rA.sroa.792.48.copyload15491 = load double, double* %rA.sroa.792.48.arrayidx1388.sroa_idx15490, align 8
  %rB.sroa.0.0.copyload13988 = load double, double* %rB.sroa.0.0..sroa_idx13987, align 8
  %rB.sroa.54.0.copyload14005 = load double, double* %rB.sroa.54.0..sroa_idx14004, align 8
  %rB.sroa.90.16.copyload = load double, double* %rB.sroa.90.16.arrayidx1392.sroa_idx14095, align 8
  %rB.sroa.144.16.copyload = load double, double* %rB.sroa.144.16.arrayidx1392.sroa_idx14112, align 8
  %rB.sroa.180.32.copyload14217 = load double, double* %rB.sroa.180.32.arrayidx1394.sroa_idx14216, align 8
  %rB.sroa.234.32.copyload14234 = load double, double* %rB.sroa.234.32.arrayidx1394.sroa_idx14233, align 8
  %rB.sroa.270.48.copyload14323 = load double, double* %rB.sroa.270.48.arrayidx1396.sroa_idx14322, align 8
  %rB.sroa.324.48.copyload14340 = load double, double* %rB.sroa.324.48.arrayidx1396.sroa_idx14339, align 8
  %rB.sroa.360.64.copyload14445 = load double, double* %rB.sroa.360.64..sroa_idx14444, align 8
  %rB.sroa.414.64.copyload14462 = load double, double* %rB.sroa.414.64..sroa_idx14461, align 8
  %rB.sroa.450.80.copyload14547 = load double, double* %rB.sroa.450.80..sroa_idx14546, align 8
  %rB.sroa.504.80.copyload14564 = load double, double* %rB.sroa.504.80..sroa_idx14563, align 8
  %mul1408 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.0.0.copyload13988
  %add1411 = fadd double %add416, %mul1408
  %100 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.54.0.copyload14005
  %add1422 = fsub double %add1411, %100
  %mul1429 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.54.0.copyload14005
  %add1432 = fadd double %add436, %mul1429
  %mul1439 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.0.0.copyload13988
  %add1442 = fadd double %mul1439, %add1432
  %mul1449 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.0.0.copyload13988
  %add1452 = fadd double %add457, %mul1449
  %101 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.54.0.copyload14005
  %add1463 = fsub double %add1452, %101
  %mul1470 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.54.0.copyload14005
  %add1473 = fadd double %add477, %mul1470
  %mul1480 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.0.0.copyload13988
  %add1483 = fadd double %mul1480, %add1473
  %mul1490 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.0.0.copyload13988
  %add1493 = fadd double %add498, %mul1490
  %102 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.54.0.copyload14005
  %add1504 = fsub double %add1493, %102
  %mul1511 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.54.0.copyload14005
  %add1514 = fadd double %add518, %mul1511
  %mul1521 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.0.0.copyload13988
  %add1524 = fadd double %mul1521, %add1514
  %mul1531 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.0.0.copyload13988
  %add1534 = fadd double %add539, %mul1531
  %103 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.54.0.copyload14005
  %add1545 = fsub double %add1534, %103
  %mul1552 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.54.0.copyload14005
  %add1555 = fadd double %add559, %mul1552
  %mul1562 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.0.0.copyload13988
  %add1565 = fadd double %mul1562, %add1555
  %mul1572 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.90.16.copyload
  %add1575 = fadd double %add580, %mul1572
  %104 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.144.16.copyload
  %add1586 = fsub double %add1575, %104
  %mul1593 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.144.16.copyload
  %add1596 = fadd double %add600, %mul1593
  %mul1603 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.90.16.copyload
  %add1606 = fadd double %mul1603, %add1596
  %mul1613 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.90.16.copyload
  %add1616 = fadd double %add621, %mul1613
  %105 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.144.16.copyload
  %add1627 = fsub double %add1616, %105
  %mul1634 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.144.16.copyload
  %add1637 = fadd double %add641, %mul1634
  %mul1644 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.90.16.copyload
  %add1647 = fadd double %mul1644, %add1637
  %mul1654 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.90.16.copyload
  %add1657 = fadd double %add662, %mul1654
  %106 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.144.16.copyload
  %add1668 = fsub double %add1657, %106
  %mul1675 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.144.16.copyload
  %add1678 = fadd double %add682, %mul1675
  %mul1685 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.90.16.copyload
  %add1688 = fadd double %mul1685, %add1678
  %mul1695 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.90.16.copyload
  %add1698 = fadd double %add703, %mul1695
  %107 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.144.16.copyload
  %add1709 = fsub double %add1698, %107
  %mul1716 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.144.16.copyload
  %add1719 = fadd double %add723, %mul1716
  %mul1726 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.90.16.copyload
  %add1729 = fadd double %mul1726, %add1719
  %mul1736 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.180.32.copyload14217
  %add1739 = fadd double %add744, %mul1736
  %108 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.234.32.copyload14234
  %add1750 = fsub double %add1739, %108
  %mul1757 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.234.32.copyload14234
  %add1760 = fadd double %add764, %mul1757
  %mul1767 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.180.32.copyload14217
  %add1770 = fadd double %mul1767, %add1760
  %mul1777 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.180.32.copyload14217
  %add1780 = fadd double %add785, %mul1777
  %109 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.234.32.copyload14234
  %add1791 = fsub double %add1780, %109
  %mul1798 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.234.32.copyload14234
  %add1801 = fadd double %add805, %mul1798
  %mul1808 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.180.32.copyload14217
  %add1811 = fadd double %mul1808, %add1801
  %mul1818 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.180.32.copyload14217
  %add1821 = fadd double %add826, %mul1818
  %110 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.234.32.copyload14234
  %add1832 = fsub double %add1821, %110
  %mul1839 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.234.32.copyload14234
  %add1842 = fadd double %add846, %mul1839
  %mul1849 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.180.32.copyload14217
  %add1852 = fadd double %mul1849, %add1842
  %mul1859 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.180.32.copyload14217
  %add1862 = fadd double %add867, %mul1859
  %111 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.234.32.copyload14234
  %add1873 = fsub double %add1862, %111
  %mul1880 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.234.32.copyload14234
  %add1883 = fadd double %add887, %mul1880
  %mul1890 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.180.32.copyload14217
  %add1893 = fadd double %mul1890, %add1883
  %mul1900 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.270.48.copyload14323
  %add1903 = fadd double %add908, %mul1900
  %112 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.324.48.copyload14340
  %add1914 = fsub double %add1903, %112
  %mul1921 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.324.48.copyload14340
  %add1924 = fadd double %add928, %mul1921
  %mul1931 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.270.48.copyload14323
  %add1934 = fadd double %mul1931, %add1924
  %mul1941 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.270.48.copyload14323
  %add1944 = fadd double %add949, %mul1941
  %113 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.324.48.copyload14340
  %add1955 = fsub double %add1944, %113
  %mul1962 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.324.48.copyload14340
  %add1965 = fadd double %add969, %mul1962
  %mul1972 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.270.48.copyload14323
  %add1975 = fadd double %mul1972, %add1965
  %mul1982 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.270.48.copyload14323
  %add1985 = fadd double %add990, %mul1982
  %114 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.324.48.copyload14340
  %add1996 = fsub double %add1985, %114
  %mul2003 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.324.48.copyload14340
  %add2006 = fadd double %add1010, %mul2003
  %mul2013 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.270.48.copyload14323
  %add2016 = fadd double %mul2013, %add2006
  %mul2023 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.270.48.copyload14323
  %add2026 = fadd double %add1031, %mul2023
  %115 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.324.48.copyload14340
  %add2037 = fsub double %add2026, %115
  %mul2044 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.324.48.copyload14340
  %add2047 = fadd double %add1051, %mul2044
  %mul2054 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.270.48.copyload14323
  %add2057 = fadd double %mul2054, %add2047
  %mul2064 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.360.64.copyload14445
  %add2067 = fadd double %add1072, %mul2064
  %116 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.414.64.copyload14462
  %add2078 = fsub double %add2067, %116
  %mul2085 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.414.64.copyload14462
  %add2088 = fadd double %add1092, %mul2085
  %mul2095 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.360.64.copyload14445
  %add2098 = fadd double %mul2095, %add2088
  %mul2105 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.360.64.copyload14445
  %add2108 = fadd double %add1113, %mul2105
  %117 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.414.64.copyload14462
  %add2119 = fsub double %add2108, %117
  %mul2126 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.414.64.copyload14462
  %add2129 = fadd double %add1133, %mul2126
  %mul2136 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.360.64.copyload14445
  %add2139 = fadd double %mul2136, %add2129
  %mul2146 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.360.64.copyload14445
  %add2149 = fadd double %add1154, %mul2146
  %118 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.414.64.copyload14462
  %add2160 = fsub double %add2149, %118
  %mul2167 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.414.64.copyload14462
  %add2170 = fadd double %add1174, %mul2167
  %mul2177 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.360.64.copyload14445
  %add2180 = fadd double %mul2177, %add2170
  %mul2187 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.360.64.copyload14445
  %add2190 = fadd double %add1195, %mul2187
  %119 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.414.64.copyload14462
  %add2201 = fsub double %add2190, %119
  %mul2208 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.414.64.copyload14462
  %add2211 = fadd double %add1215, %mul2208
  %mul2218 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.360.64.copyload14445
  %add2221 = fadd double %mul2218, %add2211
  %mul2228 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.450.80.copyload14547
  %add2231 = fadd double %add1236, %mul2228
  %120 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.504.80.copyload14564
  %add2242 = fsub double %add2231, %120
  %mul2249 = fmul double %rA.sroa.0.0.copyload14732, %rB.sroa.504.80.copyload14564
  %add2252 = fadd double %add1256, %mul2249
  %mul2259 = fmul double %rA.sroa.117.0.copyload14749, %rB.sroa.450.80.copyload14547
  %add2262 = fadd double %mul2259, %add2252
  %mul2269 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.450.80.copyload14547
  %add2272 = fadd double %add1277, %mul2269
  %121 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.504.80.copyload14564
  %add2283 = fsub double %add2272, %121
  %mul2290 = fmul double %rA.sroa.225.16.copyload14968, %rB.sroa.504.80.copyload14564
  %add2293 = fadd double %add1297, %mul2290
  %mul2300 = fmul double %rA.sroa.342.16.copyload14985, %rB.sroa.450.80.copyload14547
  %add2303 = fadd double %mul2300, %add2293
  %mul2310 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.450.80.copyload14547
  %add2313 = fadd double %add1318, %mul2310
  %122 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.504.80.copyload14564
  %add2324 = fsub double %add2313, %122
  %mul2331 = fmul double %rA.sroa.450.32.copyload15221, %rB.sroa.504.80.copyload14564
  %add2334 = fadd double %add1338, %mul2331
  %mul2341 = fmul double %rA.sroa.567.32.copyload15238, %rB.sroa.450.80.copyload14547
  %add2344 = fadd double %mul2341, %add2334
  %mul2351 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.450.80.copyload14547
  %add2354 = fadd double %add1359, %mul2351
  %123 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.504.80.copyload14564
  %add2365 = fsub double %add2354, %123
  %mul2372 = fmul double %rA.sroa.675.48.copyload15474, %rB.sroa.504.80.copyload14564
  %add2375 = fadd double %add1379, %mul2372
  %mul2382 = fmul double %rA.sroa.792.48.copyload15491, %rB.sroa.450.80.copyload14547
  %add2385 = fadd double %mul2382, %add2375
  %rA.sroa.0.0.copyload14730 = load double, double* %rA.sroa.0.0..sroa_idx14729, align 8
  %rA.sroa.117.0.copyload14747 = load double, double* %rA.sroa.117.0..sroa_idx14746, align 8
  %rA.sroa.225.16.copyload14970 = load double, double* %rA.sroa.225.16.arrayidx2390.sroa_idx14969, align 8
  %rA.sroa.342.16.copyload14987 = load double, double* %rA.sroa.342.16.arrayidx2390.sroa_idx14986, align 8
  %rA.sroa.450.32.copyload15219 = load double, double* %rA.sroa.450.32.arrayidx2392.sroa_idx15218, align 8
  %rA.sroa.567.32.copyload15236 = load double, double* %rA.sroa.567.32.arrayidx2392.sroa_idx15235, align 8
  %rA.sroa.675.48.copyload15472 = load double, double* %rA.sroa.675.48.arrayidx2394.sroa_idx15471, align 8
  %rA.sroa.792.48.copyload15489 = load double, double* %rA.sroa.792.48.arrayidx2394.sroa_idx15488, align 8
  %rB.sroa.0.0.copyload13990 = load double, double* %rB.sroa.0.0..sroa_idx13989, align 8
  %rB.sroa.54.0.copyload14007 = load double, double* %rB.sroa.54.0..sroa_idx14006, align 8
  %rB.sroa.90.16.copyload14099 = load double, double* %rB.sroa.90.16.arrayidx2398.sroa_idx14098, align 8
  %rB.sroa.144.16.copyload14116 = load double, double* %rB.sroa.144.16.arrayidx2398.sroa_idx14115, align 8
  %rB.sroa.180.32.copyload14219 = load double, double* %rB.sroa.180.32.arrayidx2400.sroa_idx14218, align 8
  %rB.sroa.234.32.copyload14236 = load double, double* %rB.sroa.234.32.arrayidx2400.sroa_idx14235, align 8
  %rB.sroa.270.48.copyload14325 = load double, double* %rB.sroa.270.48.arrayidx2402.sroa_idx14324, align 8
  %rB.sroa.324.48.copyload14342 = load double, double* %rB.sroa.324.48.arrayidx2402.sroa_idx14341, align 8
  %rB.sroa.360.64.copyload14443 = load double, double* %rB.sroa.360.64..sroa_idx14442, align 8
  %rB.sroa.414.64.copyload14460 = load double, double* %rB.sroa.414.64..sroa_idx14459, align 8
  %rB.sroa.450.80.copyload14549 = load double, double* %rB.sroa.450.80..sroa_idx14548, align 8
  %rB.sroa.504.80.copyload14566 = load double, double* %rB.sroa.504.80..sroa_idx14565, align 8
  %mul2414 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.0.0.copyload13990
  %add2417 = fadd double %add1422, %mul2414
  %124 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.54.0.copyload14007
  %add2428 = fsub double %add2417, %124
  %mul2435 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.54.0.copyload14007
  %add2438 = fadd double %add1442, %mul2435
  %mul2445 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.0.0.copyload13990
  %add2448 = fadd double %mul2445, %add2438
  %mul2455 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.0.0.copyload13990
  %add2458 = fadd double %add1463, %mul2455
  %125 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.54.0.copyload14007
  %add2469 = fsub double %add2458, %125
  %mul2476 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.54.0.copyload14007
  %add2479 = fadd double %add1483, %mul2476
  %mul2486 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.0.0.copyload13990
  %add2489 = fadd double %mul2486, %add2479
  %mul2496 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.0.0.copyload13990
  %add2499 = fadd double %add1504, %mul2496
  %126 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.54.0.copyload14007
  %add2510 = fsub double %add2499, %126
  %mul2517 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.54.0.copyload14007
  %add2520 = fadd double %add1524, %mul2517
  %mul2527 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.0.0.copyload13990
  %add2530 = fadd double %mul2527, %add2520
  %mul2537 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.0.0.copyload13990
  %add2540 = fadd double %add1545, %mul2537
  %127 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.54.0.copyload14007
  %add2551 = fsub double %add2540, %127
  %mul2558 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.54.0.copyload14007
  %add2561 = fadd double %add1565, %mul2558
  %mul2568 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.0.0.copyload13990
  %add2571 = fadd double %mul2568, %add2561
  %mul2578 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.90.16.copyload14099
  %add2581 = fadd double %add1586, %mul2578
  %128 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.144.16.copyload14116
  %add2592 = fsub double %add2581, %128
  %mul2599 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.144.16.copyload14116
  %add2602 = fadd double %add1606, %mul2599
  %mul2609 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.90.16.copyload14099
  %add2612 = fadd double %mul2609, %add2602
  %mul2619 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.90.16.copyload14099
  %add2622 = fadd double %add1627, %mul2619
  %129 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.144.16.copyload14116
  %add2633 = fsub double %add2622, %129
  %mul2640 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.144.16.copyload14116
  %add2643 = fadd double %add1647, %mul2640
  %mul2650 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.90.16.copyload14099
  %add2653 = fadd double %mul2650, %add2643
  %mul2660 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.90.16.copyload14099
  %add2663 = fadd double %add1668, %mul2660
  %130 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.144.16.copyload14116
  %add2674 = fsub double %add2663, %130
  %mul2681 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.144.16.copyload14116
  %add2684 = fadd double %add1688, %mul2681
  %mul2691 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.90.16.copyload14099
  %add2694 = fadd double %mul2691, %add2684
  %mul2701 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.90.16.copyload14099
  %add2704 = fadd double %add1709, %mul2701
  %131 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.144.16.copyload14116
  %add2715 = fsub double %add2704, %131
  %mul2722 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.144.16.copyload14116
  %add2725 = fadd double %add1729, %mul2722
  %mul2732 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.90.16.copyload14099
  %add2735 = fadd double %mul2732, %add2725
  %mul2742 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.180.32.copyload14219
  %add2745 = fadd double %add1750, %mul2742
  %132 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.234.32.copyload14236
  %add2756 = fsub double %add2745, %132
  %mul2763 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.234.32.copyload14236
  %add2766 = fadd double %add1770, %mul2763
  %mul2773 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.180.32.copyload14219
  %add2776 = fadd double %mul2773, %add2766
  %mul2783 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.180.32.copyload14219
  %add2786 = fadd double %add1791, %mul2783
  %133 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.234.32.copyload14236
  %add2797 = fsub double %add2786, %133
  %mul2804 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.234.32.copyload14236
  %add2807 = fadd double %add1811, %mul2804
  %mul2814 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.180.32.copyload14219
  %add2817 = fadd double %mul2814, %add2807
  %mul2824 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.180.32.copyload14219
  %add2827 = fadd double %add1832, %mul2824
  %134 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.234.32.copyload14236
  %add2838 = fsub double %add2827, %134
  %mul2845 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.234.32.copyload14236
  %add2848 = fadd double %add1852, %mul2845
  %mul2855 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.180.32.copyload14219
  %add2858 = fadd double %mul2855, %add2848
  %mul2865 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.180.32.copyload14219
  %add2868 = fadd double %add1873, %mul2865
  %135 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.234.32.copyload14236
  %add2879 = fsub double %add2868, %135
  %mul2886 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.234.32.copyload14236
  %add2889 = fadd double %add1893, %mul2886
  %mul2896 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.180.32.copyload14219
  %add2899 = fadd double %mul2896, %add2889
  %mul2906 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.270.48.copyload14325
  %add2909 = fadd double %add1914, %mul2906
  %136 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.324.48.copyload14342
  %add2920 = fsub double %add2909, %136
  %mul2927 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.324.48.copyload14342
  %add2930 = fadd double %add1934, %mul2927
  %mul2937 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.270.48.copyload14325
  %add2940 = fadd double %mul2937, %add2930
  %mul2947 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.270.48.copyload14325
  %add2950 = fadd double %add1955, %mul2947
  %137 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.324.48.copyload14342
  %add2961 = fsub double %add2950, %137
  %mul2968 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.324.48.copyload14342
  %add2971 = fadd double %add1975, %mul2968
  %mul2978 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.270.48.copyload14325
  %add2981 = fadd double %mul2978, %add2971
  %mul2988 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.270.48.copyload14325
  %add2991 = fadd double %add1996, %mul2988
  %138 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.324.48.copyload14342
  %add3002 = fsub double %add2991, %138
  %mul3009 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.324.48.copyload14342
  %add3012 = fadd double %add2016, %mul3009
  %mul3019 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.270.48.copyload14325
  %add3022 = fadd double %mul3019, %add3012
  %mul3029 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.270.48.copyload14325
  %add3032 = fadd double %add2037, %mul3029
  %139 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.324.48.copyload14342
  %add3043 = fsub double %add3032, %139
  %mul3050 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.324.48.copyload14342
  %add3053 = fadd double %add2057, %mul3050
  %mul3060 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.270.48.copyload14325
  %add3063 = fadd double %mul3060, %add3053
  %mul3070 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.360.64.copyload14443
  %add3073 = fadd double %add2078, %mul3070
  %140 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.414.64.copyload14460
  %add3084 = fsub double %add3073, %140
  %mul3091 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.414.64.copyload14460
  %add3094 = fadd double %add2098, %mul3091
  %mul3101 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.360.64.copyload14443
  %add3104 = fadd double %mul3101, %add3094
  %mul3111 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.360.64.copyload14443
  %add3114 = fadd double %add2119, %mul3111
  %141 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.414.64.copyload14460
  %add3125 = fsub double %add3114, %141
  %mul3132 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.414.64.copyload14460
  %add3135 = fadd double %add2139, %mul3132
  %mul3142 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.360.64.copyload14443
  %add3145 = fadd double %mul3142, %add3135
  %mul3152 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.360.64.copyload14443
  %add3155 = fadd double %add2160, %mul3152
  %142 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.414.64.copyload14460
  %add3166 = fsub double %add3155, %142
  %mul3173 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.414.64.copyload14460
  %add3176 = fadd double %add2180, %mul3173
  %mul3183 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.360.64.copyload14443
  %add3186 = fadd double %mul3183, %add3176
  %mul3193 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.360.64.copyload14443
  %add3196 = fadd double %add2201, %mul3193
  %143 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.414.64.copyload14460
  %add3207 = fsub double %add3196, %143
  %mul3214 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.414.64.copyload14460
  %add3217 = fadd double %add2221, %mul3214
  %mul3224 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.360.64.copyload14443
  %add3227 = fadd double %mul3224, %add3217
  %mul3234 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.450.80.copyload14549
  %add3237 = fadd double %add2242, %mul3234
  %144 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.504.80.copyload14566
  %add3248 = fsub double %add3237, %144
  %mul3255 = fmul double %rA.sroa.0.0.copyload14730, %rB.sroa.504.80.copyload14566
  %add3258 = fadd double %add2262, %mul3255
  %mul3265 = fmul double %rA.sroa.117.0.copyload14747, %rB.sroa.450.80.copyload14549
  %add3268 = fadd double %mul3265, %add3258
  %mul3275 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.450.80.copyload14549
  %add3278 = fadd double %add2283, %mul3275
  %145 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.504.80.copyload14566
  %add3289 = fsub double %add3278, %145
  %mul3296 = fmul double %rA.sroa.225.16.copyload14970, %rB.sroa.504.80.copyload14566
  %add3299 = fadd double %add2303, %mul3296
  %mul3306 = fmul double %rA.sroa.342.16.copyload14987, %rB.sroa.450.80.copyload14549
  %add3309 = fadd double %mul3306, %add3299
  %mul3316 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.450.80.copyload14549
  %add3319 = fadd double %add2324, %mul3316
  %146 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.504.80.copyload14566
  %add3330 = fsub double %add3319, %146
  %mul3337 = fmul double %rA.sroa.450.32.copyload15219, %rB.sroa.504.80.copyload14566
  %add3340 = fadd double %add2344, %mul3337
  %mul3347 = fmul double %rA.sroa.567.32.copyload15236, %rB.sroa.450.80.copyload14549
  %add3350 = fadd double %mul3347, %add3340
  %mul3357 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.450.80.copyload14549
  %add3360 = fadd double %add2365, %mul3357
  %147 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.504.80.copyload14566
  %add3371 = fsub double %add3360, %147
  %mul3378 = fmul double %rA.sroa.675.48.copyload15472, %rB.sroa.504.80.copyload14566
  %add3381 = fadd double %add2385, %mul3378
  %mul3388 = fmul double %rA.sroa.792.48.copyload15489, %rB.sroa.450.80.copyload14549
  %add3391 = fadd double %mul3388, %add3381
  %rA.sroa.0.0.copyload14728 = load double, double* %rA.sroa.0.0..sroa_idx14727, align 8
  %rA.sroa.117.0.copyload14745 = load double, double* %rA.sroa.117.0..sroa_idx14744, align 8
  %rA.sroa.225.16.copyload14972 = load double, double* %rA.sroa.225.16.arrayidx3396.sroa_idx14971, align 8
  %rA.sroa.342.16.copyload14989 = load double, double* %rA.sroa.342.16.arrayidx3396.sroa_idx14988, align 8
  %rA.sroa.450.32.copyload15217 = load double, double* %rA.sroa.450.32.arrayidx3398.sroa_idx15216, align 8
  %rA.sroa.567.32.copyload15234 = load double, double* %rA.sroa.567.32.arrayidx3398.sroa_idx15233, align 8
  %rA.sroa.675.48.copyload15470 = load double, double* %rA.sroa.675.48.arrayidx3400.sroa_idx15469, align 8
  %rA.sroa.792.48.copyload15487 = load double, double* %rA.sroa.792.48.arrayidx3400.sroa_idx15486, align 8
  %rB.sroa.0.0.copyload13994 = load double, double* %rB.sroa.0.0..sroa_idx13993, align 8
  %rB.sroa.54.0.copyload14011 = load double, double* %rB.sroa.54.0..sroa_idx14010, align 8
  %rB.sroa.90.16.copyload14101 = load double, double* %rB.sroa.90.16.arrayidx3404.sroa_idx14100, align 8
  %rB.sroa.144.16.copyload14118 = load double, double* %rB.sroa.144.16.arrayidx3404.sroa_idx14117, align 8
  %rB.sroa.180.32.copyload14223 = load double, double* %rB.sroa.180.32.arrayidx3406.sroa_idx14222, align 8
  %rB.sroa.234.32.copyload14240 = load double, double* %rB.sroa.234.32.arrayidx3406.sroa_idx14239, align 8
  %rB.sroa.270.48.copyload14327 = load double, double* %rB.sroa.270.48.arrayidx3408.sroa_idx14326, align 8
  %rB.sroa.324.48.copyload14344 = load double, double* %rB.sroa.324.48.arrayidx3408.sroa_idx14343, align 8
  %rB.sroa.360.64.copyload14441 = load double, double* %rB.sroa.360.64..sroa_idx14440, align 8
  %rB.sroa.414.64.copyload14458 = load double, double* %rB.sroa.414.64..sroa_idx14457, align 8
  %rB.sroa.450.80.copyload14551 = load double, double* %rB.sroa.450.80..sroa_idx14550, align 8
  %rB.sroa.504.80.copyload14568 = load double, double* %rB.sroa.504.80..sroa_idx14567, align 8
  %mul3420 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.0.0.copyload13994
  %add3423 = fadd double %add2428, %mul3420
  %148 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.54.0.copyload14011
  %add3434 = fsub double %add3423, %148
  %mul3441 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.54.0.copyload14011
  %add3444 = fadd double %add2448, %mul3441
  %mul3451 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.0.0.copyload13994
  %add3454 = fadd double %mul3451, %add3444
  %mul3461 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.0.0.copyload13994
  %add3464 = fadd double %add2469, %mul3461
  %149 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.54.0.copyload14011
  %add3475 = fsub double %add3464, %149
  %mul3482 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.54.0.copyload14011
  %add3485 = fadd double %add2489, %mul3482
  %mul3492 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.0.0.copyload13994
  %add3495 = fadd double %mul3492, %add3485
  %mul3502 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.0.0.copyload13994
  %add3505 = fadd double %add2510, %mul3502
  %150 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.54.0.copyload14011
  %add3516 = fsub double %add3505, %150
  %mul3523 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.54.0.copyload14011
  %add3526 = fadd double %add2530, %mul3523
  %mul3533 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.0.0.copyload13994
  %add3536 = fadd double %mul3533, %add3526
  %mul3543 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.0.0.copyload13994
  %add3546 = fadd double %add2551, %mul3543
  %151 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.54.0.copyload14011
  %add3557 = fsub double %add3546, %151
  %mul3564 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.54.0.copyload14011
  %add3567 = fadd double %add2571, %mul3564
  %mul3574 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.0.0.copyload13994
  %add3577 = fadd double %mul3574, %add3567
  %mul3584 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.90.16.copyload14101
  %add3587 = fadd double %add2592, %mul3584
  %152 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.144.16.copyload14118
  %add3598 = fsub double %add3587, %152
  %mul3605 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.144.16.copyload14118
  %add3608 = fadd double %add2612, %mul3605
  %mul3615 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.90.16.copyload14101
  %add3618 = fadd double %mul3615, %add3608
  %mul3625 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.90.16.copyload14101
  %add3628 = fadd double %add2633, %mul3625
  %153 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.144.16.copyload14118
  %add3639 = fsub double %add3628, %153
  %mul3646 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.144.16.copyload14118
  %add3649 = fadd double %add2653, %mul3646
  %mul3656 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.90.16.copyload14101
  %add3659 = fadd double %mul3656, %add3649
  %mul3666 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.90.16.copyload14101
  %add3669 = fadd double %add2674, %mul3666
  %154 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.144.16.copyload14118
  %add3680 = fsub double %add3669, %154
  %mul3687 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.144.16.copyload14118
  %add3690 = fadd double %add2694, %mul3687
  %mul3697 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.90.16.copyload14101
  %add3700 = fadd double %mul3697, %add3690
  %mul3707 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.90.16.copyload14101
  %add3710 = fadd double %add2715, %mul3707
  %155 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.144.16.copyload14118
  %add3721 = fsub double %add3710, %155
  %mul3728 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.144.16.copyload14118
  %add3731 = fadd double %add2735, %mul3728
  %mul3738 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.90.16.copyload14101
  %add3741 = fadd double %mul3738, %add3731
  %mul3748 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.180.32.copyload14223
  %add3751 = fadd double %add2756, %mul3748
  %156 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.234.32.copyload14240
  %add3762 = fsub double %add3751, %156
  %mul3769 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.234.32.copyload14240
  %add3772 = fadd double %add2776, %mul3769
  %mul3779 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.180.32.copyload14223
  %add3782 = fadd double %mul3779, %add3772
  %mul3789 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.180.32.copyload14223
  %add3792 = fadd double %add2797, %mul3789
  %157 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.234.32.copyload14240
  %add3803 = fsub double %add3792, %157
  %mul3810 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.234.32.copyload14240
  %add3813 = fadd double %add2817, %mul3810
  %mul3820 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.180.32.copyload14223
  %add3823 = fadd double %mul3820, %add3813
  %mul3830 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.180.32.copyload14223
  %add3833 = fadd double %add2838, %mul3830
  %158 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.234.32.copyload14240
  %add3844 = fsub double %add3833, %158
  %mul3851 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.234.32.copyload14240
  %add3854 = fadd double %add2858, %mul3851
  %mul3861 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.180.32.copyload14223
  %add3864 = fadd double %mul3861, %add3854
  %mul3871 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.180.32.copyload14223
  %add3874 = fadd double %add2879, %mul3871
  %159 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.234.32.copyload14240
  %add3885 = fsub double %add3874, %159
  %mul3892 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.234.32.copyload14240
  %add3895 = fadd double %add2899, %mul3892
  %mul3902 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.180.32.copyload14223
  %add3905 = fadd double %mul3902, %add3895
  %mul3912 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.270.48.copyload14327
  %add3915 = fadd double %add2920, %mul3912
  %160 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.324.48.copyload14344
  %add3926 = fsub double %add3915, %160
  %mul3933 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.324.48.copyload14344
  %add3936 = fadd double %add2940, %mul3933
  %mul3943 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.270.48.copyload14327
  %add3946 = fadd double %mul3943, %add3936
  %mul3953 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.270.48.copyload14327
  %add3956 = fadd double %add2961, %mul3953
  %161 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.324.48.copyload14344
  %add3967 = fsub double %add3956, %161
  %mul3974 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.324.48.copyload14344
  %add3977 = fadd double %add2981, %mul3974
  %mul3984 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.270.48.copyload14327
  %add3987 = fadd double %mul3984, %add3977
  %mul3994 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.270.48.copyload14327
  %add3997 = fadd double %add3002, %mul3994
  %162 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.324.48.copyload14344
  %add4008 = fsub double %add3997, %162
  %mul4015 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.324.48.copyload14344
  %add4018 = fadd double %add3022, %mul4015
  %mul4025 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.270.48.copyload14327
  %add4028 = fadd double %mul4025, %add4018
  %mul4035 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.270.48.copyload14327
  %add4038 = fadd double %add3043, %mul4035
  %163 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.324.48.copyload14344
  %add4049 = fsub double %add4038, %163
  %mul4056 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.324.48.copyload14344
  %add4059 = fadd double %add3063, %mul4056
  %mul4066 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.270.48.copyload14327
  %add4069 = fadd double %mul4066, %add4059
  %mul4076 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.360.64.copyload14441
  %add4079 = fadd double %add3084, %mul4076
  %164 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.414.64.copyload14458
  %add4090 = fsub double %add4079, %164
  %mul4097 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.414.64.copyload14458
  %add4100 = fadd double %add3104, %mul4097
  %mul4107 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.360.64.copyload14441
  %add4110 = fadd double %mul4107, %add4100
  %mul4117 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.360.64.copyload14441
  %add4120 = fadd double %add3125, %mul4117
  %165 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.414.64.copyload14458
  %add4131 = fsub double %add4120, %165
  %mul4138 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.414.64.copyload14458
  %add4141 = fadd double %add3145, %mul4138
  %mul4148 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.360.64.copyload14441
  %add4151 = fadd double %mul4148, %add4141
  %mul4158 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.360.64.copyload14441
  %add4161 = fadd double %add3166, %mul4158
  %166 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.414.64.copyload14458
  %add4172 = fsub double %add4161, %166
  %mul4179 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.414.64.copyload14458
  %add4182 = fadd double %add3186, %mul4179
  %mul4189 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.360.64.copyload14441
  %add4192 = fadd double %mul4189, %add4182
  %mul4199 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.360.64.copyload14441
  %add4202 = fadd double %add3207, %mul4199
  %167 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.414.64.copyload14458
  %add4213 = fsub double %add4202, %167
  %mul4220 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.414.64.copyload14458
  %add4223 = fadd double %add3227, %mul4220
  %mul4230 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.360.64.copyload14441
  %add4233 = fadd double %mul4230, %add4223
  %mul4240 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.450.80.copyload14551
  %add4243 = fadd double %add3248, %mul4240
  %168 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.504.80.copyload14568
  %add4254 = fsub double %add4243, %168
  %mul4261 = fmul double %rA.sroa.0.0.copyload14728, %rB.sroa.504.80.copyload14568
  %add4264 = fadd double %add3268, %mul4261
  %mul4271 = fmul double %rA.sroa.117.0.copyload14745, %rB.sroa.450.80.copyload14551
  %add4274 = fadd double %mul4271, %add4264
  %mul4281 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.450.80.copyload14551
  %add4284 = fadd double %add3289, %mul4281
  %169 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.504.80.copyload14568
  %add4295 = fsub double %add4284, %169
  %mul4302 = fmul double %rA.sroa.225.16.copyload14972, %rB.sroa.504.80.copyload14568
  %add4305 = fadd double %add3309, %mul4302
  %mul4312 = fmul double %rA.sroa.342.16.copyload14989, %rB.sroa.450.80.copyload14551
  %add4315 = fadd double %mul4312, %add4305
  %mul4322 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.450.80.copyload14551
  %add4325 = fadd double %add3330, %mul4322
  %170 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.504.80.copyload14568
  %add4336 = fsub double %add4325, %170
  %mul4343 = fmul double %rA.sroa.450.32.copyload15217, %rB.sroa.504.80.copyload14568
  %add4346 = fadd double %add3350, %mul4343
  %mul4353 = fmul double %rA.sroa.567.32.copyload15234, %rB.sroa.450.80.copyload14551
  %add4356 = fadd double %mul4353, %add4346
  %mul4363 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.450.80.copyload14551
  %add4366 = fadd double %add3371, %mul4363
  %171 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.504.80.copyload14568
  %add4377 = fsub double %add4366, %171
  %mul4384 = fmul double %rA.sroa.675.48.copyload15470, %rB.sroa.504.80.copyload14568
  %add4387 = fadd double %add3391, %mul4384
  %mul4394 = fmul double %rA.sroa.792.48.copyload15487, %rB.sroa.450.80.copyload14551
  %add4397 = fadd double %mul4394, %add4387
  %rA.sroa.0.0.copyload14726 = load double, double* %rA.sroa.0.0..sroa_idx14725, align 8
  %rA.sroa.117.0.copyload14743 = load double, double* %rA.sroa.117.0..sroa_idx14742, align 8
  %rA.sroa.225.16.copyload14976 = load double, double* %rA.sroa.225.16.arrayidx4402.sroa_idx14975, align 8
  %rA.sroa.342.16.copyload14993 = load double, double* %rA.sroa.342.16.arrayidx4402.sroa_idx14992, align 8
  %rA.sroa.450.32.copyload = load double, double* %rA.sroa.450.32.arrayidx4404.sroa_idx15214, align 8
  %rA.sroa.567.32.copyload = load double, double* %rA.sroa.567.32.arrayidx4404.sroa_idx15230, align 8
  %rA.sroa.675.48.copyload15468 = load double, double* %rA.sroa.675.48.arrayidx4406.sroa_idx15467, align 8
  %rA.sroa.792.48.copyload15485 = load double, double* %rA.sroa.792.48.arrayidx4406.sroa_idx15484, align 8
  %rB.sroa.0.0.copyload13996 = load double, double* %rB.sroa.0.0..sroa_idx13995, align 8
  %rB.sroa.54.0.copyload14013 = load double, double* %rB.sroa.54.0..sroa_idx14012, align 8
  %rB.sroa.90.16.copyload14103 = load double, double* %rB.sroa.90.16.arrayidx4410.sroa_idx14102, align 8
  %rB.sroa.144.16.copyload14120 = load double, double* %rB.sroa.144.16.arrayidx4410.sroa_idx14119, align 8
  %rB.sroa.180.32.copyload14221 = load double, double* %rB.sroa.180.32.arrayidx4412.sroa_idx14220, align 8
  %rB.sroa.234.32.copyload14238 = load double, double* %rB.sroa.234.32.arrayidx4412.sroa_idx14237, align 8
  %rB.sroa.270.48.copyload14329 = load double, double* %rB.sroa.270.48.arrayidx4414.sroa_idx14328, align 8
  %rB.sroa.324.48.copyload14346 = load double, double* %rB.sroa.324.48.arrayidx4414.sroa_idx14345, align 8
  %rB.sroa.360.64.copyload14439 = load double, double* %rB.sroa.360.64..sroa_idx14438, align 8
  %rB.sroa.414.64.copyload14456 = load double, double* %rB.sroa.414.64..sroa_idx14455, align 8
  %rB.sroa.450.80.copyload14553 = load double, double* %rB.sroa.450.80..sroa_idx14552, align 8
  %rB.sroa.504.80.copyload14570 = load double, double* %rB.sroa.504.80..sroa_idx14569, align 8
  %mul4426 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.0.0.copyload13996
  %add4429 = fadd double %add3434, %mul4426
  %172 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.54.0.copyload14013
  %add4440 = fsub double %add4429, %172
  %mul4447 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.54.0.copyload14013
  %add4450 = fadd double %add3454, %mul4447
  %mul4457 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.0.0.copyload13996
  %add4460 = fadd double %mul4457, %add4450
  %mul4467 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.0.0.copyload13996
  %add4470 = fadd double %add3475, %mul4467
  %173 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.54.0.copyload14013
  %add4481 = fsub double %add4470, %173
  %mul4488 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.54.0.copyload14013
  %add4491 = fadd double %add3495, %mul4488
  %mul4498 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.0.0.copyload13996
  %add4501 = fadd double %mul4498, %add4491
  %mul4508 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.0.0.copyload13996
  %add4511 = fadd double %add3516, %mul4508
  %174 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.54.0.copyload14013
  %add4522 = fsub double %add4511, %174
  %mul4529 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.54.0.copyload14013
  %add4532 = fadd double %add3536, %mul4529
  %mul4539 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.0.0.copyload13996
  %add4542 = fadd double %mul4539, %add4532
  %mul4549 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.0.0.copyload13996
  %add4552 = fadd double %add3557, %mul4549
  %175 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.54.0.copyload14013
  %add4563 = fsub double %add4552, %175
  %mul4570 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.54.0.copyload14013
  %add4573 = fadd double %add3577, %mul4570
  %mul4580 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.0.0.copyload13996
  %add4583 = fadd double %mul4580, %add4573
  %mul4590 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.90.16.copyload14103
  %add4593 = fadd double %add3598, %mul4590
  %176 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.144.16.copyload14120
  %add4604 = fsub double %add4593, %176
  %mul4611 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.144.16.copyload14120
  %add4614 = fadd double %add3618, %mul4611
  %mul4621 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.90.16.copyload14103
  %add4624 = fadd double %mul4621, %add4614
  %mul4631 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.90.16.copyload14103
  %add4634 = fadd double %add3639, %mul4631
  %177 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.144.16.copyload14120
  %add4645 = fsub double %add4634, %177
  %mul4652 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.144.16.copyload14120
  %add4655 = fadd double %add3659, %mul4652
  %mul4662 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.90.16.copyload14103
  %add4665 = fadd double %mul4662, %add4655
  %mul4672 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.90.16.copyload14103
  %add4675 = fadd double %add3680, %mul4672
  %178 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.144.16.copyload14120
  %add4686 = fsub double %add4675, %178
  %mul4693 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.144.16.copyload14120
  %add4696 = fadd double %add3700, %mul4693
  %mul4703 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.90.16.copyload14103
  %add4706 = fadd double %mul4703, %add4696
  %mul4713 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.90.16.copyload14103
  %add4716 = fadd double %add3721, %mul4713
  %179 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.144.16.copyload14120
  %add4727 = fsub double %add4716, %179
  %mul4734 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.144.16.copyload14120
  %add4737 = fadd double %add3741, %mul4734
  %mul4744 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.90.16.copyload14103
  %add4747 = fadd double %mul4744, %add4737
  %mul4754 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.180.32.copyload14221
  %add4757 = fadd double %add3762, %mul4754
  %180 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.234.32.copyload14238
  %add4768 = fsub double %add4757, %180
  %mul4775 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.234.32.copyload14238
  %add4778 = fadd double %add3782, %mul4775
  %mul4785 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.180.32.copyload14221
  %add4788 = fadd double %mul4785, %add4778
  %mul4795 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.180.32.copyload14221
  %add4798 = fadd double %add3803, %mul4795
  %181 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.234.32.copyload14238
  %add4809 = fsub double %add4798, %181
  %mul4816 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.234.32.copyload14238
  %add4819 = fadd double %add3823, %mul4816
  %mul4826 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.180.32.copyload14221
  %add4829 = fadd double %mul4826, %add4819
  %mul4836 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.180.32.copyload14221
  %add4839 = fadd double %add3844, %mul4836
  %182 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.234.32.copyload14238
  %add4850 = fsub double %add4839, %182
  %mul4857 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.234.32.copyload14238
  %add4860 = fadd double %add3864, %mul4857
  %mul4867 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.180.32.copyload14221
  %add4870 = fadd double %mul4867, %add4860
  %mul4877 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.180.32.copyload14221
  %add4880 = fadd double %add3885, %mul4877
  %183 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.234.32.copyload14238
  %add4891 = fsub double %add4880, %183
  %mul4898 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.234.32.copyload14238
  %add4901 = fadd double %add3905, %mul4898
  %mul4908 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.180.32.copyload14221
  %add4911 = fadd double %mul4908, %add4901
  %mul4918 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.270.48.copyload14329
  %add4921 = fadd double %add3926, %mul4918
  %184 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.324.48.copyload14346
  %add4932 = fsub double %add4921, %184
  %mul4939 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.324.48.copyload14346
  %add4942 = fadd double %add3946, %mul4939
  %mul4949 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.270.48.copyload14329
  %add4952 = fadd double %mul4949, %add4942
  %mul4959 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.270.48.copyload14329
  %add4962 = fadd double %add3967, %mul4959
  %185 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.324.48.copyload14346
  %add4973 = fsub double %add4962, %185
  %mul4980 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.324.48.copyload14346
  %add4983 = fadd double %add3987, %mul4980
  %mul4990 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.270.48.copyload14329
  %add4993 = fadd double %mul4990, %add4983
  %mul5000 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.270.48.copyload14329
  %add5003 = fadd double %add4008, %mul5000
  %186 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.324.48.copyload14346
  %add5014 = fsub double %add5003, %186
  %mul5021 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.324.48.copyload14346
  %add5024 = fadd double %add4028, %mul5021
  %mul5031 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.270.48.copyload14329
  %add5034 = fadd double %mul5031, %add5024
  %mul5041 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.270.48.copyload14329
  %add5044 = fadd double %add4049, %mul5041
  %187 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.324.48.copyload14346
  %add5055 = fsub double %add5044, %187
  %mul5062 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.324.48.copyload14346
  %add5065 = fadd double %add4069, %mul5062
  %mul5072 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.270.48.copyload14329
  %add5075 = fadd double %mul5072, %add5065
  %mul5082 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.360.64.copyload14439
  %add5085 = fadd double %add4090, %mul5082
  %188 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.414.64.copyload14456
  %add5096 = fsub double %add5085, %188
  %mul5103 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.414.64.copyload14456
  %add5106 = fadd double %add4110, %mul5103
  %mul5113 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.360.64.copyload14439
  %add5116 = fadd double %mul5113, %add5106
  %mul5123 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.360.64.copyload14439
  %add5126 = fadd double %add4131, %mul5123
  %189 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.414.64.copyload14456
  %add5137 = fsub double %add5126, %189
  %mul5144 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.414.64.copyload14456
  %add5147 = fadd double %add4151, %mul5144
  %mul5154 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.360.64.copyload14439
  %add5157 = fadd double %mul5154, %add5147
  %mul5164 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.360.64.copyload14439
  %add5167 = fadd double %add4172, %mul5164
  %190 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.414.64.copyload14456
  %add5178 = fsub double %add5167, %190
  %mul5185 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.414.64.copyload14456
  %add5188 = fadd double %add4192, %mul5185
  %mul5195 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.360.64.copyload14439
  %add5198 = fadd double %mul5195, %add5188
  %mul5205 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.360.64.copyload14439
  %add5208 = fadd double %add4213, %mul5205
  %191 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.414.64.copyload14456
  %add5219 = fsub double %add5208, %191
  %mul5226 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.414.64.copyload14456
  %add5229 = fadd double %add4233, %mul5226
  %mul5236 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.360.64.copyload14439
  %add5239 = fadd double %mul5236, %add5229
  %mul5246 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.450.80.copyload14553
  %add5249 = fadd double %add4254, %mul5246
  %192 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.504.80.copyload14570
  %add5260 = fsub double %add5249, %192
  %mul5267 = fmul double %rA.sroa.0.0.copyload14726, %rB.sroa.504.80.copyload14570
  %add5270 = fadd double %add4274, %mul5267
  %mul5277 = fmul double %rA.sroa.117.0.copyload14743, %rB.sroa.450.80.copyload14553
  %add5280 = fadd double %mul5277, %add5270
  %mul5287 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.450.80.copyload14553
  %add5290 = fadd double %add4295, %mul5287
  %193 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.504.80.copyload14570
  %add5301 = fsub double %add5290, %193
  %mul5308 = fmul double %rA.sroa.225.16.copyload14976, %rB.sroa.504.80.copyload14570
  %add5311 = fadd double %add4315, %mul5308
  %mul5318 = fmul double %rA.sroa.342.16.copyload14993, %rB.sroa.450.80.copyload14553
  %add5321 = fadd double %mul5318, %add5311
  %mul5328 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.450.80.copyload14553
  %add5331 = fadd double %add4336, %mul5328
  %194 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.504.80.copyload14570
  %add5342 = fsub double %add5331, %194
  %mul5349 = fmul double %rA.sroa.450.32.copyload, %rB.sroa.504.80.copyload14570
  %add5352 = fadd double %add4356, %mul5349
  %mul5359 = fmul double %rA.sroa.567.32.copyload, %rB.sroa.450.80.copyload14553
  %add5362 = fadd double %mul5359, %add5352
  %mul5369 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.450.80.copyload14553
  %add5372 = fadd double %add4377, %mul5369
  %195 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.504.80.copyload14570
  %add5383 = fsub double %add5372, %195
  %mul5390 = fmul double %rA.sroa.675.48.copyload15468, %rB.sroa.504.80.copyload14570
  %add5393 = fadd double %add4397, %mul5390
  %mul5400 = fmul double %rA.sroa.792.48.copyload15485, %rB.sroa.450.80.copyload14553
  %add5403 = fadd double %mul5400, %add5393
  %rA.sroa.0.0.copyload14724 = load double, double* %rA.sroa.0.0..sroa_idx14723, align 8
  %rA.sroa.117.0.copyload14741 = load double, double* %rA.sroa.117.0..sroa_idx14740, align 8
  %rA.sroa.225.16.copyload = load double, double* %rA.sroa.225.16.arrayidx5408.sroa_idx14966, align 8
  %rA.sroa.342.16.copyload = load double, double* %rA.sroa.342.16.arrayidx5408.sroa_idx14983, align 8
  %rA.sroa.450.32.copyload15229 = load double, double* %rA.sroa.450.32.arrayidx5410.sroa_idx15228, align 8
  %rA.sroa.567.32.copyload15246 = load double, double* %rA.sroa.567.32.arrayidx5410.sroa_idx15245, align 8
  %rA.sroa.675.48.copyload15466 = load double, double* %rA.sroa.675.48.arrayidx5412.sroa_idx15465, align 8
  %rA.sroa.792.48.copyload15483 = load double, double* %rA.sroa.792.48.arrayidx5412.sroa_idx15482, align 8
  %rB.sroa.0.0.copyload13998 = load double, double* %rB.sroa.0.0..sroa_idx13997, align 8
  %rB.sroa.54.0.copyload14015 = load double, double* %rB.sroa.54.0..sroa_idx14014, align 8
  %rB.sroa.90.16.copyload14105 = load double, double* %rB.sroa.90.16.arrayidx5416.sroa_idx14104, align 8
  %rB.sroa.144.16.copyload14122 = load double, double* %rB.sroa.144.16.arrayidx5416.sroa_idx14121, align 8
  %rB.sroa.180.32.copyload14213 = load double, double* %rB.sroa.180.32.arrayidx5418.sroa_idx14212, align 8
  %rB.sroa.234.32.copyload14230 = load double, double* %rB.sroa.234.32.arrayidx5418.sroa_idx14229, align 8
  %rB.sroa.270.48.copyload14331 = load double, double* %rB.sroa.270.48.arrayidx5420.sroa_idx14330, align 8
  %rB.sroa.324.48.copyload14348 = load double, double* %rB.sroa.324.48.arrayidx5420.sroa_idx14347, align 8
  %rB.sroa.360.64.copyload14437 = load double, double* %rB.sroa.360.64..sroa_idx14436, align 8
  %rB.sroa.414.64.copyload14454 = load double, double* %rB.sroa.414.64..sroa_idx14453, align 8
  %rB.sroa.450.80.copyload14555 = load double, double* %rB.sroa.450.80..sroa_idx14554, align 8
  %rB.sroa.504.80.copyload14572 = load double, double* %rB.sroa.504.80..sroa_idx14571, align 8
  %mul5432 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.0.0.copyload13998
  %add5435 = fadd double %add4440, %mul5432
  %196 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.54.0.copyload14015
  %add5446 = fsub double %add5435, %196
  %mul5453 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.54.0.copyload14015
  %add5456 = fadd double %add4460, %mul5453
  %mul5463 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.0.0.copyload13998
  %add5466 = fadd double %mul5463, %add5456
  %mul5473 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.0.0.copyload13998
  %add5476 = fadd double %add4481, %mul5473
  %197 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.54.0.copyload14015
  %add5487 = fsub double %add5476, %197
  %mul5494 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.54.0.copyload14015
  %add5497 = fadd double %add4501, %mul5494
  %mul5504 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.0.0.copyload13998
  %add5507 = fadd double %mul5504, %add5497
  %mul5514 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.0.0.copyload13998
  %add5517 = fadd double %add4522, %mul5514
  %198 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.54.0.copyload14015
  %add5528 = fsub double %add5517, %198
  %mul5535 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.54.0.copyload14015
  %add5538 = fadd double %add4542, %mul5535
  %mul5545 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.0.0.copyload13998
  %add5548 = fadd double %mul5545, %add5538
  %mul5555 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.0.0.copyload13998
  %add5558 = fadd double %add4563, %mul5555
  %199 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.54.0.copyload14015
  %add5569 = fsub double %add5558, %199
  %mul5576 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.54.0.copyload14015
  %add5579 = fadd double %add4583, %mul5576
  %mul5586 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.0.0.copyload13998
  %add5589 = fadd double %mul5586, %add5579
  %mul5596 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.90.16.copyload14105
  %add5599 = fadd double %add4604, %mul5596
  %200 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.144.16.copyload14122
  %add5610 = fsub double %add5599, %200
  %mul5617 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.144.16.copyload14122
  %add5620 = fadd double %add4624, %mul5617
  %mul5627 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.90.16.copyload14105
  %add5630 = fadd double %mul5627, %add5620
  %mul5637 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.90.16.copyload14105
  %add5640 = fadd double %add4645, %mul5637
  %201 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.144.16.copyload14122
  %add5651 = fsub double %add5640, %201
  %mul5658 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.144.16.copyload14122
  %add5661 = fadd double %add4665, %mul5658
  %mul5668 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.90.16.copyload14105
  %add5671 = fadd double %mul5668, %add5661
  %mul5678 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.90.16.copyload14105
  %add5681 = fadd double %add4686, %mul5678
  %202 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.144.16.copyload14122
  %add5692 = fsub double %add5681, %202
  %mul5699 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.144.16.copyload14122
  %add5702 = fadd double %add4706, %mul5699
  %mul5709 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.90.16.copyload14105
  %add5712 = fadd double %mul5709, %add5702
  %mul5719 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.90.16.copyload14105
  %add5722 = fadd double %add4727, %mul5719
  %203 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.144.16.copyload14122
  %add5733 = fsub double %add5722, %203
  %mul5740 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.144.16.copyload14122
  %add5743 = fadd double %add4747, %mul5740
  %mul5750 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.90.16.copyload14105
  %add5753 = fadd double %mul5750, %add5743
  %mul5760 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.180.32.copyload14213
  %add5763 = fadd double %add4768, %mul5760
  %204 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.234.32.copyload14230
  %add5774 = fsub double %add5763, %204
  %mul5781 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.234.32.copyload14230
  %add5784 = fadd double %add4788, %mul5781
  %mul5791 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.180.32.copyload14213
  %add5794 = fadd double %mul5791, %add5784
  %mul5801 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.180.32.copyload14213
  %add5804 = fadd double %add4809, %mul5801
  %205 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.234.32.copyload14230
  %add5815 = fsub double %add5804, %205
  %mul5822 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.234.32.copyload14230
  %add5825 = fadd double %add4829, %mul5822
  %mul5832 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.180.32.copyload14213
  %add5835 = fadd double %mul5832, %add5825
  %mul5842 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.180.32.copyload14213
  %add5845 = fadd double %add4850, %mul5842
  %206 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.234.32.copyload14230
  %add5856 = fsub double %add5845, %206
  %mul5863 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.234.32.copyload14230
  %add5866 = fadd double %add4870, %mul5863
  %mul5873 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.180.32.copyload14213
  %add5876 = fadd double %mul5873, %add5866
  %mul5883 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.180.32.copyload14213
  %add5886 = fadd double %add4891, %mul5883
  %207 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.234.32.copyload14230
  %add5897 = fsub double %add5886, %207
  %mul5904 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.234.32.copyload14230
  %add5907 = fadd double %add4911, %mul5904
  %mul5914 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.180.32.copyload14213
  %add5917 = fadd double %mul5914, %add5907
  %mul5924 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.270.48.copyload14331
  %add5927 = fadd double %add4932, %mul5924
  %208 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.324.48.copyload14348
  %add5938 = fsub double %add5927, %208
  %mul5945 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.324.48.copyload14348
  %add5948 = fadd double %add4952, %mul5945
  %mul5955 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.270.48.copyload14331
  %add5958 = fadd double %mul5955, %add5948
  %mul5965 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.270.48.copyload14331
  %add5968 = fadd double %add4973, %mul5965
  %209 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.324.48.copyload14348
  %add5979 = fsub double %add5968, %209
  %mul5986 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.324.48.copyload14348
  %add5989 = fadd double %add4993, %mul5986
  %mul5996 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.270.48.copyload14331
  %add5999 = fadd double %mul5996, %add5989
  %mul6006 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.270.48.copyload14331
  %add6009 = fadd double %add5014, %mul6006
  %210 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.324.48.copyload14348
  %add6020 = fsub double %add6009, %210
  %mul6027 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.324.48.copyload14348
  %add6030 = fadd double %add5034, %mul6027
  %mul6037 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.270.48.copyload14331
  %add6040 = fadd double %mul6037, %add6030
  %mul6047 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.270.48.copyload14331
  %add6050 = fadd double %add5055, %mul6047
  %211 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.324.48.copyload14348
  %add6061 = fsub double %add6050, %211
  %mul6068 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.324.48.copyload14348
  %add6071 = fadd double %add5075, %mul6068
  %mul6078 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.270.48.copyload14331
  %add6081 = fadd double %mul6078, %add6071
  %mul6088 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.360.64.copyload14437
  %add6091 = fadd double %add5096, %mul6088
  %212 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.414.64.copyload14454
  %add6102 = fsub double %add6091, %212
  %mul6109 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.414.64.copyload14454
  %add6112 = fadd double %add5116, %mul6109
  %mul6119 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.360.64.copyload14437
  %add6122 = fadd double %mul6119, %add6112
  %mul6129 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.360.64.copyload14437
  %add6132 = fadd double %add5137, %mul6129
  %213 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.414.64.copyload14454
  %add6143 = fsub double %add6132, %213
  %mul6150 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.414.64.copyload14454
  %add6153 = fadd double %add5157, %mul6150
  %mul6160 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.360.64.copyload14437
  %add6163 = fadd double %mul6160, %add6153
  %mul6170 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.360.64.copyload14437
  %add6173 = fadd double %add5178, %mul6170
  %214 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.414.64.copyload14454
  %add6184 = fsub double %add6173, %214
  %mul6191 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.414.64.copyload14454
  %add6194 = fadd double %add5198, %mul6191
  %mul6201 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.360.64.copyload14437
  %add6204 = fadd double %mul6201, %add6194
  %mul6211 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.360.64.copyload14437
  %add6214 = fadd double %add5219, %mul6211
  %215 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.414.64.copyload14454
  %add6225 = fsub double %add6214, %215
  %mul6232 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.414.64.copyload14454
  %add6235 = fadd double %add5239, %mul6232
  %mul6242 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.360.64.copyload14437
  %add6245 = fadd double %mul6242, %add6235
  %mul6252 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.450.80.copyload14555
  %add6255 = fadd double %add5260, %mul6252
  %216 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.504.80.copyload14572
  %add6266 = fsub double %add6255, %216
  %mul6273 = fmul double %rA.sroa.0.0.copyload14724, %rB.sroa.504.80.copyload14572
  %add6276 = fadd double %add5280, %mul6273
  %mul6283 = fmul double %rA.sroa.117.0.copyload14741, %rB.sroa.450.80.copyload14555
  %add6286 = fadd double %mul6283, %add6276
  %mul6293 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.450.80.copyload14555
  %add6296 = fadd double %add5301, %mul6293
  %217 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.504.80.copyload14572
  %add6307 = fsub double %add6296, %217
  %mul6314 = fmul double %rA.sroa.225.16.copyload, %rB.sroa.504.80.copyload14572
  %add6317 = fadd double %add5321, %mul6314
  %mul6324 = fmul double %rA.sroa.342.16.copyload, %rB.sroa.450.80.copyload14555
  %add6327 = fadd double %mul6324, %add6317
  %mul6334 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.450.80.copyload14555
  %add6337 = fadd double %add5342, %mul6334
  %218 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.504.80.copyload14572
  %add6348 = fsub double %add6337, %218
  %mul6355 = fmul double %rA.sroa.450.32.copyload15229, %rB.sroa.504.80.copyload14572
  %add6358 = fadd double %add5362, %mul6355
  %mul6365 = fmul double %rA.sroa.567.32.copyload15246, %rB.sroa.450.80.copyload14555
  %add6368 = fadd double %mul6365, %add6358
  %mul6375 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.450.80.copyload14555
  %add6378 = fadd double %add5383, %mul6375
  %219 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.504.80.copyload14572
  %add6389 = fsub double %add6378, %219
  %mul6396 = fmul double %rA.sroa.675.48.copyload15466, %rB.sroa.504.80.copyload14572
  %add6399 = fadd double %add5403, %mul6396
  %mul6406 = fmul double %rA.sroa.792.48.copyload15483, %rB.sroa.450.80.copyload14555
  %add6409 = fadd double %mul6406, %add6399
  %rA.sroa.0.0.copyload14722 = load double, double* %rA.sroa.0.0..sroa_idx14721, align 8
  %rA.sroa.117.0.copyload14739 = load double, double* %rA.sroa.117.0..sroa_idx14738, align 8
  %rA.sroa.225.16.copyload14980 = load double, double* %rA.sroa.225.16.arrayidx6414.sroa_idx14979, align 8
  %rA.sroa.342.16.copyload14997 = load double, double* %rA.sroa.342.16.arrayidx6414.sroa_idx14996, align 8
  %rA.sroa.450.32.copyload15227 = load double, double* %rA.sroa.450.32.arrayidx6416.sroa_idx15226, align 8
  %rA.sroa.567.32.copyload15244 = load double, double* %rA.sroa.567.32.arrayidx6416.sroa_idx15243, align 8
  %rA.sroa.675.48.copyload15464 = load double, double* %rA.sroa.675.48.arrayidx6418.sroa_idx15463, align 8
  %rA.sroa.792.48.copyload15481 = load double, double* %rA.sroa.792.48.arrayidx6418.sroa_idx15480, align 8
  %rB.sroa.0.0.copyload13984 = load double, double* %rB.sroa.0.0..sroa_idx13983, align 8
  %rB.sroa.54.0.copyload14001 = load double, double* %rB.sroa.54.0..sroa_idx14000, align 8
  %rB.sroa.90.16.copyload14109 = load double, double* %rB.sroa.90.16.arrayidx6422.sroa_idx14108, align 8
  %rB.sroa.144.16.copyload14126 = load double, double* %rB.sroa.144.16.arrayidx6422.sroa_idx14125, align 8
  %rB.sroa.180.32.copyload = load double, double* %rB.sroa.180.32.arrayidx6424.sroa_idx14208, align 8
  %rB.sroa.234.32.copyload = load double, double* %rB.sroa.234.32.arrayidx6424.sroa_idx14224, align 8
  %rB.sroa.270.48.copyload14333 = load double, double* %rB.sroa.270.48.arrayidx6426.sroa_idx14332, align 8
  %rB.sroa.324.48.copyload14350 = load double, double* %rB.sroa.324.48.arrayidx6426.sroa_idx14349, align 8
  %rB.sroa.360.64.copyload14435 = load double, double* %rB.sroa.360.64..sroa_idx14434, align 8
  %rB.sroa.414.64.copyload14452 = load double, double* %rB.sroa.414.64..sroa_idx14451, align 8
  %rB.sroa.450.80.copyload14557 = load double, double* %rB.sroa.450.80..sroa_idx14556, align 8
  %rB.sroa.504.80.copyload14574 = load double, double* %rB.sroa.504.80..sroa_idx14573, align 8
  %mul6438 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.0.0.copyload13984
  %add6441 = fadd double %add5446, %mul6438
  %220 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.54.0.copyload14001
  %add6452 = fsub double %add6441, %220
  %mul6459 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.54.0.copyload14001
  %add6462 = fadd double %add5466, %mul6459
  %mul6469 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.0.0.copyload13984
  %add6472 = fadd double %mul6469, %add6462
  %mul6479 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.0.0.copyload13984
  %add6482 = fadd double %add5487, %mul6479
  %221 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.54.0.copyload14001
  %add6493 = fsub double %add6482, %221
  %mul6500 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.54.0.copyload14001
  %add6503 = fadd double %add5507, %mul6500
  %mul6510 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.0.0.copyload13984
  %add6513 = fadd double %mul6510, %add6503
  %mul6520 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.0.0.copyload13984
  %add6523 = fadd double %add5528, %mul6520
  %222 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.54.0.copyload14001
  %add6534 = fsub double %add6523, %222
  %mul6541 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.54.0.copyload14001
  %add6544 = fadd double %add5548, %mul6541
  %mul6551 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.0.0.copyload13984
  %add6554 = fadd double %mul6551, %add6544
  %mul6561 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.0.0.copyload13984
  %add6564 = fadd double %add5569, %mul6561
  %223 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.54.0.copyload14001
  %add6575 = fsub double %add6564, %223
  %mul6582 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.54.0.copyload14001
  %add6585 = fadd double %add5589, %mul6582
  %mul6592 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.0.0.copyload13984
  %add6595 = fadd double %mul6592, %add6585
  %mul6602 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.90.16.copyload14109
  %add6605 = fadd double %add5610, %mul6602
  %224 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.144.16.copyload14126
  %add6616 = fsub double %add6605, %224
  %mul6623 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.144.16.copyload14126
  %add6626 = fadd double %add5630, %mul6623
  %mul6633 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.90.16.copyload14109
  %add6636 = fadd double %mul6633, %add6626
  %mul6643 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.90.16.copyload14109
  %add6646 = fadd double %add5651, %mul6643
  %225 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.144.16.copyload14126
  %add6657 = fsub double %add6646, %225
  %mul6664 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.144.16.copyload14126
  %add6667 = fadd double %add5671, %mul6664
  %mul6674 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.90.16.copyload14109
  %add6677 = fadd double %mul6674, %add6667
  %mul6684 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.90.16.copyload14109
  %add6687 = fadd double %add5692, %mul6684
  %226 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.144.16.copyload14126
  %add6698 = fsub double %add6687, %226
  %mul6705 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.144.16.copyload14126
  %add6708 = fadd double %add5712, %mul6705
  %mul6715 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.90.16.copyload14109
  %add6718 = fadd double %mul6715, %add6708
  %mul6725 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.90.16.copyload14109
  %add6728 = fadd double %add5733, %mul6725
  %227 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.144.16.copyload14126
  %add6739 = fsub double %add6728, %227
  %mul6746 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.144.16.copyload14126
  %add6749 = fadd double %add5753, %mul6746
  %mul6756 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.90.16.copyload14109
  %add6759 = fadd double %mul6756, %add6749
  %mul6766 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.180.32.copyload
  %add6769 = fadd double %add5774, %mul6766
  %228 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.234.32.copyload
  %add6780 = fsub double %add6769, %228
  %mul6787 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.234.32.copyload
  %add6790 = fadd double %add5794, %mul6787
  %mul6797 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.180.32.copyload
  %add6800 = fadd double %mul6797, %add6790
  %mul6807 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.180.32.copyload
  %add6810 = fadd double %add5815, %mul6807
  %229 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.234.32.copyload
  %add6821 = fsub double %add6810, %229
  %mul6828 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.234.32.copyload
  %add6831 = fadd double %add5835, %mul6828
  %mul6838 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.180.32.copyload
  %add6841 = fadd double %mul6838, %add6831
  %mul6848 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.180.32.copyload
  %add6851 = fadd double %add5856, %mul6848
  %230 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.234.32.copyload
  %add6862 = fsub double %add6851, %230
  %mul6869 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.234.32.copyload
  %add6872 = fadd double %add5876, %mul6869
  %mul6879 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.180.32.copyload
  %add6882 = fadd double %mul6879, %add6872
  %mul6889 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.180.32.copyload
  %add6892 = fadd double %add5897, %mul6889
  %231 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.234.32.copyload
  %add6903 = fsub double %add6892, %231
  %mul6910 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.234.32.copyload
  %add6913 = fadd double %add5917, %mul6910
  %mul6920 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.180.32.copyload
  %add6923 = fadd double %mul6920, %add6913
  %mul6930 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.270.48.copyload14333
  %add6933 = fadd double %add5938, %mul6930
  %232 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.324.48.copyload14350
  %add6944 = fsub double %add6933, %232
  %mul6951 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.324.48.copyload14350
  %add6954 = fadd double %add5958, %mul6951
  %mul6961 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.270.48.copyload14333
  %add6964 = fadd double %mul6961, %add6954
  %mul6971 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.270.48.copyload14333
  %add6974 = fadd double %add5979, %mul6971
  %233 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.324.48.copyload14350
  %add6985 = fsub double %add6974, %233
  %mul6992 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.324.48.copyload14350
  %add6995 = fadd double %add5999, %mul6992
  %mul7002 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.270.48.copyload14333
  %add7005 = fadd double %mul7002, %add6995
  %mul7012 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.270.48.copyload14333
  %add7015 = fadd double %add6020, %mul7012
  %234 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.324.48.copyload14350
  %add7026 = fsub double %add7015, %234
  %mul7033 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.324.48.copyload14350
  %add7036 = fadd double %add6040, %mul7033
  %mul7043 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.270.48.copyload14333
  %add7046 = fadd double %mul7043, %add7036
  %mul7053 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.270.48.copyload14333
  %add7056 = fadd double %add6061, %mul7053
  %235 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.324.48.copyload14350
  %add7067 = fsub double %add7056, %235
  %mul7074 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.324.48.copyload14350
  %add7077 = fadd double %add6081, %mul7074
  %mul7084 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.270.48.copyload14333
  %add7087 = fadd double %mul7084, %add7077
  %mul7094 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.360.64.copyload14435
  %add7097 = fadd double %add6102, %mul7094
  %236 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.414.64.copyload14452
  %add7108 = fsub double %add7097, %236
  %mul7115 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.414.64.copyload14452
  %add7118 = fadd double %add6122, %mul7115
  %mul7125 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.360.64.copyload14435
  %add7128 = fadd double %mul7125, %add7118
  %mul7135 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.360.64.copyload14435
  %add7138 = fadd double %add6143, %mul7135
  %237 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.414.64.copyload14452
  %add7149 = fsub double %add7138, %237
  %mul7156 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.414.64.copyload14452
  %add7159 = fadd double %add6163, %mul7156
  %mul7166 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.360.64.copyload14435
  %add7169 = fadd double %mul7166, %add7159
  %mul7176 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.360.64.copyload14435
  %add7179 = fadd double %add6184, %mul7176
  %238 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.414.64.copyload14452
  %add7190 = fsub double %add7179, %238
  %mul7197 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.414.64.copyload14452
  %add7200 = fadd double %add6204, %mul7197
  %mul7207 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.360.64.copyload14435
  %add7210 = fadd double %mul7207, %add7200
  %mul7217 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.360.64.copyload14435
  %add7220 = fadd double %add6225, %mul7217
  %239 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.414.64.copyload14452
  %add7231 = fsub double %add7220, %239
  %mul7238 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.414.64.copyload14452
  %add7241 = fadd double %add6245, %mul7238
  %mul7248 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.360.64.copyload14435
  %add7251 = fadd double %mul7248, %add7241
  %mul7258 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.450.80.copyload14557
  %add7261 = fadd double %add6266, %mul7258
  %240 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.504.80.copyload14574
  %add7272 = fsub double %add7261, %240
  %mul7279 = fmul double %rA.sroa.0.0.copyload14722, %rB.sroa.504.80.copyload14574
  %add7282 = fadd double %add6286, %mul7279
  %mul7289 = fmul double %rA.sroa.117.0.copyload14739, %rB.sroa.450.80.copyload14557
  %add7292 = fadd double %mul7289, %add7282
  %mul7299 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.450.80.copyload14557
  %add7302 = fadd double %add6307, %mul7299
  %241 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.504.80.copyload14574
  %add7313 = fsub double %add7302, %241
  %mul7320 = fmul double %rA.sroa.225.16.copyload14980, %rB.sroa.504.80.copyload14574
  %add7323 = fadd double %add6327, %mul7320
  %mul7330 = fmul double %rA.sroa.342.16.copyload14997, %rB.sroa.450.80.copyload14557
  %add7333 = fadd double %mul7330, %add7323
  %mul7340 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.450.80.copyload14557
  %add7343 = fadd double %add6348, %mul7340
  %242 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.504.80.copyload14574
  %add7354 = fsub double %add7343, %242
  %mul7361 = fmul double %rA.sroa.450.32.copyload15227, %rB.sroa.504.80.copyload14574
  %add7364 = fadd double %add6368, %mul7361
  %mul7371 = fmul double %rA.sroa.567.32.copyload15244, %rB.sroa.450.80.copyload14557
  %add7374 = fadd double %mul7371, %add7364
  %mul7381 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.450.80.copyload14557
  %add7384 = fadd double %add6389, %mul7381
  %243 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.504.80.copyload14574
  %add7395 = fsub double %add7384, %243
  %mul7402 = fmul double %rA.sroa.675.48.copyload15464, %rB.sroa.504.80.copyload14574
  %add7405 = fadd double %add6409, %mul7402
  %mul7412 = fmul double %rA.sroa.792.48.copyload15481, %rB.sroa.450.80.copyload14557
  %add7415 = fadd double %mul7412, %add7405
  %rA.sroa.0.0.copyload14720 = load double, double* %rA.sroa.0.0..sroa_idx14719, align 8
  %rA.sroa.117.0.copyload14737 = load double, double* %rA.sroa.117.0..sroa_idx14736, align 8
  %rA.sroa.225.16.copyload14978 = load double, double* %rA.sroa.225.16.arrayidx7420.sroa_idx14977, align 8
  %rA.sroa.342.16.copyload14995 = load double, double* %rA.sroa.342.16.arrayidx7420.sroa_idx14994, align 8
  %rA.sroa.450.32.copyload15225 = load double, double* %rA.sroa.450.32.arrayidx7422.sroa_idx15224, align 8
  %rA.sroa.567.32.copyload15242 = load double, double* %rA.sroa.567.32.arrayidx7422.sroa_idx15241, align 8
  %rA.sroa.675.48.copyload15462 = load double, double* %rA.sroa.675.48.arrayidx7424.sroa_idx15461, align 8
  %rA.sroa.792.48.copyload15479 = load double, double* %rA.sroa.792.48.arrayidx7424.sroa_idx15478, align 8
  %rB.sroa.0.0.copyload13986 = load double, double* %rB.sroa.0.0..sroa_idx13985, align 8
  %rB.sroa.54.0.copyload14003 = load double, double* %rB.sroa.54.0..sroa_idx14002, align 8
  %rB.sroa.90.16.copyload14107 = load double, double* %rB.sroa.90.16.arrayidx7428.sroa_idx14106, align 8
  %rB.sroa.144.16.copyload14124 = load double, double* %rB.sroa.144.16.arrayidx7428.sroa_idx14123, align 8
  %rB.sroa.180.32.copyload14211 = load double, double* %rB.sroa.180.32.arrayidx7430.sroa_idx14210, align 8
  %rB.sroa.234.32.copyload14228 = load double, double* %rB.sroa.234.32.arrayidx7430.sroa_idx14227, align 8
  %rB.sroa.270.48.copyload14335 = load double, double* %rB.sroa.270.48.arrayidx7432.sroa_idx14334, align 8
  %rB.sroa.324.48.copyload14352 = load double, double* %rB.sroa.324.48.arrayidx7432.sroa_idx14351, align 8
  %rB.sroa.360.64.copyload = load double, double* %rB.sroa.360.64..sroa_idx, align 8
  %rB.sroa.414.64.copyload = load double, double* %rB.sroa.414.64..sroa_idx14448, align 8
  %rB.sroa.450.80.copyload14559 = load double, double* %rB.sroa.450.80..sroa_idx14558, align 8
  %rB.sroa.504.80.copyload14576 = load double, double* %rB.sroa.504.80..sroa_idx14575, align 8
  %mul7446 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.0.0.copyload13986
  %add7449 = fadd double %add6452, %mul7446
  %244 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.54.0.copyload14003
  %add7460 = fsub double %add7449, %244
  %mul7467 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.54.0.copyload14003
  %add7470 = fadd double %add6472, %mul7467
  %mul7477 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.0.0.copyload13986
  %add7480 = fadd double %mul7477, %add7470
  %mul7487 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.0.0.copyload13986
  %add7490 = fadd double %add6493, %mul7487
  %245 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.54.0.copyload14003
  %add7501 = fsub double %add7490, %245
  %mul7508 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.54.0.copyload14003
  %add7511 = fadd double %add6513, %mul7508
  %mul7518 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.0.0.copyload13986
  %add7521 = fadd double %mul7518, %add7511
  %mul7528 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.0.0.copyload13986
  %add7531 = fadd double %add6534, %mul7528
  %246 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.54.0.copyload14003
  %add7542 = fsub double %add7531, %246
  %mul7549 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.54.0.copyload14003
  %add7552 = fadd double %add6554, %mul7549
  %mul7559 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.0.0.copyload13986
  %add7562 = fadd double %mul7559, %add7552
  %mul7569 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.0.0.copyload13986
  %add7572 = fadd double %add6575, %mul7569
  %247 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.54.0.copyload14003
  %add7583 = fsub double %add7572, %247
  %mul7590 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.54.0.copyload14003
  %add7593 = fadd double %add6595, %mul7590
  %mul7600 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.0.0.copyload13986
  %add7603 = fadd double %mul7600, %add7593
  %mul7610 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.90.16.copyload14107
  %add7613 = fadd double %add6616, %mul7610
  %248 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.144.16.copyload14124
  %add7624 = fsub double %add7613, %248
  %mul7631 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.144.16.copyload14124
  %add7634 = fadd double %add6636, %mul7631
  %mul7641 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.90.16.copyload14107
  %add7644 = fadd double %mul7641, %add7634
  %mul7651 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.90.16.copyload14107
  %add7654 = fadd double %add6657, %mul7651
  %249 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.144.16.copyload14124
  %add7665 = fsub double %add7654, %249
  %mul7672 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.144.16.copyload14124
  %add7675 = fadd double %add6677, %mul7672
  %mul7682 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.90.16.copyload14107
  %add7685 = fadd double %mul7682, %add7675
  %mul7692 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.90.16.copyload14107
  %add7695 = fadd double %add6698, %mul7692
  %250 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.144.16.copyload14124
  %add7706 = fsub double %add7695, %250
  %mul7713 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.144.16.copyload14124
  %add7716 = fadd double %add6718, %mul7713
  %mul7723 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.90.16.copyload14107
  %add7726 = fadd double %mul7723, %add7716
  %mul7733 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.90.16.copyload14107
  %add7736 = fadd double %add6739, %mul7733
  %251 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.144.16.copyload14124
  %add7747 = fsub double %add7736, %251
  %mul7754 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.144.16.copyload14124
  %add7757 = fadd double %add6759, %mul7754
  %mul7764 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.90.16.copyload14107
  %add7767 = fadd double %mul7764, %add7757
  %mul7774 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.180.32.copyload14211
  %add7777 = fadd double %add6780, %mul7774
  %252 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.234.32.copyload14228
  %add7788 = fsub double %add7777, %252
  %mul7795 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.234.32.copyload14228
  %add7798 = fadd double %add6800, %mul7795
  %mul7805 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.180.32.copyload14211
  %add7808 = fadd double %mul7805, %add7798
  %mul7815 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.180.32.copyload14211
  %add7818 = fadd double %add6821, %mul7815
  %253 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.234.32.copyload14228
  %add7829 = fsub double %add7818, %253
  %mul7836 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.234.32.copyload14228
  %add7839 = fadd double %add6841, %mul7836
  %mul7846 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.180.32.copyload14211
  %add7849 = fadd double %mul7846, %add7839
  %mul7856 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.180.32.copyload14211
  %add7859 = fadd double %add6862, %mul7856
  %254 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.234.32.copyload14228
  %add7870 = fsub double %add7859, %254
  %mul7877 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.234.32.copyload14228
  %add7880 = fadd double %add6882, %mul7877
  %mul7887 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.180.32.copyload14211
  %add7890 = fadd double %mul7887, %add7880
  %mul7897 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.180.32.copyload14211
  %add7900 = fadd double %add6903, %mul7897
  %255 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.234.32.copyload14228
  %add7911 = fsub double %add7900, %255
  %mul7918 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.234.32.copyload14228
  %add7921 = fadd double %add6923, %mul7918
  %mul7928 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.180.32.copyload14211
  %add7931 = fadd double %mul7928, %add7921
  %mul7938 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.270.48.copyload14335
  %add7941 = fadd double %add6944, %mul7938
  %256 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.324.48.copyload14352
  %add7952 = fsub double %add7941, %256
  %mul7959 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.324.48.copyload14352
  %add7962 = fadd double %add6964, %mul7959
  %mul7969 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.270.48.copyload14335
  %add7972 = fadd double %mul7969, %add7962
  %mul7979 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.270.48.copyload14335
  %add7982 = fadd double %add6985, %mul7979
  %257 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.324.48.copyload14352
  %add7993 = fsub double %add7982, %257
  %mul8000 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.324.48.copyload14352
  %add8003 = fadd double %add7005, %mul8000
  %mul8010 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.270.48.copyload14335
  %add8013 = fadd double %mul8010, %add8003
  %mul8020 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.270.48.copyload14335
  %add8023 = fadd double %add7026, %mul8020
  %258 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.324.48.copyload14352
  %add8034 = fsub double %add8023, %258
  %mul8041 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.324.48.copyload14352
  %add8044 = fadd double %add7046, %mul8041
  %mul8051 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.270.48.copyload14335
  %add8054 = fadd double %mul8051, %add8044
  %mul8061 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.270.48.copyload14335
  %add8064 = fadd double %add7067, %mul8061
  %259 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.324.48.copyload14352
  %add8075 = fsub double %add8064, %259
  %mul8082 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.324.48.copyload14352
  %add8085 = fadd double %add7087, %mul8082
  %mul8092 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.270.48.copyload14335
  %add8095 = fadd double %mul8092, %add8085
  %mul8102 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.360.64.copyload
  %add8105 = fadd double %add7108, %mul8102
  %260 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.414.64.copyload
  %add8116 = fsub double %add8105, %260
  %mul8123 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.414.64.copyload
  %add8126 = fadd double %add7128, %mul8123
  %mul8133 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.360.64.copyload
  %add8136 = fadd double %mul8133, %add8126
  %mul8143 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.360.64.copyload
  %add8146 = fadd double %add7149, %mul8143
  %261 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.414.64.copyload
  %add8157 = fsub double %add8146, %261
  %mul8164 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.414.64.copyload
  %add8167 = fadd double %add7169, %mul8164
  %mul8174 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.360.64.copyload
  %add8177 = fadd double %mul8174, %add8167
  %mul8184 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.360.64.copyload
  %add8187 = fadd double %add7190, %mul8184
  %262 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.414.64.copyload
  %add8198 = fsub double %add8187, %262
  %mul8205 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.414.64.copyload
  %add8208 = fadd double %add7210, %mul8205
  %mul8215 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.360.64.copyload
  %add8218 = fadd double %mul8215, %add8208
  %mul8225 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.360.64.copyload
  %add8228 = fadd double %add7231, %mul8225
  %263 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.414.64.copyload
  %add8239 = fsub double %add8228, %263
  %mul8246 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.414.64.copyload
  %add8249 = fadd double %add7251, %mul8246
  %mul8256 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.360.64.copyload
  %add8259 = fadd double %mul8256, %add8249
  %mul8266 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.450.80.copyload14559
  %add8269 = fadd double %add7272, %mul8266
  %264 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.504.80.copyload14576
  %add8280 = fsub double %add8269, %264
  %mul8287 = fmul double %rA.sroa.0.0.copyload14720, %rB.sroa.504.80.copyload14576
  %add8290 = fadd double %add7292, %mul8287
  %mul8297 = fmul double %rA.sroa.117.0.copyload14737, %rB.sroa.450.80.copyload14559
  %add8300 = fadd double %mul8297, %add8290
  %mul8307 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.450.80.copyload14559
  %add8310 = fadd double %add7313, %mul8307
  %265 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.504.80.copyload14576
  %add8321 = fsub double %add8310, %265
  %mul8328 = fmul double %rA.sroa.225.16.copyload14978, %rB.sroa.504.80.copyload14576
  %add8331 = fadd double %add7333, %mul8328
  %mul8338 = fmul double %rA.sroa.342.16.copyload14995, %rB.sroa.450.80.copyload14559
  %add8341 = fadd double %mul8338, %add8331
  %mul8348 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.450.80.copyload14559
  %add8351 = fadd double %add7354, %mul8348
  %266 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.504.80.copyload14576
  %add8362 = fsub double %add8351, %266
  %mul8369 = fmul double %rA.sroa.450.32.copyload15225, %rB.sroa.504.80.copyload14576
  %add8372 = fadd double %add7374, %mul8369
  %mul8379 = fmul double %rA.sroa.567.32.copyload15242, %rB.sroa.450.80.copyload14559
  %add8382 = fadd double %mul8379, %add8372
  %mul8389 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.450.80.copyload14559
  %add8392 = fadd double %add7395, %mul8389
  %267 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.504.80.copyload14576
  %add8403 = fsub double %add8392, %267
  %mul8410 = fmul double %rA.sroa.675.48.copyload15462, %rB.sroa.504.80.copyload14576
  %add8413 = fadd double %add7415, %mul8410
  %mul8420 = fmul double %rA.sroa.792.48.copyload15479, %rB.sroa.450.80.copyload14559
  %add8423 = fadd double %mul8420, %add8413
  %cmp280 = icmp eq i32 %dec17184, 0
  br i1 %cmp280, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %globalReadA_0_0_0_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr247, %entry ], [ %add.ptr295.add.ptr291, %while.body ]
  %globalReadA_0_0_1_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr250, %entry ], [ %add.ptr30216785.add.ptr29616781, %while.body ]
  %globalReadA_0_0_2_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr253, %entry ], [ %add.ptr31016793.add.ptr30416789, %while.body ]
  %globalReadA_0_0_3_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr256, %entry ], [ %add.ptr31816803.add.ptr31216799, %while.body ]
  %globalReadB_0_0_0_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr259, %entry ], [ %add.ptr32616815.add.ptr32016811, %while.body ]
  %globalReadB_1_0_0_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr262, %entry ], [ %add.ptr33416829.add.ptr32816825, %while.body ]
  %globalReadB_2_0_0_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr265, %entry ], [ %add.ptr34216845.add.ptr33616841, %while.body ]
  %globalReadB_0_0_1_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr268, %entry ], [ %add.ptr35016863.add.ptr34416859, %while.body ]
  %globalReadB_1_0_1_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr271, %entry ], [ %add.ptr35816883.add.ptr35216879, %while.body ]
  %globalReadB_2_0_1_0.0.lcssa = phi %struct.tensile_complex* [ %add.ptr274, %entry ], [ %add.ptr36616905.add.ptr36016901, %while.body ]
  %.lcssa17072 = phi double [ 0.000000e+00, %entry ], [ %add7460, %while.body ]
  %rC.sroa.36.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7480, %while.body ]
  %.lcssa17071 = phi double [ 0.000000e+00, %entry ], [ %add7501, %while.body ]
  %rC.sroa.107.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7521, %while.body ]
  %.lcssa17070 = phi double [ 0.000000e+00, %entry ], [ %add7542, %while.body ]
  %rC.sroa.178.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7562, %while.body ]
  %.lcssa17069 = phi double [ 0.000000e+00, %entry ], [ %add7583, %while.body ]
  %rC.sroa.249.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7603, %while.body ]
  %.lcssa17068 = phi double [ 0.000000e+00, %entry ], [ %add7624, %while.body ]
  %rC.sroa.320.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7644, %while.body ]
  %.lcssa17067 = phi double [ 0.000000e+00, %entry ], [ %add7665, %while.body ]
  %rC.sroa.391.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7685, %while.body ]
  %.lcssa17066 = phi double [ 0.000000e+00, %entry ], [ %add7706, %while.body ]
  %rC.sroa.462.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7726, %while.body ]
  %.lcssa17065 = phi double [ 0.000000e+00, %entry ], [ %add7747, %while.body ]
  %rC.sroa.533.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7767, %while.body ]
  %.lcssa17064 = phi double [ 0.000000e+00, %entry ], [ %add7788, %while.body ]
  %rC.sroa.604.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7808, %while.body ]
  %.lcssa17063 = phi double [ 0.000000e+00, %entry ], [ %add7829, %while.body ]
  %rC.sroa.675.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7849, %while.body ]
  %.lcssa17062 = phi double [ 0.000000e+00, %entry ], [ %add7870, %while.body ]
  %rC.sroa.746.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7890, %while.body ]
  %.lcssa17061 = phi double [ 0.000000e+00, %entry ], [ %add7911, %while.body ]
  %rC.sroa.817.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7931, %while.body ]
  %.lcssa17060 = phi double [ 0.000000e+00, %entry ], [ %add7952, %while.body ]
  %rC.sroa.888.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7972, %while.body ]
  %.lcssa17059 = phi double [ 0.000000e+00, %entry ], [ %add7993, %while.body ]
  %rC.sroa.959.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8013, %while.body ]
  %.lcssa17058 = phi double [ 0.000000e+00, %entry ], [ %add8034, %while.body ]
  %rC.sroa.1030.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8054, %while.body ]
  %.lcssa17057 = phi double [ 0.000000e+00, %entry ], [ %add8075, %while.body ]
  %rC.sroa.1101.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8095, %while.body ]
  %.lcssa17056 = phi double [ 0.000000e+00, %entry ], [ %add8116, %while.body ]
  %rC.sroa.1172.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8136, %while.body ]
  %.lcssa17055 = phi double [ 0.000000e+00, %entry ], [ %add8157, %while.body ]
  %rC.sroa.1243.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8177, %while.body ]
  %.lcssa17054 = phi double [ 0.000000e+00, %entry ], [ %add8198, %while.body ]
  %rC.sroa.1314.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8218, %while.body ]
  %.lcssa17053 = phi double [ 0.000000e+00, %entry ], [ %add8239, %while.body ]
  %rC.sroa.1385.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8259, %while.body ]
  %.lcssa17052 = phi double [ 0.000000e+00, %entry ], [ %add8280, %while.body ]
  %rC.sroa.1456.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8300, %while.body ]
  %.lcssa17051 = phi double [ 0.000000e+00, %entry ], [ %add8321, %while.body ]
  %rC.sroa.1527.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8341, %while.body ]
  %.lcssa17050 = phi double [ 0.000000e+00, %entry ], [ %add8362, %while.body ]
  %rC.sroa.1598.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8382, %while.body ]
  %.lcssa17049 = phi double [ 0.000000e+00, %entry ], [ %add8403, %while.body ]
  %rC.sroa.1669.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8423, %while.body ]
  %rem8426 = and i32 %sizeL, 7
  %sub8431 = sub i32 %div244, %shl
  %conv8432 = zext i32 %sub8431 to i64
  %mul8433 = mul nsw i64 %mul145, %conv8432
  %mul8453 = mul nsw i64 %mul147, %conv8432
  %cmp8483 = icmp ult i32 %div22, %rem8426
  br i1 %cmp8483, label %cond.false8485, label %cond.end8487

cond.false8485:                                   ; preds = %while.end
  %ref.tmp8480.sroa.3.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_0_0.0.lcssa, i64 %mul8433, i32 1
  %ref.tmp8480.sroa.0.0..sroa_cast = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_0_0.0.lcssa, i64 %mul8433, i32 0
  %ref.tmp8480.sroa.0.0.copyload = load double, double* %ref.tmp8480.sroa.0.0..sroa_cast, align 8
  %ref.tmp8480.sroa.3.0.copyload = load double, double* %ref.tmp8480.sroa.3.0..sroa_idx, align 8
  br label %cond.end8487

cond.end8487:                                     ; preds = %cond.false8485, %while.end
  %ref.tmp8480.sroa.3.0 = phi double [ %ref.tmp8480.sroa.3.0.copyload, %cond.false8485 ], [ 0.000000e+00, %while.end ]
  %ref.tmp8480.sroa.0.0 = phi double [ %ref.tmp8480.sroa.0.0.copyload, %cond.false8485 ], [ 0.000000e+00, %while.end ]
  %cmp8491 = icmp ult i32 %add37, %rem8426
  br i1 %cmp8491, label %cond.false8493, label %cond.end8495

cond.false8493:                                   ; preds = %cond.end8487
  %ref.tmp8488.sroa.3.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_1_0.0.lcssa, i64 %mul8433, i32 1
  %ref.tmp8488.sroa.0.0..sroa_cast = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_1_0.0.lcssa, i64 %mul8433, i32 0
  %ref.tmp8488.sroa.0.0.copyload = load double, double* %ref.tmp8488.sroa.0.0..sroa_cast, align 8
  %ref.tmp8488.sroa.3.0.copyload = load double, double* %ref.tmp8488.sroa.3.0..sroa_idx, align 8
  br label %cond.end8495

cond.end8495:                                     ; preds = %cond.false8493, %cond.end8487
  %ref.tmp8488.sroa.3.0 = phi double [ %ref.tmp8488.sroa.3.0.copyload, %cond.false8493 ], [ 0.000000e+00, %cond.end8487 ]
  %ref.tmp8488.sroa.0.0 = phi double [ %ref.tmp8488.sroa.0.0.copyload, %cond.false8493 ], [ 0.000000e+00, %cond.end8487 ]
  %cmp8499 = icmp ult i32 %add39, %rem8426
  br i1 %cmp8499, label %cond.false8501, label %cond.end8503

cond.false8501:                                   ; preds = %cond.end8495
  %ref.tmp8496.sroa.3.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_2_0.0.lcssa, i64 %mul8433, i32 1
  %ref.tmp8496.sroa.0.0..sroa_cast = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_2_0.0.lcssa, i64 %mul8433, i32 0
  %ref.tmp8496.sroa.0.0.copyload = load double, double* %ref.tmp8496.sroa.0.0..sroa_cast, align 8
  %ref.tmp8496.sroa.3.0.copyload = load double, double* %ref.tmp8496.sroa.3.0..sroa_idx, align 8
  br label %cond.end8503

cond.end8503:                                     ; preds = %cond.false8501, %cond.end8495
  %ref.tmp8496.sroa.3.0 = phi double [ %ref.tmp8496.sroa.3.0.copyload, %cond.false8501 ], [ 0.000000e+00, %cond.end8495 ]
  %ref.tmp8496.sroa.0.0 = phi double [ %ref.tmp8496.sroa.0.0.copyload, %cond.false8501 ], [ 0.000000e+00, %cond.end8495 ]
  %cmp8507 = icmp ult i32 %add41, %rem8426
  br i1 %cmp8507, label %cond.false8509, label %cond.end8511

cond.false8509:                                   ; preds = %cond.end8503
  %ref.tmp8504.sroa.3.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_3_0.0.lcssa, i64 %mul8433, i32 1
  %ref.tmp8504.sroa.0.0..sroa_cast = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadA_0_0_3_0.0.lcssa, i64 %mul8433, i32 0
  %ref.tmp8504.sroa.0.0.copyload = load double, double* %ref.tmp8504.sroa.0.0..sroa_cast, align 8
  %ref.tmp8504.sroa.3.0.copyload = load double, double* %ref.tmp8504.sroa.3.0..sroa_idx, align 8
  br label %cond.end8511

cond.end8511:                                     ; preds = %cond.false8509, %cond.end8503
  %ref.tmp8504.sroa.3.0 = phi double [ %ref.tmp8504.sroa.3.0.copyload, %cond.false8509 ], [ 0.000000e+00, %cond.end8503 ]
  %ref.tmp8504.sroa.0.0 = phi double [ %ref.tmp8504.sroa.0.0.copyload, %cond.false8509 ], [ 0.000000e+00, %cond.end8503 ]
  %cmp8515 = icmp ult i32 %div23, %rem8426
  br i1 %cmp8515, label %cond.false8533, label %cond.end8535

cond.false8533:                                   ; preds = %cond.end8511
  %ref.tmp8512.sroa.3.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_0_0_0_0.0.lcssa, i64 %mul8453, i32 1
  %ref.tmp8512.sroa.0.0..sroa_cast = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_0_0_0_0.0.lcssa, i64 %mul8453, i32 0
  %ref.tmp8512.sroa.0.0.copyload = load double, double* %ref.tmp8512.sroa.0.0..sroa_cast, align 8
  %ref.tmp8512.sroa.3.0.copyload = load double, double* %ref.tmp8512.sroa.3.0..sroa_idx, align 8
  %ref.tmp8520.sroa.0.0..sroa_cast16925 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_1_0_0_0.0.lcssa, i64 %mul8453, i32 0
  %ref.tmp8520.sroa.3.0..sroa_idx16926 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_1_0_0_0.0.lcssa, i64 %mul8453, i32 1
  %ref.tmp8520.sroa.0.0.copyload = load double, double* %ref.tmp8520.sroa.0.0..sroa_cast16925, align 8
  %ref.tmp8520.sroa.3.0.copyload = load double, double* %ref.tmp8520.sroa.3.0..sroa_idx16926, align 8
  %ref.tmp8528.sroa.0.0..sroa_cast16934 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_2_0_0_0.0.lcssa, i64 %mul8453, i32 0
  %ref.tmp8528.sroa.3.0..sroa_idx16935 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_2_0_0_0.0.lcssa, i64 %mul8453, i32 1
  %ref.tmp8528.sroa.0.0.copyload = load double, double* %ref.tmp8528.sroa.0.0..sroa_cast16934, align 8
  %ref.tmp8528.sroa.3.0.copyload = load double, double* %ref.tmp8528.sroa.3.0..sroa_idx16935, align 8
  br label %cond.end8535

cond.end8535:                                     ; preds = %cond.false8533, %cond.end8511
  %ref.tmp8520.sroa.0.016943 = phi double [ %ref.tmp8520.sroa.0.0.copyload, %cond.false8533 ], [ 0.000000e+00, %cond.end8511 ]
  %ref.tmp8520.sroa.3.016941 = phi double [ %ref.tmp8520.sroa.3.0.copyload, %cond.false8533 ], [ 0.000000e+00, %cond.end8511 ]
  %ref.tmp8512.sroa.3.01692816939 = phi double [ %ref.tmp8512.sroa.3.0.copyload, %cond.false8533 ], [ 0.000000e+00, %cond.end8511 ]
  %ref.tmp8512.sroa.0.01693016937 = phi double [ %ref.tmp8512.sroa.0.0.copyload, %cond.false8533 ], [ 0.000000e+00, %cond.end8511 ]
  %ref.tmp8528.sroa.3.0 = phi double [ %ref.tmp8528.sroa.3.0.copyload, %cond.false8533 ], [ 0.000000e+00, %cond.end8511 ]
  %ref.tmp8528.sroa.0.0 = phi double [ %ref.tmp8528.sroa.0.0.copyload, %cond.false8533 ], [ 0.000000e+00, %cond.end8511 ]
  %cmp8539 = icmp ult i32 %add45, %rem8426
  br i1 %cmp8539, label %cond.false8557, label %cond.end8559

cond.false8557:                                   ; preds = %cond.end8535
  %ref.tmp8536.sroa.3.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_0_0_1_0.0.lcssa, i64 %mul8453, i32 1
  %ref.tmp8536.sroa.0.0..sroa_cast = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_0_0_1_0.0.lcssa, i64 %mul8453, i32 0
  %ref.tmp8536.sroa.0.0.copyload = load double, double* %ref.tmp8536.sroa.0.0..sroa_cast, align 8
  %ref.tmp8536.sroa.3.0.copyload = load double, double* %ref.tmp8536.sroa.3.0..sroa_idx, align 8
  %ref.tmp8544.sroa.0.0..sroa_cast16947 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_1_0_1_0.0.lcssa, i64 %mul8453, i32 0
  %ref.tmp8544.sroa.3.0..sroa_idx16948 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_1_0_1_0.0.lcssa, i64 %mul8453, i32 1
  %ref.tmp8544.sroa.0.0.copyload = load double, double* %ref.tmp8544.sroa.0.0..sroa_cast16947, align 8
  %ref.tmp8544.sroa.3.0.copyload = load double, double* %ref.tmp8544.sroa.3.0..sroa_idx16948, align 8
  %ref.tmp8552.sroa.0.0..sroa_cast16956 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_2_0_1_0.0.lcssa, i64 %mul8453, i32 0
  %ref.tmp8552.sroa.3.0..sroa_idx16957 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %globalReadB_2_0_1_0.0.lcssa, i64 %mul8453, i32 1
  %ref.tmp8552.sroa.0.0.copyload = load double, double* %ref.tmp8552.sroa.0.0..sroa_cast16956, align 8
  %ref.tmp8552.sroa.3.0.copyload = load double, double* %ref.tmp8552.sroa.3.0..sroa_idx16957, align 8
  br label %cond.end8559

cond.end8559:                                     ; preds = %cond.false8557, %cond.end8535
  %ref.tmp8544.sroa.0.016965 = phi double [ %ref.tmp8544.sroa.0.0.copyload, %cond.false8557 ], [ 0.000000e+00, %cond.end8535 ]
  %ref.tmp8544.sroa.3.016963 = phi double [ %ref.tmp8544.sroa.3.0.copyload, %cond.false8557 ], [ 0.000000e+00, %cond.end8535 ]
  %ref.tmp8536.sroa.3.01695016961 = phi double [ %ref.tmp8536.sroa.3.0.copyload, %cond.false8557 ], [ 0.000000e+00, %cond.end8535 ]
  %ref.tmp8536.sroa.0.01695216959 = phi double [ %ref.tmp8536.sroa.0.0.copyload, %cond.false8557 ], [ 0.000000e+00, %cond.end8535 ]
  %ref.tmp8552.sroa.3.0 = phi double [ %ref.tmp8552.sroa.3.0.copyload, %cond.false8557 ], [ 0.000000e+00, %cond.end8535 ]
  %ref.tmp8552.sroa.0.0 = phi double [ %ref.tmp8552.sroa.0.0.copyload, %cond.false8557 ], [ 0.000000e+00, %cond.end8535 ]
  tail call void @hc_barrier(i32 1) #10
  %a_0_0_0_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr179, i64 0, i32 0
  store double %ref.tmp8480.sroa.0.0, double* %a_0_0_0_0.sroa.0.0..sroa_idx, align 8
  %a_0_0_0_0.sroa.4.0..sroa_idx13934 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr179, i64 0, i32 1
  store double %ref.tmp8480.sroa.3.0, double* %a_0_0_0_0.sroa.4.0..sroa_idx13934, align 8
  %a_0_0_1_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr181, i64 0, i32 0
  store double %ref.tmp8488.sroa.0.0, double* %a_0_0_1_0.sroa.0.0..sroa_idx, align 8
  %a_0_0_1_0.sroa.4.0..sroa_idx13925 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr181, i64 0, i32 1
  store double %ref.tmp8488.sroa.3.0, double* %a_0_0_1_0.sroa.4.0..sroa_idx13925, align 8
  %a_0_0_2_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr183, i64 0, i32 0
  store double %ref.tmp8496.sroa.0.0, double* %a_0_0_2_0.sroa.0.0..sroa_idx, align 8
  %a_0_0_2_0.sroa.4.0..sroa_idx13916 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr183, i64 0, i32 1
  store double %ref.tmp8496.sroa.3.0, double* %a_0_0_2_0.sroa.4.0..sroa_idx13916, align 8
  %a_0_0_3_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr185, i64 0, i32 0
  store double %ref.tmp8504.sroa.0.0, double* %a_0_0_3_0.sroa.0.0..sroa_idx, align 8
  %a_0_0_3_0.sroa.4.0..sroa_idx13907 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr185, i64 0, i32 1
  store double %ref.tmp8504.sroa.3.0, double* %a_0_0_3_0.sroa.4.0..sroa_idx13907, align 8
  %b_0_0_0_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr187, i64 0, i32 0
  store double %ref.tmp8512.sroa.0.01693016937, double* %b_0_0_0_0.sroa.0.0..sroa_idx, align 8
  %b_0_0_0_0.sroa.4.0..sroa_idx13898 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr187, i64 0, i32 1
  store double %ref.tmp8512.sroa.3.01692816939, double* %b_0_0_0_0.sroa.4.0..sroa_idx13898, align 8
  %b_1_0_0_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr189, i64 0, i32 0
  store double %ref.tmp8520.sroa.0.016943, double* %b_1_0_0_0.sroa.0.0..sroa_idx, align 8
  %b_1_0_0_0.sroa.4.0..sroa_idx13889 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr189, i64 0, i32 1
  store double %ref.tmp8520.sroa.3.016941, double* %b_1_0_0_0.sroa.4.0..sroa_idx13889, align 8
  %b_2_0_0_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr191, i64 0, i32 0
  store double %ref.tmp8528.sroa.0.0, double* %b_2_0_0_0.sroa.0.0..sroa_idx, align 8
  %b_2_0_0_0.sroa.4.0..sroa_idx13880 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr191, i64 0, i32 1
  store double %ref.tmp8528.sroa.3.0, double* %b_2_0_0_0.sroa.4.0..sroa_idx13880, align 8
  %b_0_0_1_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr193, i64 0, i32 0
  store double %ref.tmp8536.sroa.0.01695216959, double* %b_0_0_1_0.sroa.0.0..sroa_idx, align 8
  %b_0_0_1_0.sroa.4.0..sroa_idx13871 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr193, i64 0, i32 1
  store double %ref.tmp8536.sroa.3.01695016961, double* %b_0_0_1_0.sroa.4.0..sroa_idx13871, align 8
  %b_1_0_1_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr195, i64 0, i32 0
  store double %ref.tmp8544.sroa.0.016965, double* %b_1_0_1_0.sroa.0.0..sroa_idx, align 8
  %b_1_0_1_0.sroa.4.0..sroa_idx13862 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr195, i64 0, i32 1
  store double %ref.tmp8544.sroa.3.016963, double* %b_1_0_1_0.sroa.4.0..sroa_idx13862, align 8
  %b_2_0_1_0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr197, i64 0, i32 0
  store double %ref.tmp8552.sroa.0.0, double* %b_2_0_1_0.sroa.0.0..sroa_idx, align 8
  %b_2_0_1_0.sroa.4.0..sroa_idx13853 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %add.ptr197, i64 0, i32 1
  store double %ref.tmp8552.sroa.3.0, double* %b_2_0_1_0.sroa.4.0..sroa_idx13853, align 8
  tail call void @hc_barrier(i32 1) #10
  %cmp859217073 = icmp eq i32 %rem8426, 0
  br i1 %cmp859217073, label %while.end9600, label %while.body8593

while.body8593:                                   ; preds = %while.body8593, %cond.end8559
  %rC.sroa.1669.117100 = phi double [ %add9597, %while.body8593 ], [ %rC.sroa.1669.0.lcssa, %cond.end8559 ]
  %268 = phi double [ %add9577, %while.body8593 ], [ %.lcssa17049, %cond.end8559 ]
  %rC.sroa.1598.117099 = phi double [ %add9556, %while.body8593 ], [ %rC.sroa.1598.0.lcssa, %cond.end8559 ]
  %269 = phi double [ %add9536, %while.body8593 ], [ %.lcssa17050, %cond.end8559 ]
  %rC.sroa.1527.117098 = phi double [ %add9515, %while.body8593 ], [ %rC.sroa.1527.0.lcssa, %cond.end8559 ]
  %270 = phi double [ %add9495, %while.body8593 ], [ %.lcssa17051, %cond.end8559 ]
  %rC.sroa.1456.117097 = phi double [ %add9474, %while.body8593 ], [ %rC.sroa.1456.0.lcssa, %cond.end8559 ]
  %271 = phi double [ %add9454, %while.body8593 ], [ %.lcssa17052, %cond.end8559 ]
  %rC.sroa.1385.117096 = phi double [ %add9433, %while.body8593 ], [ %rC.sroa.1385.0.lcssa, %cond.end8559 ]
  %272 = phi double [ %add9413, %while.body8593 ], [ %.lcssa17053, %cond.end8559 ]
  %rC.sroa.1314.117095 = phi double [ %add9392, %while.body8593 ], [ %rC.sroa.1314.0.lcssa, %cond.end8559 ]
  %273 = phi double [ %add9372, %while.body8593 ], [ %.lcssa17054, %cond.end8559 ]
  %rC.sroa.1243.117094 = phi double [ %add9351, %while.body8593 ], [ %rC.sroa.1243.0.lcssa, %cond.end8559 ]
  %274 = phi double [ %add9331, %while.body8593 ], [ %.lcssa17055, %cond.end8559 ]
  %rC.sroa.1172.117093 = phi double [ %add9310, %while.body8593 ], [ %rC.sroa.1172.0.lcssa, %cond.end8559 ]
  %275 = phi double [ %add9290, %while.body8593 ], [ %.lcssa17056, %cond.end8559 ]
  %rC.sroa.1101.117092 = phi double [ %add9269, %while.body8593 ], [ %rC.sroa.1101.0.lcssa, %cond.end8559 ]
  %276 = phi double [ %add9249, %while.body8593 ], [ %.lcssa17057, %cond.end8559 ]
  %rC.sroa.1030.117091 = phi double [ %add9228, %while.body8593 ], [ %rC.sroa.1030.0.lcssa, %cond.end8559 ]
  %277 = phi double [ %add9208, %while.body8593 ], [ %.lcssa17058, %cond.end8559 ]
  %rC.sroa.959.117090 = phi double [ %add9187, %while.body8593 ], [ %rC.sroa.959.0.lcssa, %cond.end8559 ]
  %278 = phi double [ %add9167, %while.body8593 ], [ %.lcssa17059, %cond.end8559 ]
  %rC.sroa.888.117089 = phi double [ %add9146, %while.body8593 ], [ %rC.sroa.888.0.lcssa, %cond.end8559 ]
  %279 = phi double [ %add9126, %while.body8593 ], [ %.lcssa17060, %cond.end8559 ]
  %rC.sroa.817.117088 = phi double [ %add9105, %while.body8593 ], [ %rC.sroa.817.0.lcssa, %cond.end8559 ]
  %280 = phi double [ %add9085, %while.body8593 ], [ %.lcssa17061, %cond.end8559 ]
  %rC.sroa.746.117087 = phi double [ %add9064, %while.body8593 ], [ %rC.sroa.746.0.lcssa, %cond.end8559 ]
  %281 = phi double [ %add9044, %while.body8593 ], [ %.lcssa17062, %cond.end8559 ]
  %rC.sroa.675.117086 = phi double [ %add9023, %while.body8593 ], [ %rC.sroa.675.0.lcssa, %cond.end8559 ]
  %282 = phi double [ %add9003, %while.body8593 ], [ %.lcssa17063, %cond.end8559 ]
  %rC.sroa.604.117085 = phi double [ %add8982, %while.body8593 ], [ %rC.sroa.604.0.lcssa, %cond.end8559 ]
  %283 = phi double [ %add8962, %while.body8593 ], [ %.lcssa17064, %cond.end8559 ]
  %rC.sroa.533.117084 = phi double [ %add8941, %while.body8593 ], [ %rC.sroa.533.0.lcssa, %cond.end8559 ]
  %284 = phi double [ %add8921, %while.body8593 ], [ %.lcssa17065, %cond.end8559 ]
  %rC.sroa.462.117083 = phi double [ %add8900, %while.body8593 ], [ %rC.sroa.462.0.lcssa, %cond.end8559 ]
  %285 = phi double [ %add8880, %while.body8593 ], [ %.lcssa17066, %cond.end8559 ]
  %rC.sroa.391.117082 = phi double [ %add8859, %while.body8593 ], [ %rC.sroa.391.0.lcssa, %cond.end8559 ]
  %286 = phi double [ %add8839, %while.body8593 ], [ %.lcssa17067, %cond.end8559 ]
  %rC.sroa.320.117081 = phi double [ %add8818, %while.body8593 ], [ %rC.sroa.320.0.lcssa, %cond.end8559 ]
  %287 = phi double [ %add8798, %while.body8593 ], [ %.lcssa17068, %cond.end8559 ]
  %rC.sroa.249.117080 = phi double [ %add8777, %while.body8593 ], [ %rC.sroa.249.0.lcssa, %cond.end8559 ]
  %288 = phi double [ %add8757, %while.body8593 ], [ %.lcssa17069, %cond.end8559 ]
  %rC.sroa.178.117079 = phi double [ %add8736, %while.body8593 ], [ %rC.sroa.178.0.lcssa, %cond.end8559 ]
  %289 = phi double [ %add8716, %while.body8593 ], [ %.lcssa17070, %cond.end8559 ]
  %rC.sroa.107.117078 = phi double [ %add8695, %while.body8593 ], [ %rC.sroa.107.0.lcssa, %cond.end8559 ]
  %290 = phi double [ %add8675, %while.body8593 ], [ %.lcssa17071, %cond.end8559 ]
  %rC.sroa.36.117077 = phi double [ %add8654, %while.body8593 ], [ %rC.sroa.36.0.lcssa, %cond.end8559 ]
  %291 = phi double [ %add8634, %while.body8593 ], [ %.lcssa17072, %cond.end8559 ]
  %numIterL.117076 = phi i32 [ %dec8591, %while.body8593 ], [ %rem8426, %cond.end8559 ]
  %localReadA.117075 = phi %struct.tensile_complex* [ %add.ptr8614, %while.body8593 ], [ %add.ptr277, %cond.end8559 ]
  %localReadB.117074 = phi %struct.tensile_complex* [ %add.ptr8615, %while.body8593 ], [ %add.ptr279, %cond.end8559 ]
  %dec8591 = add nsw i32 %numIterL.117076, -1
  %rA.sroa.0.0..sroa_idx14733 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 0, i32 0
  %rA.sroa.0.0.copyload14734 = load double, double* %rA.sroa.0.0..sroa_idx14733, align 8
  %rA.sroa.117.0..sroa_idx14750 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 0, i32 1
  %rA.sroa.117.0.copyload14751 = load double, double* %rA.sroa.117.0..sroa_idx14750, align 8
  %rA.sroa.225.16.arrayidx8596.sroa_idx14973 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 8, i32 0
  %rA.sroa.225.16.copyload14974 = load double, double* %rA.sroa.225.16.arrayidx8596.sroa_idx14973, align 8
  %rA.sroa.342.16.arrayidx8596.sroa_idx14990 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 8, i32 1
  %rA.sroa.342.16.copyload14991 = load double, double* %rA.sroa.342.16.arrayidx8596.sroa_idx14990, align 8
  %rA.sroa.450.32..sroa_idx15222 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 16, i32 0
  %rA.sroa.450.32.copyload15223 = load double, double* %rA.sroa.450.32..sroa_idx15222, align 8
  %rA.sroa.567.32..sroa_idx15239 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 16, i32 1
  %rA.sroa.567.32.copyload15240 = load double, double* %rA.sroa.567.32..sroa_idx15239, align 8
  %rA.sroa.675.48..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 24, i32 0
  %rA.sroa.675.48.copyload = load double, double* %rA.sroa.675.48..sroa_idx, align 8
  %rA.sroa.792.48..sroa_idx15477 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 24, i32 1
  %rA.sroa.792.48.copyload = load double, double* %rA.sroa.792.48..sroa_idx15477, align 8
  %rB.sroa.0.0..sroa_idx13991 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 0, i32 0
  %rB.sroa.0.0.copyload13992 = load double, double* %rB.sroa.0.0..sroa_idx13991, align 8
  %rB.sroa.54.0..sroa_idx14008 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 0, i32 1
  %rB.sroa.54.0.copyload14009 = load double, double* %rB.sroa.54.0..sroa_idx14008, align 8
  %rB.sroa.90.16.arrayidx8604.sroa_idx14110 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 8, i32 0
  %rB.sroa.90.16.copyload14111 = load double, double* %rB.sroa.90.16.arrayidx8604.sroa_idx14110, align 8
  %rB.sroa.144.16.arrayidx8604.sroa_idx14127 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 8, i32 1
  %rB.sroa.144.16.copyload14128 = load double, double* %rB.sroa.144.16.arrayidx8604.sroa_idx14127, align 8
  %rB.sroa.180.32..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 16, i32 0
  %rB.sroa.180.32.copyload14209 = load double, double* %rB.sroa.180.32..sroa_idx, align 8
  %rB.sroa.234.32..sroa_idx14225 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 16, i32 1
  %rB.sroa.234.32.copyload14226 = load double, double* %rB.sroa.234.32..sroa_idx14225, align 8
  %rB.sroa.270.48..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 24, i32 0
  %rB.sroa.270.48.copyload = load double, double* %rB.sroa.270.48..sroa_idx, align 8
  %rB.sroa.324.48..sroa_idx14336 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 24, i32 1
  %rB.sroa.324.48.copyload = load double, double* %rB.sroa.324.48..sroa_idx14336, align 8
  %rB.sroa.360.64..sroa_idx14432 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 32, i32 0
  %rB.sroa.360.64.copyload14433 = load double, double* %rB.sroa.360.64..sroa_idx14432, align 8
  %rB.sroa.414.64..sroa_idx14449 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 32, i32 1
  %rB.sroa.414.64.copyload14450 = load double, double* %rB.sroa.414.64..sroa_idx14449, align 8
  %rB.sroa.450.80..sroa_idx = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 40, i32 0
  %rB.sroa.450.80.copyload = load double, double* %rB.sroa.450.80..sroa_idx, align 8
  %rB.sroa.504.80..sroa_idx14560 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 40, i32 1
  %rB.sroa.504.80.copyload = load double, double* %rB.sroa.504.80..sroa_idx14560, align 8
  %add.ptr8614 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadA.117075, i64 32
  %add.ptr8615 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %localReadB.117074, i64 48
  %mul8620 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.0.0.copyload13992
  %add8623 = fadd double %291, %mul8620
  %292 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.54.0.copyload14009
  %add8634 = fsub double %add8623, %292
  %mul8641 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.54.0.copyload14009
  %add8644 = fadd double %rC.sroa.36.117077, %mul8641
  %mul8651 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.0.0.copyload13992
  %add8654 = fadd double %mul8651, %add8644
  %mul8661 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.0.0.copyload13992
  %add8664 = fadd double %290, %mul8661
  %293 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.54.0.copyload14009
  %add8675 = fsub double %add8664, %293
  %mul8682 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.54.0.copyload14009
  %add8685 = fadd double %rC.sroa.107.117078, %mul8682
  %mul8692 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.0.0.copyload13992
  %add8695 = fadd double %mul8692, %add8685
  %mul8702 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.0.0.copyload13992
  %add8705 = fadd double %289, %mul8702
  %294 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.54.0.copyload14009
  %add8716 = fsub double %add8705, %294
  %mul8723 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.54.0.copyload14009
  %add8726 = fadd double %rC.sroa.178.117079, %mul8723
  %mul8733 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.0.0.copyload13992
  %add8736 = fadd double %mul8733, %add8726
  %mul8743 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.0.0.copyload13992
  %add8746 = fadd double %288, %mul8743
  %295 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.54.0.copyload14009
  %add8757 = fsub double %add8746, %295
  %mul8764 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.54.0.copyload14009
  %add8767 = fadd double %rC.sroa.249.117080, %mul8764
  %mul8774 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.0.0.copyload13992
  %add8777 = fadd double %mul8774, %add8767
  %mul8784 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.90.16.copyload14111
  %add8787 = fadd double %287, %mul8784
  %296 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.144.16.copyload14128
  %add8798 = fsub double %add8787, %296
  %mul8805 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.144.16.copyload14128
  %add8808 = fadd double %rC.sroa.320.117081, %mul8805
  %mul8815 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.90.16.copyload14111
  %add8818 = fadd double %mul8815, %add8808
  %mul8825 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.90.16.copyload14111
  %add8828 = fadd double %286, %mul8825
  %297 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.144.16.copyload14128
  %add8839 = fsub double %add8828, %297
  %mul8846 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.144.16.copyload14128
  %add8849 = fadd double %rC.sroa.391.117082, %mul8846
  %mul8856 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.90.16.copyload14111
  %add8859 = fadd double %mul8856, %add8849
  %mul8866 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.90.16.copyload14111
  %add8869 = fadd double %285, %mul8866
  %298 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.144.16.copyload14128
  %add8880 = fsub double %add8869, %298
  %mul8887 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.144.16.copyload14128
  %add8890 = fadd double %rC.sroa.462.117083, %mul8887
  %mul8897 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.90.16.copyload14111
  %add8900 = fadd double %mul8897, %add8890
  %mul8907 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.90.16.copyload14111
  %add8910 = fadd double %284, %mul8907
  %299 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.144.16.copyload14128
  %add8921 = fsub double %add8910, %299
  %mul8928 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.144.16.copyload14128
  %add8931 = fadd double %rC.sroa.533.117084, %mul8928
  %mul8938 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.90.16.copyload14111
  %add8941 = fadd double %mul8938, %add8931
  %mul8948 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.180.32.copyload14209
  %add8951 = fadd double %283, %mul8948
  %300 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.234.32.copyload14226
  %add8962 = fsub double %add8951, %300
  %mul8969 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.234.32.copyload14226
  %add8972 = fadd double %rC.sroa.604.117085, %mul8969
  %mul8979 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.180.32.copyload14209
  %add8982 = fadd double %mul8979, %add8972
  %mul8989 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.180.32.copyload14209
  %add8992 = fadd double %282, %mul8989
  %301 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.234.32.copyload14226
  %add9003 = fsub double %add8992, %301
  %mul9010 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.234.32.copyload14226
  %add9013 = fadd double %rC.sroa.675.117086, %mul9010
  %mul9020 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.180.32.copyload14209
  %add9023 = fadd double %mul9020, %add9013
  %mul9030 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.180.32.copyload14209
  %add9033 = fadd double %281, %mul9030
  %302 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.234.32.copyload14226
  %add9044 = fsub double %add9033, %302
  %mul9051 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.234.32.copyload14226
  %add9054 = fadd double %rC.sroa.746.117087, %mul9051
  %mul9061 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.180.32.copyload14209
  %add9064 = fadd double %mul9061, %add9054
  %mul9071 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.180.32.copyload14209
  %add9074 = fadd double %280, %mul9071
  %303 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.234.32.copyload14226
  %add9085 = fsub double %add9074, %303
  %mul9092 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.234.32.copyload14226
  %add9095 = fadd double %rC.sroa.817.117088, %mul9092
  %mul9102 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.180.32.copyload14209
  %add9105 = fadd double %mul9102, %add9095
  %mul9112 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.270.48.copyload
  %add9115 = fadd double %279, %mul9112
  %304 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.324.48.copyload
  %add9126 = fsub double %add9115, %304
  %mul9133 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.324.48.copyload
  %add9136 = fadd double %rC.sroa.888.117089, %mul9133
  %mul9143 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.270.48.copyload
  %add9146 = fadd double %mul9143, %add9136
  %mul9153 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.270.48.copyload
  %add9156 = fadd double %278, %mul9153
  %305 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.324.48.copyload
  %add9167 = fsub double %add9156, %305
  %mul9174 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.324.48.copyload
  %add9177 = fadd double %rC.sroa.959.117090, %mul9174
  %mul9184 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.270.48.copyload
  %add9187 = fadd double %mul9184, %add9177
  %mul9194 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.270.48.copyload
  %add9197 = fadd double %277, %mul9194
  %306 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.324.48.copyload
  %add9208 = fsub double %add9197, %306
  %mul9215 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.324.48.copyload
  %add9218 = fadd double %rC.sroa.1030.117091, %mul9215
  %mul9225 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.270.48.copyload
  %add9228 = fadd double %mul9225, %add9218
  %mul9235 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.270.48.copyload
  %add9238 = fadd double %276, %mul9235
  %307 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.324.48.copyload
  %add9249 = fsub double %add9238, %307
  %mul9256 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.324.48.copyload
  %add9259 = fadd double %rC.sroa.1101.117092, %mul9256
  %mul9266 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.270.48.copyload
  %add9269 = fadd double %mul9266, %add9259
  %mul9276 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.360.64.copyload14433
  %add9279 = fadd double %275, %mul9276
  %308 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.414.64.copyload14450
  %add9290 = fsub double %add9279, %308
  %mul9297 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.414.64.copyload14450
  %add9300 = fadd double %rC.sroa.1172.117093, %mul9297
  %mul9307 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.360.64.copyload14433
  %add9310 = fadd double %mul9307, %add9300
  %mul9317 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.360.64.copyload14433
  %add9320 = fadd double %274, %mul9317
  %309 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.414.64.copyload14450
  %add9331 = fsub double %add9320, %309
  %mul9338 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.414.64.copyload14450
  %add9341 = fadd double %rC.sroa.1243.117094, %mul9338
  %mul9348 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.360.64.copyload14433
  %add9351 = fadd double %mul9348, %add9341
  %mul9358 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.360.64.copyload14433
  %add9361 = fadd double %273, %mul9358
  %310 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.414.64.copyload14450
  %add9372 = fsub double %add9361, %310
  %mul9379 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.414.64.copyload14450
  %add9382 = fadd double %rC.sroa.1314.117095, %mul9379
  %mul9389 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.360.64.copyload14433
  %add9392 = fadd double %mul9389, %add9382
  %mul9399 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.360.64.copyload14433
  %add9402 = fadd double %272, %mul9399
  %311 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.414.64.copyload14450
  %add9413 = fsub double %add9402, %311
  %mul9420 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.414.64.copyload14450
  %add9423 = fadd double %rC.sroa.1385.117096, %mul9420
  %mul9430 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.360.64.copyload14433
  %add9433 = fadd double %mul9430, %add9423
  %mul9440 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.450.80.copyload
  %add9443 = fadd double %271, %mul9440
  %312 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.504.80.copyload
  %add9454 = fsub double %add9443, %312
  %mul9461 = fmul double %rA.sroa.0.0.copyload14734, %rB.sroa.504.80.copyload
  %add9464 = fadd double %rC.sroa.1456.117097, %mul9461
  %mul9471 = fmul double %rA.sroa.117.0.copyload14751, %rB.sroa.450.80.copyload
  %add9474 = fadd double %mul9471, %add9464
  %mul9481 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.450.80.copyload
  %add9484 = fadd double %270, %mul9481
  %313 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.504.80.copyload
  %add9495 = fsub double %add9484, %313
  %mul9502 = fmul double %rA.sroa.225.16.copyload14974, %rB.sroa.504.80.copyload
  %add9505 = fadd double %rC.sroa.1527.117098, %mul9502
  %mul9512 = fmul double %rA.sroa.342.16.copyload14991, %rB.sroa.450.80.copyload
  %add9515 = fadd double %mul9512, %add9505
  %mul9522 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.450.80.copyload
  %add9525 = fadd double %269, %mul9522
  %314 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.504.80.copyload
  %add9536 = fsub double %add9525, %314
  %mul9543 = fmul double %rA.sroa.450.32.copyload15223, %rB.sroa.504.80.copyload
  %add9546 = fadd double %rC.sroa.1598.117099, %mul9543
  %mul9553 = fmul double %rA.sroa.567.32.copyload15240, %rB.sroa.450.80.copyload
  %add9556 = fadd double %mul9553, %add9546
  %mul9563 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.450.80.copyload
  %add9566 = fadd double %268, %mul9563
  %315 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.504.80.copyload
  %add9577 = fsub double %add9566, %315
  %mul9584 = fmul double %rA.sroa.675.48.copyload, %rB.sroa.504.80.copyload
  %add9587 = fadd double %rC.sroa.1669.117100, %mul9584
  %mul9594 = fmul double %rA.sroa.792.48.copyload, %rB.sroa.450.80.copyload
  %add9597 = fadd double %mul9594, %add9587
  %cmp8592 = icmp eq i32 %dec8591, 0
  br i1 %cmp8592, label %while.end9600, label %while.body8593

while.end9600:                                    ; preds = %while.body8593, %cond.end8559
  %.lcssa17048 = phi double [ %.lcssa17072, %cond.end8559 ], [ %add8634, %while.body8593 ]
  %rC.sroa.36.1.lcssa = phi double [ %rC.sroa.36.0.lcssa, %cond.end8559 ], [ %add8654, %while.body8593 ]
  %.lcssa17047 = phi double [ %.lcssa17071, %cond.end8559 ], [ %add8675, %while.body8593 ]
  %rC.sroa.107.1.lcssa = phi double [ %rC.sroa.107.0.lcssa, %cond.end8559 ], [ %add8695, %while.body8593 ]
  %.lcssa17046 = phi double [ %.lcssa17070, %cond.end8559 ], [ %add8716, %while.body8593 ]
  %rC.sroa.178.1.lcssa = phi double [ %rC.sroa.178.0.lcssa, %cond.end8559 ], [ %add8736, %while.body8593 ]
  %.lcssa17045 = phi double [ %.lcssa17069, %cond.end8559 ], [ %add8757, %while.body8593 ]
  %rC.sroa.249.1.lcssa = phi double [ %rC.sroa.249.0.lcssa, %cond.end8559 ], [ %add8777, %while.body8593 ]
  %.lcssa17044 = phi double [ %.lcssa17068, %cond.end8559 ], [ %add8798, %while.body8593 ]
  %rC.sroa.320.1.lcssa = phi double [ %rC.sroa.320.0.lcssa, %cond.end8559 ], [ %add8818, %while.body8593 ]
  %.lcssa17043 = phi double [ %.lcssa17067, %cond.end8559 ], [ %add8839, %while.body8593 ]
  %rC.sroa.391.1.lcssa = phi double [ %rC.sroa.391.0.lcssa, %cond.end8559 ], [ %add8859, %while.body8593 ]
  %.lcssa17042 = phi double [ %.lcssa17066, %cond.end8559 ], [ %add8880, %while.body8593 ]
  %rC.sroa.462.1.lcssa = phi double [ %rC.sroa.462.0.lcssa, %cond.end8559 ], [ %add8900, %while.body8593 ]
  %.lcssa17041 = phi double [ %.lcssa17065, %cond.end8559 ], [ %add8921, %while.body8593 ]
  %rC.sroa.533.1.lcssa = phi double [ %rC.sroa.533.0.lcssa, %cond.end8559 ], [ %add8941, %while.body8593 ]
  %.lcssa17040 = phi double [ %.lcssa17064, %cond.end8559 ], [ %add8962, %while.body8593 ]
  %rC.sroa.604.1.lcssa = phi double [ %rC.sroa.604.0.lcssa, %cond.end8559 ], [ %add8982, %while.body8593 ]
  %.lcssa17039 = phi double [ %.lcssa17063, %cond.end8559 ], [ %add9003, %while.body8593 ]
  %rC.sroa.675.1.lcssa = phi double [ %rC.sroa.675.0.lcssa, %cond.end8559 ], [ %add9023, %while.body8593 ]
  %.lcssa17038 = phi double [ %.lcssa17062, %cond.end8559 ], [ %add9044, %while.body8593 ]
  %rC.sroa.746.1.lcssa = phi double [ %rC.sroa.746.0.lcssa, %cond.end8559 ], [ %add9064, %while.body8593 ]
  %.lcssa17037 = phi double [ %.lcssa17061, %cond.end8559 ], [ %add9085, %while.body8593 ]
  %rC.sroa.817.1.lcssa = phi double [ %rC.sroa.817.0.lcssa, %cond.end8559 ], [ %add9105, %while.body8593 ]
  %.lcssa17036 = phi double [ %.lcssa17060, %cond.end8559 ], [ %add9126, %while.body8593 ]
  %rC.sroa.888.1.lcssa = phi double [ %rC.sroa.888.0.lcssa, %cond.end8559 ], [ %add9146, %while.body8593 ]
  %.lcssa17035 = phi double [ %.lcssa17059, %cond.end8559 ], [ %add9167, %while.body8593 ]
  %rC.sroa.959.1.lcssa = phi double [ %rC.sroa.959.0.lcssa, %cond.end8559 ], [ %add9187, %while.body8593 ]
  %.lcssa17034 = phi double [ %.lcssa17058, %cond.end8559 ], [ %add9208, %while.body8593 ]
  %rC.sroa.1030.1.lcssa = phi double [ %rC.sroa.1030.0.lcssa, %cond.end8559 ], [ %add9228, %while.body8593 ]
  %.lcssa17033 = phi double [ %.lcssa17057, %cond.end8559 ], [ %add9249, %while.body8593 ]
  %rC.sroa.1101.1.lcssa = phi double [ %rC.sroa.1101.0.lcssa, %cond.end8559 ], [ %add9269, %while.body8593 ]
  %.lcssa17032 = phi double [ %.lcssa17056, %cond.end8559 ], [ %add9290, %while.body8593 ]
  %rC.sroa.1172.1.lcssa = phi double [ %rC.sroa.1172.0.lcssa, %cond.end8559 ], [ %add9310, %while.body8593 ]
  %.lcssa17031 = phi double [ %.lcssa17055, %cond.end8559 ], [ %add9331, %while.body8593 ]
  %rC.sroa.1243.1.lcssa = phi double [ %rC.sroa.1243.0.lcssa, %cond.end8559 ], [ %add9351, %while.body8593 ]
  %.lcssa17030 = phi double [ %.lcssa17054, %cond.end8559 ], [ %add9372, %while.body8593 ]
  %rC.sroa.1314.1.lcssa = phi double [ %rC.sroa.1314.0.lcssa, %cond.end8559 ], [ %add9392, %while.body8593 ]
  %.lcssa17029 = phi double [ %.lcssa17053, %cond.end8559 ], [ %add9413, %while.body8593 ]
  %rC.sroa.1385.1.lcssa = phi double [ %rC.sroa.1385.0.lcssa, %cond.end8559 ], [ %add9433, %while.body8593 ]
  %.lcssa17028 = phi double [ %.lcssa17052, %cond.end8559 ], [ %add9454, %while.body8593 ]
  %rC.sroa.1456.1.lcssa = phi double [ %rC.sroa.1456.0.lcssa, %cond.end8559 ], [ %add9474, %while.body8593 ]
  %.lcssa17027 = phi double [ %.lcssa17051, %cond.end8559 ], [ %add9495, %while.body8593 ]
  %rC.sroa.1527.1.lcssa = phi double [ %rC.sroa.1527.0.lcssa, %cond.end8559 ], [ %add9515, %while.body8593 ]
  %.lcssa17026 = phi double [ %.lcssa17050, %cond.end8559 ], [ %add9536, %while.body8593 ]
  %rC.sroa.1598.1.lcssa = phi double [ %rC.sroa.1598.0.lcssa, %cond.end8559 ], [ %add9556, %while.body8593 ]
  %.lcssa = phi double [ %.lcssa17049, %cond.end8559 ], [ %add9577, %while.body8593 ]
  %rC.sroa.1669.1.lcssa = phi double [ %rC.sroa.1669.0.lcssa, %cond.end8559 ], [ %add9597, %while.body8593 ]
  %316 = or i32 %call10, %call
  %317 = or i32 %316, %call11
  %318 = or i32 %317, %rem25
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %if.end9612, label %if.end12860

if.end9612:                                       ; preds = %while.end9600
  %add9616 = or i32 %mul16, %rem
  %add9620 = add i32 %mul20, %div3
  %cmp9625 = icmp ult i32 %add9616, %size0I
  %cmp9628 = icmp ult i32 %add9620, %size1J
  %or.cond = and i1 %cmp9625, %cmp9628
  br i1 %or.cond, label %if.then9629, label %if.end9755

if.then9629:                                      ; preds = %if.end9612
  %mul9635 = fmul double %alpha.coerce.elt, %.lcssa17048
  %320 = fmul double %alpha.coerce.elt12915, %rC.sroa.36.1.lcssa
  %add9643 = fsub double %mul9635, %320
  %mul9649 = fmul double %alpha.coerce.elt, %rC.sroa.36.1.lcssa
  %mul9651 = fmul double %alpha.coerce.elt12915, %.lcssa17048
  %add9654 = fadd double %mul9651, %mul9649
  %cmp9658 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp9658, label %if.then9659, label %if.end9698

if.then9659:                                      ; preds = %if.then9629
  %conv9661 = zext i32 %add9616 to i64
  %conv9663 = zext i32 %add9620 to i64
  %conv9664 = zext i32 %strideC1J to i64
  %mul9665 = mul nuw i64 %conv9663, %conv9664
  %add9666 = add i64 %mul9665, %conv9661
  %conv9667 = zext i32 %rem25 to i64
  %conv9668 = zext i32 %strideCK to i64
  %mul9669 = mul nuw i64 %conv9667, %conv9668
  %add9670 = add i64 %add9666, %mul9669
  %x9672 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9670, i32 0
  %321 = load double, double* %x9672, align 8, !tbaa !19
  %mul9673 = fmul double %beta.coerce.elt, %321
  %add9676 = fadd double %add9643, %mul9673
  %y9691 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9670, i32 1
  %322 = load double, double* %y9691, align 8, !tbaa !21
  %mul9692 = fmul double %beta.coerce.elt, %322
  %add9695 = fadd double %add9654, %mul9692
  br label %if.end9698

if.end9698:                                       ; preds = %if.then9659, %if.then9629
  %rC.sroa.0.2.in = phi double [ %add9676, %if.then9659 ], [ %add9643, %if.then9629 ]
  %rC.sroa.36.2 = phi double [ %add9695, %if.then9659 ], [ %add9654, %if.then9629 ]
  %cmp9700 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv9704 = zext i32 %add9616 to i64
  %conv9706 = zext i32 %add9620 to i64
  br i1 %cmp9700, label %if.then9701, label %if.end9698.if.end9741_crit_edge

if.end9698.if.end9741_crit_edge:                  ; preds = %if.end9698
  %.pre17244 = zext i32 %rem25 to i64
  br label %if.end9741

if.then9701:                                      ; preds = %if.end9698
  %conv9707 = zext i32 %strideC1J to i64
  %mul9708 = mul nuw i64 %conv9706, %conv9707
  %add9709 = add i64 %mul9708, %conv9704
  %conv9710 = zext i32 %rem25 to i64
  %conv9711 = zext i32 %strideCK to i64
  %mul9712 = mul nuw i64 %conv9710, %conv9711
  %add9713 = add i64 %add9709, %mul9712
  %y9715 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9713, i32 1
  %323 = load double, double* %y9715, align 8, !tbaa !21
  %324 = fmul double %beta.coerce.elt12917, %323
  %add9719 = fsub double %rC.sroa.0.2.in, %324
  %x9734 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9713, i32 0
  %325 = load double, double* %x9734, align 8, !tbaa !19
  %mul9735 = fmul double %beta.coerce.elt12917, %325
  %add9738 = fadd double %rC.sroa.36.2, %mul9735
  br label %if.end9741

if.end9741:                                       ; preds = %if.then9701, %if.end9698.if.end9741_crit_edge
  %conv9749.pre-phi = phi i64 [ %.pre17244, %if.end9698.if.end9741_crit_edge ], [ %conv9710, %if.then9701 ]
  %rC.sroa.0.3.in = phi double [ %rC.sroa.0.2.in, %if.end9698.if.end9741_crit_edge ], [ %add9719, %if.then9701 ]
  %rC.sroa.36.3 = phi double [ %rC.sroa.36.2, %if.end9698.if.end9741_crit_edge ], [ %add9738, %if.then9701 ]
  %conv9746 = zext i32 %strideD1J to i64
  %mul9747 = mul nuw i64 %conv9706, %conv9746
  %add9748 = add i64 %mul9747, %conv9704
  %conv9750 = zext i32 %strideDK to i64
  %mul9751 = mul nuw i64 %conv9749.pre-phi, %conv9750
  %add9752 = add i64 %add9748, %mul9751
  %326 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add9752, i32 0
  store double %rC.sroa.0.3.in, double* %326, align 8
  %rC.sroa.36.0..sroa_idx15612 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add9752, i32 1
  store double %rC.sroa.36.3, double* %rC.sroa.36.0..sroa_idx15612, align 8
  br label %if.end9755

if.end9755:                                       ; preds = %if.end9741, %if.end9612
  %add9756 = or i32 %add9616, 8
  %cmp9760 = icmp ult i32 %add9756, %size0I
  %or.cond16969 = and i1 %cmp9760, %cmp9628
  br i1 %or.cond16969, label %if.then9764, label %if.end9890

if.then9764:                                      ; preds = %if.end9755
  %mul9770 = fmul double %alpha.coerce.elt, %.lcssa17047
  %327 = fmul double %alpha.coerce.elt12915, %rC.sroa.107.1.lcssa
  %add9778 = fsub double %mul9770, %327
  %mul9784 = fmul double %alpha.coerce.elt, %rC.sroa.107.1.lcssa
  %mul9786 = fmul double %alpha.coerce.elt12915, %.lcssa17047
  %add9789 = fadd double %mul9786, %mul9784
  %cmp9793 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp9793, label %if.then9794, label %if.end9833

if.then9794:                                      ; preds = %if.then9764
  %conv9796 = zext i32 %add9756 to i64
  %conv9798 = zext i32 %add9620 to i64
  %conv9799 = zext i32 %strideC1J to i64
  %mul9800 = mul nuw i64 %conv9798, %conv9799
  %add9801 = add i64 %mul9800, %conv9796
  %conv9802 = zext i32 %rem25 to i64
  %conv9803 = zext i32 %strideCK to i64
  %mul9804 = mul nuw i64 %conv9802, %conv9803
  %add9805 = add i64 %add9801, %mul9804
  %x9807 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9805, i32 0
  %328 = load double, double* %x9807, align 8, !tbaa !19
  %mul9808 = fmul double %beta.coerce.elt, %328
  %add9811 = fadd double %add9778, %mul9808
  %y9826 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9805, i32 1
  %329 = load double, double* %y9826, align 8, !tbaa !21
  %mul9827 = fmul double %beta.coerce.elt, %329
  %add9830 = fadd double %add9789, %mul9827
  br label %if.end9833

if.end9833:                                       ; preds = %if.then9794, %if.then9764
  %rC.sroa.71.2.in = phi double [ %add9811, %if.then9794 ], [ %add9778, %if.then9764 ]
  %rC.sroa.107.2 = phi double [ %add9830, %if.then9794 ], [ %add9789, %if.then9764 ]
  %cmp9835 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv9839 = zext i32 %add9756 to i64
  %conv9841 = zext i32 %add9620 to i64
  br i1 %cmp9835, label %if.then9836, label %if.end9833.if.end9876_crit_edge

if.end9833.if.end9876_crit_edge:                  ; preds = %if.end9833
  %.pre17247 = zext i32 %rem25 to i64
  br label %if.end9876

if.then9836:                                      ; preds = %if.end9833
  %conv9842 = zext i32 %strideC1J to i64
  %mul9843 = mul nuw i64 %conv9841, %conv9842
  %add9844 = add i64 %mul9843, %conv9839
  %conv9845 = zext i32 %rem25 to i64
  %conv9846 = zext i32 %strideCK to i64
  %mul9847 = mul nuw i64 %conv9845, %conv9846
  %add9848 = add i64 %add9844, %mul9847
  %y9850 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9848, i32 1
  %330 = load double, double* %y9850, align 8, !tbaa !21
  %331 = fmul double %beta.coerce.elt12917, %330
  %add9854 = fsub double %rC.sroa.71.2.in, %331
  %x9869 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9848, i32 0
  %332 = load double, double* %x9869, align 8, !tbaa !19
  %mul9870 = fmul double %beta.coerce.elt12917, %332
  %add9873 = fadd double %rC.sroa.107.2, %mul9870
  br label %if.end9876

if.end9876:                                       ; preds = %if.then9836, %if.end9833.if.end9876_crit_edge
  %conv9884.pre-phi = phi i64 [ %.pre17247, %if.end9833.if.end9876_crit_edge ], [ %conv9845, %if.then9836 ]
  %rC.sroa.71.3.in = phi double [ %rC.sroa.71.2.in, %if.end9833.if.end9876_crit_edge ], [ %add9854, %if.then9836 ]
  %rC.sroa.107.3 = phi double [ %rC.sroa.107.2, %if.end9833.if.end9876_crit_edge ], [ %add9873, %if.then9836 ]
  %conv9881 = zext i32 %strideD1J to i64
  %mul9882 = mul nuw i64 %conv9841, %conv9881
  %add9883 = add i64 %mul9882, %conv9839
  %conv9885 = zext i32 %strideDK to i64
  %mul9886 = mul nuw i64 %conv9884.pre-phi, %conv9885
  %add9887 = add i64 %add9883, %mul9886
  %333 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add9887, i32 0
  store double %rC.sroa.71.3.in, double* %333, align 8
  %rC.sroa.107.16..sroa_idx15635 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add9887, i32 1
  store double %rC.sroa.107.3, double* %rC.sroa.107.16..sroa_idx15635, align 8
  br label %if.end9890

if.end9890:                                       ; preds = %if.end9876, %if.end9755
  %add9891 = or i32 %add9616, 16
  %cmp9895 = icmp ult i32 %add9891, %size0I
  %or.cond16970 = and i1 %cmp9895, %cmp9628
  br i1 %or.cond16970, label %if.then9899, label %if.end10025

if.then9899:                                      ; preds = %if.end9890
  %mul9905 = fmul double %alpha.coerce.elt, %.lcssa17046
  %334 = fmul double %alpha.coerce.elt12915, %rC.sroa.178.1.lcssa
  %add9913 = fsub double %mul9905, %334
  %mul9919 = fmul double %alpha.coerce.elt, %rC.sroa.178.1.lcssa
  %mul9921 = fmul double %alpha.coerce.elt12915, %.lcssa17046
  %add9924 = fadd double %mul9921, %mul9919
  %cmp9928 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp9928, label %if.then9929, label %if.end9968

if.then9929:                                      ; preds = %if.then9899
  %conv9931 = zext i32 %add9891 to i64
  %conv9933 = zext i32 %add9620 to i64
  %conv9934 = zext i32 %strideC1J to i64
  %mul9935 = mul nuw i64 %conv9933, %conv9934
  %add9936 = add i64 %mul9935, %conv9931
  %conv9937 = zext i32 %rem25 to i64
  %conv9938 = zext i32 %strideCK to i64
  %mul9939 = mul nuw i64 %conv9937, %conv9938
  %add9940 = add i64 %add9936, %mul9939
  %x9942 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9940, i32 0
  %335 = load double, double* %x9942, align 8, !tbaa !19
  %mul9943 = fmul double %beta.coerce.elt, %335
  %add9946 = fadd double %add9913, %mul9943
  %y9961 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9940, i32 1
  %336 = load double, double* %y9961, align 8, !tbaa !21
  %mul9962 = fmul double %beta.coerce.elt, %336
  %add9965 = fadd double %add9924, %mul9962
  br label %if.end9968

if.end9968:                                       ; preds = %if.then9929, %if.then9899
  %rC.sroa.142.2.in = phi double [ %add9946, %if.then9929 ], [ %add9913, %if.then9899 ]
  %rC.sroa.178.2 = phi double [ %add9965, %if.then9929 ], [ %add9924, %if.then9899 ]
  %cmp9970 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv9974 = zext i32 %add9891 to i64
  %conv9976 = zext i32 %add9620 to i64
  br i1 %cmp9970, label %if.then9971, label %if.end9968.if.end10011_crit_edge

if.end9968.if.end10011_crit_edge:                 ; preds = %if.end9968
  %.pre17250 = zext i32 %rem25 to i64
  br label %if.end10011

if.then9971:                                      ; preds = %if.end9968
  %conv9977 = zext i32 %strideC1J to i64
  %mul9978 = mul nuw i64 %conv9976, %conv9977
  %add9979 = add i64 %mul9978, %conv9974
  %conv9980 = zext i32 %rem25 to i64
  %conv9981 = zext i32 %strideCK to i64
  %mul9982 = mul nuw i64 %conv9980, %conv9981
  %add9983 = add i64 %add9979, %mul9982
  %y9985 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9983, i32 1
  %337 = load double, double* %y9985, align 8, !tbaa !21
  %338 = fmul double %beta.coerce.elt12917, %337
  %add9989 = fsub double %rC.sroa.142.2.in, %338
  %x10004 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add9983, i32 0
  %339 = load double, double* %x10004, align 8, !tbaa !19
  %mul10005 = fmul double %beta.coerce.elt12917, %339
  %add10008 = fadd double %rC.sroa.178.2, %mul10005
  br label %if.end10011

if.end10011:                                      ; preds = %if.then9971, %if.end9968.if.end10011_crit_edge
  %conv10019.pre-phi = phi i64 [ %.pre17250, %if.end9968.if.end10011_crit_edge ], [ %conv9980, %if.then9971 ]
  %rC.sroa.142.3.in = phi double [ %rC.sroa.142.2.in, %if.end9968.if.end10011_crit_edge ], [ %add9989, %if.then9971 ]
  %rC.sroa.178.3 = phi double [ %rC.sroa.178.2, %if.end9968.if.end10011_crit_edge ], [ %add10008, %if.then9971 ]
  %conv10016 = zext i32 %strideD1J to i64
  %mul10017 = mul nuw i64 %conv9976, %conv10016
  %add10018 = add i64 %mul10017, %conv9974
  %conv10020 = zext i32 %strideDK to i64
  %mul10021 = mul nuw i64 %conv10019.pre-phi, %conv10020
  %add10022 = add i64 %add10018, %mul10021
  %340 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10022, i32 0
  store double %rC.sroa.142.3.in, double* %340, align 8
  %rC.sroa.178.32..sroa_idx15658 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10022, i32 1
  store double %rC.sroa.178.3, double* %rC.sroa.178.32..sroa_idx15658, align 8
  br label %if.end10025

if.end10025:                                      ; preds = %if.end10011, %if.end9890
  %add10026 = or i32 %add9616, 24
  %cmp10030 = icmp ult i32 %add10026, %size0I
  %or.cond16971 = and i1 %cmp10030, %cmp9628
  br i1 %or.cond16971, label %if.then10034, label %if.end10160

if.then10034:                                     ; preds = %if.end10025
  %mul10040 = fmul double %alpha.coerce.elt, %.lcssa17045
  %341 = fmul double %alpha.coerce.elt12915, %rC.sroa.249.1.lcssa
  %add10048 = fsub double %mul10040, %341
  %mul10054 = fmul double %alpha.coerce.elt, %rC.sroa.249.1.lcssa
  %mul10056 = fmul double %alpha.coerce.elt12915, %.lcssa17045
  %add10059 = fadd double %mul10056, %mul10054
  %cmp10063 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp10063, label %if.then10064, label %if.end10103

if.then10064:                                     ; preds = %if.then10034
  %conv10066 = zext i32 %add10026 to i64
  %conv10068 = zext i32 %add9620 to i64
  %conv10069 = zext i32 %strideC1J to i64
  %mul10070 = mul nuw i64 %conv10068, %conv10069
  %add10071 = add i64 %mul10070, %conv10066
  %conv10072 = zext i32 %rem25 to i64
  %conv10073 = zext i32 %strideCK to i64
  %mul10074 = mul nuw i64 %conv10072, %conv10073
  %add10075 = add i64 %add10071, %mul10074
  %x10077 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10075, i32 0
  %342 = load double, double* %x10077, align 8, !tbaa !19
  %mul10078 = fmul double %beta.coerce.elt, %342
  %add10081 = fadd double %add10048, %mul10078
  %y10096 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10075, i32 1
  %343 = load double, double* %y10096, align 8, !tbaa !21
  %mul10097 = fmul double %beta.coerce.elt, %343
  %add10100 = fadd double %add10059, %mul10097
  br label %if.end10103

if.end10103:                                      ; preds = %if.then10064, %if.then10034
  %rC.sroa.213.2.in = phi double [ %add10081, %if.then10064 ], [ %add10048, %if.then10034 ]
  %rC.sroa.249.2 = phi double [ %add10100, %if.then10064 ], [ %add10059, %if.then10034 ]
  %cmp10105 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv10109 = zext i32 %add10026 to i64
  %conv10111 = zext i32 %add9620 to i64
  br i1 %cmp10105, label %if.then10106, label %if.end10103.if.end10146_crit_edge

if.end10103.if.end10146_crit_edge:                ; preds = %if.end10103
  %.pre17253 = zext i32 %rem25 to i64
  br label %if.end10146

if.then10106:                                     ; preds = %if.end10103
  %conv10112 = zext i32 %strideC1J to i64
  %mul10113 = mul nuw i64 %conv10111, %conv10112
  %add10114 = add i64 %mul10113, %conv10109
  %conv10115 = zext i32 %rem25 to i64
  %conv10116 = zext i32 %strideCK to i64
  %mul10117 = mul nuw i64 %conv10115, %conv10116
  %add10118 = add i64 %add10114, %mul10117
  %y10120 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10118, i32 1
  %344 = load double, double* %y10120, align 8, !tbaa !21
  %345 = fmul double %beta.coerce.elt12917, %344
  %add10124 = fsub double %rC.sroa.213.2.in, %345
  %x10139 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10118, i32 0
  %346 = load double, double* %x10139, align 8, !tbaa !19
  %mul10140 = fmul double %beta.coerce.elt12917, %346
  %add10143 = fadd double %rC.sroa.249.2, %mul10140
  br label %if.end10146

if.end10146:                                      ; preds = %if.then10106, %if.end10103.if.end10146_crit_edge
  %conv10154.pre-phi = phi i64 [ %.pre17253, %if.end10103.if.end10146_crit_edge ], [ %conv10115, %if.then10106 ]
  %rC.sroa.213.3.in = phi double [ %rC.sroa.213.2.in, %if.end10103.if.end10146_crit_edge ], [ %add10124, %if.then10106 ]
  %rC.sroa.249.3 = phi double [ %rC.sroa.249.2, %if.end10103.if.end10146_crit_edge ], [ %add10143, %if.then10106 ]
  %conv10151 = zext i32 %strideD1J to i64
  %mul10152 = mul nuw i64 %conv10111, %conv10151
  %add10153 = add i64 %mul10152, %conv10109
  %conv10155 = zext i32 %strideDK to i64
  %mul10156 = mul nuw i64 %conv10154.pre-phi, %conv10155
  %add10157 = add i64 %add10153, %mul10156
  %347 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10157, i32 0
  store double %rC.sroa.213.3.in, double* %347, align 8
  %rC.sroa.249.48..sroa_idx15681 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10157, i32 1
  store double %rC.sroa.249.3, double* %rC.sroa.249.48..sroa_idx15681, align 8
  br label %if.end10160

if.end10160:                                      ; preds = %if.end10146, %if.end10025
  %add10163 = add i32 %add9620, 8
  %cmp10168 = icmp ult i32 %add10163, %size1J
  %or.cond16972 = and i1 %cmp9625, %cmp10168
  br i1 %or.cond16972, label %if.then10169, label %if.end10295

if.then10169:                                     ; preds = %if.end10160
  %mul10175 = fmul double %alpha.coerce.elt, %.lcssa17044
  %348 = fmul double %alpha.coerce.elt12915, %rC.sroa.320.1.lcssa
  %add10183 = fsub double %mul10175, %348
  %mul10189 = fmul double %alpha.coerce.elt, %rC.sroa.320.1.lcssa
  %mul10191 = fmul double %alpha.coerce.elt12915, %.lcssa17044
  %add10194 = fadd double %mul10191, %mul10189
  %cmp10198 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp10198, label %if.then10199, label %if.end10238

if.then10199:                                     ; preds = %if.then10169
  %conv10201 = zext i32 %add9616 to i64
  %conv10203 = zext i32 %add10163 to i64
  %conv10204 = zext i32 %strideC1J to i64
  %mul10205 = mul nuw i64 %conv10203, %conv10204
  %conv10207 = zext i32 %rem25 to i64
  %conv10208 = zext i32 %strideCK to i64
  %mul10209 = mul nuw i64 %conv10207, %conv10208
  %add10206 = add i64 %mul10209, %conv10201
  %add10210 = add i64 %add10206, %mul10205
  %x10212 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10210, i32 0
  %349 = load double, double* %x10212, align 8, !tbaa !19
  %mul10213 = fmul double %beta.coerce.elt, %349
  %add10216 = fadd double %add10183, %mul10213
  %y10231 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10210, i32 1
  %350 = load double, double* %y10231, align 8, !tbaa !21
  %mul10232 = fmul double %beta.coerce.elt, %350
  %add10235 = fadd double %add10194, %mul10232
  br label %if.end10238

if.end10238:                                      ; preds = %if.then10199, %if.then10169
  %rC.sroa.284.2.in = phi double [ %add10216, %if.then10199 ], [ %add10183, %if.then10169 ]
  %rC.sroa.320.2 = phi double [ %add10235, %if.then10199 ], [ %add10194, %if.then10169 ]
  %cmp10240 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv10244 = zext i32 %add9616 to i64
  %conv10246 = zext i32 %add10163 to i64
  br i1 %cmp10240, label %if.then10241, label %if.end10238.if.end10281_crit_edge

if.end10238.if.end10281_crit_edge:                ; preds = %if.end10238
  %.pre17256 = zext i32 %rem25 to i64
  br label %if.end10281

if.then10241:                                     ; preds = %if.end10238
  %conv10247 = zext i32 %strideC1J to i64
  %mul10248 = mul nuw i64 %conv10246, %conv10247
  %conv10250 = zext i32 %rem25 to i64
  %conv10251 = zext i32 %strideCK to i64
  %mul10252 = mul nuw i64 %conv10250, %conv10251
  %add10249 = add i64 %mul10252, %conv10244
  %add10253 = add i64 %add10249, %mul10248
  %y10255 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10253, i32 1
  %351 = load double, double* %y10255, align 8, !tbaa !21
  %352 = fmul double %beta.coerce.elt12917, %351
  %add10259 = fsub double %rC.sroa.284.2.in, %352
  %x10274 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10253, i32 0
  %353 = load double, double* %x10274, align 8, !tbaa !19
  %mul10275 = fmul double %beta.coerce.elt12917, %353
  %add10278 = fadd double %rC.sroa.320.2, %mul10275
  br label %if.end10281

if.end10281:                                      ; preds = %if.then10241, %if.end10238.if.end10281_crit_edge
  %conv10289.pre-phi = phi i64 [ %.pre17256, %if.end10238.if.end10281_crit_edge ], [ %conv10250, %if.then10241 ]
  %rC.sroa.284.3.in = phi double [ %rC.sroa.284.2.in, %if.end10238.if.end10281_crit_edge ], [ %add10259, %if.then10241 ]
  %rC.sroa.320.3 = phi double [ %rC.sroa.320.2, %if.end10238.if.end10281_crit_edge ], [ %add10278, %if.then10241 ]
  %conv10286 = zext i32 %strideD1J to i64
  %mul10287 = mul nuw i64 %conv10246, %conv10286
  %conv10290 = zext i32 %strideDK to i64
  %mul10291 = mul nuw i64 %conv10289.pre-phi, %conv10290
  %add10288 = add i64 %mul10291, %conv10244
  %add10292 = add i64 %add10288, %mul10287
  %354 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10292, i32 0
  store double %rC.sroa.284.3.in, double* %354, align 8
  %rC.sroa.320.64..sroa_idx15704 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10292, i32 1
  store double %rC.sroa.320.3, double* %rC.sroa.320.64..sroa_idx15704, align 8
  br label %if.end10295

if.end10295:                                      ; preds = %if.end10281, %if.end10160
  %or.cond16973 = and i1 %cmp9760, %cmp10168
  br i1 %or.cond16973, label %if.then10304, label %if.end10430

if.then10304:                                     ; preds = %if.end10295
  %mul10310 = fmul double %alpha.coerce.elt, %.lcssa17043
  %355 = fmul double %alpha.coerce.elt12915, %rC.sroa.391.1.lcssa
  %add10318 = fsub double %mul10310, %355
  %mul10324 = fmul double %alpha.coerce.elt, %rC.sroa.391.1.lcssa
  %mul10326 = fmul double %alpha.coerce.elt12915, %.lcssa17043
  %add10329 = fadd double %mul10326, %mul10324
  %cmp10333 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp10333, label %if.then10334, label %if.end10373

if.then10334:                                     ; preds = %if.then10304
  %conv10336 = zext i32 %add9756 to i64
  %conv10338 = zext i32 %add10163 to i64
  %conv10339 = zext i32 %strideC1J to i64
  %mul10340 = mul nuw i64 %conv10338, %conv10339
  %conv10342 = zext i32 %rem25 to i64
  %conv10343 = zext i32 %strideCK to i64
  %mul10344 = mul nuw i64 %conv10342, %conv10343
  %add10341 = add i64 %mul10344, %conv10336
  %add10345 = add i64 %add10341, %mul10340
  %x10347 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10345, i32 0
  %356 = load double, double* %x10347, align 8, !tbaa !19
  %mul10348 = fmul double %beta.coerce.elt, %356
  %add10351 = fadd double %add10318, %mul10348
  %y10366 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10345, i32 1
  %357 = load double, double* %y10366, align 8, !tbaa !21
  %mul10367 = fmul double %beta.coerce.elt, %357
  %add10370 = fadd double %add10329, %mul10367
  br label %if.end10373

if.end10373:                                      ; preds = %if.then10334, %if.then10304
  %rC.sroa.355.2.in = phi double [ %add10351, %if.then10334 ], [ %add10318, %if.then10304 ]
  %rC.sroa.391.2 = phi double [ %add10370, %if.then10334 ], [ %add10329, %if.then10304 ]
  %cmp10375 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv10379 = zext i32 %add9756 to i64
  %conv10381 = zext i32 %add10163 to i64
  br i1 %cmp10375, label %if.then10376, label %if.end10373.if.end10416_crit_edge

if.end10373.if.end10416_crit_edge:                ; preds = %if.end10373
  %.pre17259 = zext i32 %rem25 to i64
  br label %if.end10416

if.then10376:                                     ; preds = %if.end10373
  %conv10382 = zext i32 %strideC1J to i64
  %mul10383 = mul nuw i64 %conv10381, %conv10382
  %conv10385 = zext i32 %rem25 to i64
  %conv10386 = zext i32 %strideCK to i64
  %mul10387 = mul nuw i64 %conv10385, %conv10386
  %add10384 = add i64 %mul10387, %conv10379
  %add10388 = add i64 %add10384, %mul10383
  %y10390 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10388, i32 1
  %358 = load double, double* %y10390, align 8, !tbaa !21
  %359 = fmul double %beta.coerce.elt12917, %358
  %add10394 = fsub double %rC.sroa.355.2.in, %359
  %x10409 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10388, i32 0
  %360 = load double, double* %x10409, align 8, !tbaa !19
  %mul10410 = fmul double %beta.coerce.elt12917, %360
  %add10413 = fadd double %rC.sroa.391.2, %mul10410
  br label %if.end10416

if.end10416:                                      ; preds = %if.then10376, %if.end10373.if.end10416_crit_edge
  %conv10424.pre-phi = phi i64 [ %.pre17259, %if.end10373.if.end10416_crit_edge ], [ %conv10385, %if.then10376 ]
  %rC.sroa.355.3.in = phi double [ %rC.sroa.355.2.in, %if.end10373.if.end10416_crit_edge ], [ %add10394, %if.then10376 ]
  %rC.sroa.391.3 = phi double [ %rC.sroa.391.2, %if.end10373.if.end10416_crit_edge ], [ %add10413, %if.then10376 ]
  %conv10421 = zext i32 %strideD1J to i64
  %mul10422 = mul nuw i64 %conv10381, %conv10421
  %conv10425 = zext i32 %strideDK to i64
  %mul10426 = mul nuw i64 %conv10424.pre-phi, %conv10425
  %add10423 = add i64 %mul10426, %conv10379
  %add10427 = add i64 %add10423, %mul10422
  %361 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10427, i32 0
  store double %rC.sroa.355.3.in, double* %361, align 8
  %rC.sroa.391.80..sroa_idx15727 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10427, i32 1
  store double %rC.sroa.391.3, double* %rC.sroa.391.80..sroa_idx15727, align 8
  br label %if.end10430

if.end10430:                                      ; preds = %if.end10416, %if.end10295
  %or.cond16974 = and i1 %cmp9895, %cmp10168
  br i1 %or.cond16974, label %if.then10439, label %if.end10565

if.then10439:                                     ; preds = %if.end10430
  %mul10445 = fmul double %alpha.coerce.elt, %.lcssa17042
  %362 = fmul double %alpha.coerce.elt12915, %rC.sroa.462.1.lcssa
  %add10453 = fsub double %mul10445, %362
  %mul10459 = fmul double %alpha.coerce.elt, %rC.sroa.462.1.lcssa
  %mul10461 = fmul double %alpha.coerce.elt12915, %.lcssa17042
  %add10464 = fadd double %mul10461, %mul10459
  %cmp10468 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp10468, label %if.then10469, label %if.end10508

if.then10469:                                     ; preds = %if.then10439
  %conv10471 = zext i32 %add9891 to i64
  %conv10473 = zext i32 %add10163 to i64
  %conv10474 = zext i32 %strideC1J to i64
  %mul10475 = mul nuw i64 %conv10473, %conv10474
  %conv10477 = zext i32 %rem25 to i64
  %conv10478 = zext i32 %strideCK to i64
  %mul10479 = mul nuw i64 %conv10477, %conv10478
  %add10476 = add i64 %mul10479, %conv10471
  %add10480 = add i64 %add10476, %mul10475
  %x10482 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10480, i32 0
  %363 = load double, double* %x10482, align 8, !tbaa !19
  %mul10483 = fmul double %beta.coerce.elt, %363
  %add10486 = fadd double %add10453, %mul10483
  %y10501 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10480, i32 1
  %364 = load double, double* %y10501, align 8, !tbaa !21
  %mul10502 = fmul double %beta.coerce.elt, %364
  %add10505 = fadd double %add10464, %mul10502
  br label %if.end10508

if.end10508:                                      ; preds = %if.then10469, %if.then10439
  %rC.sroa.426.2.in = phi double [ %add10486, %if.then10469 ], [ %add10453, %if.then10439 ]
  %rC.sroa.462.2 = phi double [ %add10505, %if.then10469 ], [ %add10464, %if.then10439 ]
  %cmp10510 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv10514 = zext i32 %add9891 to i64
  %conv10516 = zext i32 %add10163 to i64
  br i1 %cmp10510, label %if.then10511, label %if.end10508.if.end10551_crit_edge

if.end10508.if.end10551_crit_edge:                ; preds = %if.end10508
  %.pre17262 = zext i32 %rem25 to i64
  br label %if.end10551

if.then10511:                                     ; preds = %if.end10508
  %conv10517 = zext i32 %strideC1J to i64
  %mul10518 = mul nuw i64 %conv10516, %conv10517
  %conv10520 = zext i32 %rem25 to i64
  %conv10521 = zext i32 %strideCK to i64
  %mul10522 = mul nuw i64 %conv10520, %conv10521
  %add10519 = add i64 %mul10522, %conv10514
  %add10523 = add i64 %add10519, %mul10518
  %y10525 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10523, i32 1
  %365 = load double, double* %y10525, align 8, !tbaa !21
  %366 = fmul double %beta.coerce.elt12917, %365
  %add10529 = fsub double %rC.sroa.426.2.in, %366
  %x10544 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10523, i32 0
  %367 = load double, double* %x10544, align 8, !tbaa !19
  %mul10545 = fmul double %beta.coerce.elt12917, %367
  %add10548 = fadd double %rC.sroa.462.2, %mul10545
  br label %if.end10551

if.end10551:                                      ; preds = %if.then10511, %if.end10508.if.end10551_crit_edge
  %conv10559.pre-phi = phi i64 [ %.pre17262, %if.end10508.if.end10551_crit_edge ], [ %conv10520, %if.then10511 ]
  %rC.sroa.426.3.in = phi double [ %rC.sroa.426.2.in, %if.end10508.if.end10551_crit_edge ], [ %add10529, %if.then10511 ]
  %rC.sroa.462.3 = phi double [ %rC.sroa.462.2, %if.end10508.if.end10551_crit_edge ], [ %add10548, %if.then10511 ]
  %conv10556 = zext i32 %strideD1J to i64
  %mul10557 = mul nuw i64 %conv10516, %conv10556
  %conv10560 = zext i32 %strideDK to i64
  %mul10561 = mul nuw i64 %conv10559.pre-phi, %conv10560
  %add10558 = add i64 %mul10561, %conv10514
  %add10562 = add i64 %add10558, %mul10557
  %368 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10562, i32 0
  store double %rC.sroa.426.3.in, double* %368, align 8
  %rC.sroa.462.96..sroa_idx15750 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10562, i32 1
  store double %rC.sroa.462.3, double* %rC.sroa.462.96..sroa_idx15750, align 8
  br label %if.end10565

if.end10565:                                      ; preds = %if.end10551, %if.end10430
  %or.cond16975 = and i1 %cmp10030, %cmp10168
  br i1 %or.cond16975, label %if.then10574, label %if.end10700

if.then10574:                                     ; preds = %if.end10565
  %mul10580 = fmul double %alpha.coerce.elt, %.lcssa17041
  %369 = fmul double %alpha.coerce.elt12915, %rC.sroa.533.1.lcssa
  %add10588 = fsub double %mul10580, %369
  %mul10594 = fmul double %alpha.coerce.elt, %rC.sroa.533.1.lcssa
  %mul10596 = fmul double %alpha.coerce.elt12915, %.lcssa17041
  %add10599 = fadd double %mul10596, %mul10594
  %cmp10603 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp10603, label %if.then10604, label %if.end10643

if.then10604:                                     ; preds = %if.then10574
  %conv10606 = zext i32 %add10026 to i64
  %conv10608 = zext i32 %add10163 to i64
  %conv10609 = zext i32 %strideC1J to i64
  %mul10610 = mul nuw i64 %conv10608, %conv10609
  %conv10612 = zext i32 %rem25 to i64
  %conv10613 = zext i32 %strideCK to i64
  %mul10614 = mul nuw i64 %conv10612, %conv10613
  %add10611 = add i64 %mul10614, %conv10606
  %add10615 = add i64 %add10611, %mul10610
  %x10617 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10615, i32 0
  %370 = load double, double* %x10617, align 8, !tbaa !19
  %mul10618 = fmul double %beta.coerce.elt, %370
  %add10621 = fadd double %add10588, %mul10618
  %y10636 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10615, i32 1
  %371 = load double, double* %y10636, align 8, !tbaa !21
  %mul10637 = fmul double %beta.coerce.elt, %371
  %add10640 = fadd double %add10599, %mul10637
  br label %if.end10643

if.end10643:                                      ; preds = %if.then10604, %if.then10574
  %rC.sroa.497.2.in = phi double [ %add10621, %if.then10604 ], [ %add10588, %if.then10574 ]
  %rC.sroa.533.2 = phi double [ %add10640, %if.then10604 ], [ %add10599, %if.then10574 ]
  %cmp10645 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv10649 = zext i32 %add10026 to i64
  %conv10651 = zext i32 %add10163 to i64
  br i1 %cmp10645, label %if.then10646, label %if.end10643.if.end10686_crit_edge

if.end10643.if.end10686_crit_edge:                ; preds = %if.end10643
  %.pre17265 = zext i32 %rem25 to i64
  br label %if.end10686

if.then10646:                                     ; preds = %if.end10643
  %conv10652 = zext i32 %strideC1J to i64
  %mul10653 = mul nuw i64 %conv10651, %conv10652
  %conv10655 = zext i32 %rem25 to i64
  %conv10656 = zext i32 %strideCK to i64
  %mul10657 = mul nuw i64 %conv10655, %conv10656
  %add10654 = add i64 %mul10657, %conv10649
  %add10658 = add i64 %add10654, %mul10653
  %y10660 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10658, i32 1
  %372 = load double, double* %y10660, align 8, !tbaa !21
  %373 = fmul double %beta.coerce.elt12917, %372
  %add10664 = fsub double %rC.sroa.497.2.in, %373
  %x10679 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10658, i32 0
  %374 = load double, double* %x10679, align 8, !tbaa !19
  %mul10680 = fmul double %beta.coerce.elt12917, %374
  %add10683 = fadd double %rC.sroa.533.2, %mul10680
  br label %if.end10686

if.end10686:                                      ; preds = %if.then10646, %if.end10643.if.end10686_crit_edge
  %conv10694.pre-phi = phi i64 [ %.pre17265, %if.end10643.if.end10686_crit_edge ], [ %conv10655, %if.then10646 ]
  %rC.sroa.497.3.in = phi double [ %rC.sroa.497.2.in, %if.end10643.if.end10686_crit_edge ], [ %add10664, %if.then10646 ]
  %rC.sroa.533.3 = phi double [ %rC.sroa.533.2, %if.end10643.if.end10686_crit_edge ], [ %add10683, %if.then10646 ]
  %conv10691 = zext i32 %strideD1J to i64
  %mul10692 = mul nuw i64 %conv10651, %conv10691
  %conv10695 = zext i32 %strideDK to i64
  %mul10696 = mul nuw i64 %conv10694.pre-phi, %conv10695
  %add10693 = add i64 %mul10696, %conv10649
  %add10697 = add i64 %add10693, %mul10692
  %375 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10697, i32 0
  store double %rC.sroa.497.3.in, double* %375, align 8
  %rC.sroa.533.112..sroa_idx15773 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10697, i32 1
  store double %rC.sroa.533.3, double* %rC.sroa.533.112..sroa_idx15773, align 8
  br label %if.end10700

if.end10700:                                      ; preds = %if.end10686, %if.end10565
  %add10703 = add i32 %add9620, 16
  %cmp10708 = icmp ult i32 %add10703, %size1J
  %or.cond16976 = and i1 %cmp9625, %cmp10708
  br i1 %or.cond16976, label %if.then10709, label %if.end10835

if.then10709:                                     ; preds = %if.end10700
  %mul10715 = fmul double %alpha.coerce.elt, %.lcssa17040
  %376 = fmul double %alpha.coerce.elt12915, %rC.sroa.604.1.lcssa
  %add10723 = fsub double %mul10715, %376
  %mul10729 = fmul double %alpha.coerce.elt, %rC.sroa.604.1.lcssa
  %mul10731 = fmul double %alpha.coerce.elt12915, %.lcssa17040
  %add10734 = fadd double %mul10731, %mul10729
  %cmp10738 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp10738, label %if.then10739, label %if.end10778

if.then10739:                                     ; preds = %if.then10709
  %conv10741 = zext i32 %add9616 to i64
  %conv10743 = zext i32 %add10703 to i64
  %conv10744 = zext i32 %strideC1J to i64
  %mul10745 = mul nuw i64 %conv10743, %conv10744
  %conv10747 = zext i32 %rem25 to i64
  %conv10748 = zext i32 %strideCK to i64
  %mul10749 = mul nuw i64 %conv10747, %conv10748
  %add10746 = add i64 %mul10749, %conv10741
  %add10750 = add i64 %add10746, %mul10745
  %x10752 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10750, i32 0
  %377 = load double, double* %x10752, align 8, !tbaa !19
  %mul10753 = fmul double %beta.coerce.elt, %377
  %add10756 = fadd double %add10723, %mul10753
  %y10771 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10750, i32 1
  %378 = load double, double* %y10771, align 8, !tbaa !21
  %mul10772 = fmul double %beta.coerce.elt, %378
  %add10775 = fadd double %add10734, %mul10772
  br label %if.end10778

if.end10778:                                      ; preds = %if.then10739, %if.then10709
  %rC.sroa.568.2.in = phi double [ %add10756, %if.then10739 ], [ %add10723, %if.then10709 ]
  %rC.sroa.604.2 = phi double [ %add10775, %if.then10739 ], [ %add10734, %if.then10709 ]
  %cmp10780 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv10784 = zext i32 %add9616 to i64
  %conv10786 = zext i32 %add10703 to i64
  br i1 %cmp10780, label %if.then10781, label %if.end10778.if.end10821_crit_edge

if.end10778.if.end10821_crit_edge:                ; preds = %if.end10778
  %.pre17268 = zext i32 %rem25 to i64
  br label %if.end10821

if.then10781:                                     ; preds = %if.end10778
  %conv10787 = zext i32 %strideC1J to i64
  %mul10788 = mul nuw i64 %conv10786, %conv10787
  %conv10790 = zext i32 %rem25 to i64
  %conv10791 = zext i32 %strideCK to i64
  %mul10792 = mul nuw i64 %conv10790, %conv10791
  %add10789 = add i64 %mul10792, %conv10784
  %add10793 = add i64 %add10789, %mul10788
  %y10795 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10793, i32 1
  %379 = load double, double* %y10795, align 8, !tbaa !21
  %380 = fmul double %beta.coerce.elt12917, %379
  %add10799 = fsub double %rC.sroa.568.2.in, %380
  %x10814 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10793, i32 0
  %381 = load double, double* %x10814, align 8, !tbaa !19
  %mul10815 = fmul double %beta.coerce.elt12917, %381
  %add10818 = fadd double %rC.sroa.604.2, %mul10815
  br label %if.end10821

if.end10821:                                      ; preds = %if.then10781, %if.end10778.if.end10821_crit_edge
  %conv10829.pre-phi = phi i64 [ %.pre17268, %if.end10778.if.end10821_crit_edge ], [ %conv10790, %if.then10781 ]
  %rC.sroa.568.3.in = phi double [ %rC.sroa.568.2.in, %if.end10778.if.end10821_crit_edge ], [ %add10799, %if.then10781 ]
  %rC.sroa.604.3 = phi double [ %rC.sroa.604.2, %if.end10778.if.end10821_crit_edge ], [ %add10818, %if.then10781 ]
  %conv10826 = zext i32 %strideD1J to i64
  %mul10827 = mul nuw i64 %conv10786, %conv10826
  %conv10830 = zext i32 %strideDK to i64
  %mul10831 = mul nuw i64 %conv10829.pre-phi, %conv10830
  %add10828 = add i64 %mul10831, %conv10784
  %add10832 = add i64 %add10828, %mul10827
  %382 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10832, i32 0
  store double %rC.sroa.568.3.in, double* %382, align 8
  %rC.sroa.604.128..sroa_idx15796 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10832, i32 1
  store double %rC.sroa.604.3, double* %rC.sroa.604.128..sroa_idx15796, align 8
  br label %if.end10835

if.end10835:                                      ; preds = %if.end10821, %if.end10700
  %or.cond16977 = and i1 %cmp9760, %cmp10708
  br i1 %or.cond16977, label %if.then10844, label %if.end10970

if.then10844:                                     ; preds = %if.end10835
  %mul10850 = fmul double %alpha.coerce.elt, %.lcssa17039
  %383 = fmul double %alpha.coerce.elt12915, %rC.sroa.675.1.lcssa
  %add10858 = fsub double %mul10850, %383
  %mul10864 = fmul double %alpha.coerce.elt, %rC.sroa.675.1.lcssa
  %mul10866 = fmul double %alpha.coerce.elt12915, %.lcssa17039
  %add10869 = fadd double %mul10866, %mul10864
  %cmp10873 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp10873, label %if.then10874, label %if.end10913

if.then10874:                                     ; preds = %if.then10844
  %conv10876 = zext i32 %add9756 to i64
  %conv10878 = zext i32 %add10703 to i64
  %conv10879 = zext i32 %strideC1J to i64
  %mul10880 = mul nuw i64 %conv10878, %conv10879
  %conv10882 = zext i32 %rem25 to i64
  %conv10883 = zext i32 %strideCK to i64
  %mul10884 = mul nuw i64 %conv10882, %conv10883
  %add10881 = add i64 %mul10884, %conv10876
  %add10885 = add i64 %add10881, %mul10880
  %x10887 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10885, i32 0
  %384 = load double, double* %x10887, align 8, !tbaa !19
  %mul10888 = fmul double %beta.coerce.elt, %384
  %add10891 = fadd double %add10858, %mul10888
  %y10906 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10885, i32 1
  %385 = load double, double* %y10906, align 8, !tbaa !21
  %mul10907 = fmul double %beta.coerce.elt, %385
  %add10910 = fadd double %add10869, %mul10907
  br label %if.end10913

if.end10913:                                      ; preds = %if.then10874, %if.then10844
  %rC.sroa.639.2.in = phi double [ %add10891, %if.then10874 ], [ %add10858, %if.then10844 ]
  %rC.sroa.675.2 = phi double [ %add10910, %if.then10874 ], [ %add10869, %if.then10844 ]
  %cmp10915 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv10919 = zext i32 %add9756 to i64
  %conv10921 = zext i32 %add10703 to i64
  br i1 %cmp10915, label %if.then10916, label %if.end10913.if.end10956_crit_edge

if.end10913.if.end10956_crit_edge:                ; preds = %if.end10913
  %.pre17271 = zext i32 %rem25 to i64
  br label %if.end10956

if.then10916:                                     ; preds = %if.end10913
  %conv10922 = zext i32 %strideC1J to i64
  %mul10923 = mul nuw i64 %conv10921, %conv10922
  %conv10925 = zext i32 %rem25 to i64
  %conv10926 = zext i32 %strideCK to i64
  %mul10927 = mul nuw i64 %conv10925, %conv10926
  %add10924 = add i64 %mul10927, %conv10919
  %add10928 = add i64 %add10924, %mul10923
  %y10930 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10928, i32 1
  %386 = load double, double* %y10930, align 8, !tbaa !21
  %387 = fmul double %beta.coerce.elt12917, %386
  %add10934 = fsub double %rC.sroa.639.2.in, %387
  %x10949 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add10928, i32 0
  %388 = load double, double* %x10949, align 8, !tbaa !19
  %mul10950 = fmul double %beta.coerce.elt12917, %388
  %add10953 = fadd double %rC.sroa.675.2, %mul10950
  br label %if.end10956

if.end10956:                                      ; preds = %if.then10916, %if.end10913.if.end10956_crit_edge
  %conv10964.pre-phi = phi i64 [ %.pre17271, %if.end10913.if.end10956_crit_edge ], [ %conv10925, %if.then10916 ]
  %rC.sroa.639.3.in = phi double [ %rC.sroa.639.2.in, %if.end10913.if.end10956_crit_edge ], [ %add10934, %if.then10916 ]
  %rC.sroa.675.3 = phi double [ %rC.sroa.675.2, %if.end10913.if.end10956_crit_edge ], [ %add10953, %if.then10916 ]
  %conv10961 = zext i32 %strideD1J to i64
  %mul10962 = mul nuw i64 %conv10921, %conv10961
  %conv10965 = zext i32 %strideDK to i64
  %mul10966 = mul nuw i64 %conv10964.pre-phi, %conv10965
  %add10963 = add i64 %mul10966, %conv10919
  %add10967 = add i64 %add10963, %mul10962
  %389 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10967, i32 0
  store double %rC.sroa.639.3.in, double* %389, align 8
  %rC.sroa.675.144..sroa_idx15819 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add10967, i32 1
  store double %rC.sroa.675.3, double* %rC.sroa.675.144..sroa_idx15819, align 8
  br label %if.end10970

if.end10970:                                      ; preds = %if.end10956, %if.end10835
  %or.cond16978 = and i1 %cmp9895, %cmp10708
  br i1 %or.cond16978, label %if.then10979, label %if.end11105

if.then10979:                                     ; preds = %if.end10970
  %mul10985 = fmul double %alpha.coerce.elt, %.lcssa17038
  %390 = fmul double %alpha.coerce.elt12915, %rC.sroa.746.1.lcssa
  %add10993 = fsub double %mul10985, %390
  %mul10999 = fmul double %alpha.coerce.elt, %rC.sroa.746.1.lcssa
  %mul11001 = fmul double %alpha.coerce.elt12915, %.lcssa17038
  %add11004 = fadd double %mul11001, %mul10999
  %cmp11008 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp11008, label %if.then11009, label %if.end11048

if.then11009:                                     ; preds = %if.then10979
  %conv11011 = zext i32 %add9891 to i64
  %conv11013 = zext i32 %add10703 to i64
  %conv11014 = zext i32 %strideC1J to i64
  %mul11015 = mul nuw i64 %conv11013, %conv11014
  %conv11017 = zext i32 %rem25 to i64
  %conv11018 = zext i32 %strideCK to i64
  %mul11019 = mul nuw i64 %conv11017, %conv11018
  %add11016 = add i64 %mul11019, %conv11011
  %add11020 = add i64 %add11016, %mul11015
  %x11022 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11020, i32 0
  %391 = load double, double* %x11022, align 8, !tbaa !19
  %mul11023 = fmul double %beta.coerce.elt, %391
  %add11026 = fadd double %add10993, %mul11023
  %y11041 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11020, i32 1
  %392 = load double, double* %y11041, align 8, !tbaa !21
  %mul11042 = fmul double %beta.coerce.elt, %392
  %add11045 = fadd double %add11004, %mul11042
  br label %if.end11048

if.end11048:                                      ; preds = %if.then11009, %if.then10979
  %rC.sroa.710.2.in = phi double [ %add11026, %if.then11009 ], [ %add10993, %if.then10979 ]
  %rC.sroa.746.2 = phi double [ %add11045, %if.then11009 ], [ %add11004, %if.then10979 ]
  %cmp11050 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv11054 = zext i32 %add9891 to i64
  %conv11056 = zext i32 %add10703 to i64
  br i1 %cmp11050, label %if.then11051, label %if.end11048.if.end11091_crit_edge

if.end11048.if.end11091_crit_edge:                ; preds = %if.end11048
  %.pre17274 = zext i32 %rem25 to i64
  br label %if.end11091

if.then11051:                                     ; preds = %if.end11048
  %conv11057 = zext i32 %strideC1J to i64
  %mul11058 = mul nuw i64 %conv11056, %conv11057
  %conv11060 = zext i32 %rem25 to i64
  %conv11061 = zext i32 %strideCK to i64
  %mul11062 = mul nuw i64 %conv11060, %conv11061
  %add11059 = add i64 %mul11062, %conv11054
  %add11063 = add i64 %add11059, %mul11058
  %y11065 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11063, i32 1
  %393 = load double, double* %y11065, align 8, !tbaa !21
  %394 = fmul double %beta.coerce.elt12917, %393
  %add11069 = fsub double %rC.sroa.710.2.in, %394
  %x11084 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11063, i32 0
  %395 = load double, double* %x11084, align 8, !tbaa !19
  %mul11085 = fmul double %beta.coerce.elt12917, %395
  %add11088 = fadd double %rC.sroa.746.2, %mul11085
  br label %if.end11091

if.end11091:                                      ; preds = %if.then11051, %if.end11048.if.end11091_crit_edge
  %conv11099.pre-phi = phi i64 [ %.pre17274, %if.end11048.if.end11091_crit_edge ], [ %conv11060, %if.then11051 ]
  %rC.sroa.710.3.in = phi double [ %rC.sroa.710.2.in, %if.end11048.if.end11091_crit_edge ], [ %add11069, %if.then11051 ]
  %rC.sroa.746.3 = phi double [ %rC.sroa.746.2, %if.end11048.if.end11091_crit_edge ], [ %add11088, %if.then11051 ]
  %conv11096 = zext i32 %strideD1J to i64
  %mul11097 = mul nuw i64 %conv11056, %conv11096
  %conv11100 = zext i32 %strideDK to i64
  %mul11101 = mul nuw i64 %conv11099.pre-phi, %conv11100
  %add11098 = add i64 %mul11101, %conv11054
  %add11102 = add i64 %add11098, %mul11097
  %396 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11102, i32 0
  store double %rC.sroa.710.3.in, double* %396, align 8
  %rC.sroa.746.160..sroa_idx15842 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11102, i32 1
  store double %rC.sroa.746.3, double* %rC.sroa.746.160..sroa_idx15842, align 8
  br label %if.end11105

if.end11105:                                      ; preds = %if.end11091, %if.end10970
  %or.cond16979 = and i1 %cmp10030, %cmp10708
  br i1 %or.cond16979, label %if.then11114, label %if.end11240

if.then11114:                                     ; preds = %if.end11105
  %mul11120 = fmul double %alpha.coerce.elt, %.lcssa17037
  %397 = fmul double %alpha.coerce.elt12915, %rC.sroa.817.1.lcssa
  %add11128 = fsub double %mul11120, %397
  %mul11134 = fmul double %alpha.coerce.elt, %rC.sroa.817.1.lcssa
  %mul11136 = fmul double %alpha.coerce.elt12915, %.lcssa17037
  %add11139 = fadd double %mul11136, %mul11134
  %cmp11143 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp11143, label %if.then11144, label %if.end11183

if.then11144:                                     ; preds = %if.then11114
  %conv11146 = zext i32 %add10026 to i64
  %conv11148 = zext i32 %add10703 to i64
  %conv11149 = zext i32 %strideC1J to i64
  %mul11150 = mul nuw i64 %conv11148, %conv11149
  %conv11152 = zext i32 %rem25 to i64
  %conv11153 = zext i32 %strideCK to i64
  %mul11154 = mul nuw i64 %conv11152, %conv11153
  %add11151 = add i64 %mul11154, %conv11146
  %add11155 = add i64 %add11151, %mul11150
  %x11157 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11155, i32 0
  %398 = load double, double* %x11157, align 8, !tbaa !19
  %mul11158 = fmul double %beta.coerce.elt, %398
  %add11161 = fadd double %add11128, %mul11158
  %y11176 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11155, i32 1
  %399 = load double, double* %y11176, align 8, !tbaa !21
  %mul11177 = fmul double %beta.coerce.elt, %399
  %add11180 = fadd double %add11139, %mul11177
  br label %if.end11183

if.end11183:                                      ; preds = %if.then11144, %if.then11114
  %rC.sroa.781.2.in = phi double [ %add11161, %if.then11144 ], [ %add11128, %if.then11114 ]
  %rC.sroa.817.2 = phi double [ %add11180, %if.then11144 ], [ %add11139, %if.then11114 ]
  %cmp11185 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv11189 = zext i32 %add10026 to i64
  %conv11191 = zext i32 %add10703 to i64
  br i1 %cmp11185, label %if.then11186, label %if.end11183.if.end11226_crit_edge

if.end11183.if.end11226_crit_edge:                ; preds = %if.end11183
  %.pre17277 = zext i32 %rem25 to i64
  br label %if.end11226

if.then11186:                                     ; preds = %if.end11183
  %conv11192 = zext i32 %strideC1J to i64
  %mul11193 = mul nuw i64 %conv11191, %conv11192
  %conv11195 = zext i32 %rem25 to i64
  %conv11196 = zext i32 %strideCK to i64
  %mul11197 = mul nuw i64 %conv11195, %conv11196
  %add11194 = add i64 %mul11197, %conv11189
  %add11198 = add i64 %add11194, %mul11193
  %y11200 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11198, i32 1
  %400 = load double, double* %y11200, align 8, !tbaa !21
  %401 = fmul double %beta.coerce.elt12917, %400
  %add11204 = fsub double %rC.sroa.781.2.in, %401
  %x11219 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11198, i32 0
  %402 = load double, double* %x11219, align 8, !tbaa !19
  %mul11220 = fmul double %beta.coerce.elt12917, %402
  %add11223 = fadd double %rC.sroa.817.2, %mul11220
  br label %if.end11226

if.end11226:                                      ; preds = %if.then11186, %if.end11183.if.end11226_crit_edge
  %conv11234.pre-phi = phi i64 [ %.pre17277, %if.end11183.if.end11226_crit_edge ], [ %conv11195, %if.then11186 ]
  %rC.sroa.781.3.in = phi double [ %rC.sroa.781.2.in, %if.end11183.if.end11226_crit_edge ], [ %add11204, %if.then11186 ]
  %rC.sroa.817.3 = phi double [ %rC.sroa.817.2, %if.end11183.if.end11226_crit_edge ], [ %add11223, %if.then11186 ]
  %conv11231 = zext i32 %strideD1J to i64
  %mul11232 = mul nuw i64 %conv11191, %conv11231
  %conv11235 = zext i32 %strideDK to i64
  %mul11236 = mul nuw i64 %conv11234.pre-phi, %conv11235
  %add11233 = add i64 %mul11236, %conv11189
  %add11237 = add i64 %add11233, %mul11232
  %403 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11237, i32 0
  store double %rC.sroa.781.3.in, double* %403, align 8
  %rC.sroa.817.176..sroa_idx15865 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11237, i32 1
  store double %rC.sroa.817.3, double* %rC.sroa.817.176..sroa_idx15865, align 8
  br label %if.end11240

if.end11240:                                      ; preds = %if.end11226, %if.end11105
  %add11243 = add i32 %add9620, 24
  %cmp11248 = icmp ult i32 %add11243, %size1J
  %or.cond16980 = and i1 %cmp9625, %cmp11248
  br i1 %or.cond16980, label %if.then11249, label %if.end11375

if.then11249:                                     ; preds = %if.end11240
  %mul11255 = fmul double %alpha.coerce.elt, %.lcssa17036
  %404 = fmul double %alpha.coerce.elt12915, %rC.sroa.888.1.lcssa
  %add11263 = fsub double %mul11255, %404
  %mul11269 = fmul double %alpha.coerce.elt, %rC.sroa.888.1.lcssa
  %mul11271 = fmul double %alpha.coerce.elt12915, %.lcssa17036
  %add11274 = fadd double %mul11271, %mul11269
  %cmp11278 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp11278, label %if.then11279, label %if.end11318

if.then11279:                                     ; preds = %if.then11249
  %conv11281 = zext i32 %add9616 to i64
  %conv11283 = zext i32 %add11243 to i64
  %conv11284 = zext i32 %strideC1J to i64
  %mul11285 = mul nuw i64 %conv11283, %conv11284
  %conv11287 = zext i32 %rem25 to i64
  %conv11288 = zext i32 %strideCK to i64
  %mul11289 = mul nuw i64 %conv11287, %conv11288
  %add11286 = add i64 %mul11289, %conv11281
  %add11290 = add i64 %add11286, %mul11285
  %x11292 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11290, i32 0
  %405 = load double, double* %x11292, align 8, !tbaa !19
  %mul11293 = fmul double %beta.coerce.elt, %405
  %add11296 = fadd double %add11263, %mul11293
  %y11311 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11290, i32 1
  %406 = load double, double* %y11311, align 8, !tbaa !21
  %mul11312 = fmul double %beta.coerce.elt, %406
  %add11315 = fadd double %add11274, %mul11312
  br label %if.end11318

if.end11318:                                      ; preds = %if.then11279, %if.then11249
  %rC.sroa.852.2.in = phi double [ %add11296, %if.then11279 ], [ %add11263, %if.then11249 ]
  %rC.sroa.888.2 = phi double [ %add11315, %if.then11279 ], [ %add11274, %if.then11249 ]
  %cmp11320 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv11324 = zext i32 %add9616 to i64
  %conv11326 = zext i32 %add11243 to i64
  br i1 %cmp11320, label %if.then11321, label %if.end11318.if.end11361_crit_edge

if.end11318.if.end11361_crit_edge:                ; preds = %if.end11318
  %.pre17280 = zext i32 %rem25 to i64
  br label %if.end11361

if.then11321:                                     ; preds = %if.end11318
  %conv11327 = zext i32 %strideC1J to i64
  %mul11328 = mul nuw i64 %conv11326, %conv11327
  %conv11330 = zext i32 %rem25 to i64
  %conv11331 = zext i32 %strideCK to i64
  %mul11332 = mul nuw i64 %conv11330, %conv11331
  %add11329 = add i64 %mul11332, %conv11324
  %add11333 = add i64 %add11329, %mul11328
  %y11335 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11333, i32 1
  %407 = load double, double* %y11335, align 8, !tbaa !21
  %408 = fmul double %beta.coerce.elt12917, %407
  %add11339 = fsub double %rC.sroa.852.2.in, %408
  %x11354 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11333, i32 0
  %409 = load double, double* %x11354, align 8, !tbaa !19
  %mul11355 = fmul double %beta.coerce.elt12917, %409
  %add11358 = fadd double %rC.sroa.888.2, %mul11355
  br label %if.end11361

if.end11361:                                      ; preds = %if.then11321, %if.end11318.if.end11361_crit_edge
  %conv11369.pre-phi = phi i64 [ %.pre17280, %if.end11318.if.end11361_crit_edge ], [ %conv11330, %if.then11321 ]
  %rC.sroa.852.3.in = phi double [ %rC.sroa.852.2.in, %if.end11318.if.end11361_crit_edge ], [ %add11339, %if.then11321 ]
  %rC.sroa.888.3 = phi double [ %rC.sroa.888.2, %if.end11318.if.end11361_crit_edge ], [ %add11358, %if.then11321 ]
  %conv11366 = zext i32 %strideD1J to i64
  %mul11367 = mul nuw i64 %conv11326, %conv11366
  %conv11370 = zext i32 %strideDK to i64
  %mul11371 = mul nuw i64 %conv11369.pre-phi, %conv11370
  %add11368 = add i64 %mul11371, %conv11324
  %add11372 = add i64 %add11368, %mul11367
  %410 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11372, i32 0
  store double %rC.sroa.852.3.in, double* %410, align 8
  %rC.sroa.888.192..sroa_idx15888 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11372, i32 1
  store double %rC.sroa.888.3, double* %rC.sroa.888.192..sroa_idx15888, align 8
  br label %if.end11375

if.end11375:                                      ; preds = %if.end11361, %if.end11240
  %or.cond16981 = and i1 %cmp9760, %cmp11248
  br i1 %or.cond16981, label %if.then11384, label %if.end11510

if.then11384:                                     ; preds = %if.end11375
  %mul11390 = fmul double %alpha.coerce.elt, %.lcssa17035
  %411 = fmul double %alpha.coerce.elt12915, %rC.sroa.959.1.lcssa
  %add11398 = fsub double %mul11390, %411
  %mul11404 = fmul double %alpha.coerce.elt, %rC.sroa.959.1.lcssa
  %mul11406 = fmul double %alpha.coerce.elt12915, %.lcssa17035
  %add11409 = fadd double %mul11406, %mul11404
  %cmp11413 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp11413, label %if.then11414, label %if.end11453

if.then11414:                                     ; preds = %if.then11384
  %conv11416 = zext i32 %add9756 to i64
  %conv11418 = zext i32 %add11243 to i64
  %conv11419 = zext i32 %strideC1J to i64
  %mul11420 = mul nuw i64 %conv11418, %conv11419
  %conv11422 = zext i32 %rem25 to i64
  %conv11423 = zext i32 %strideCK to i64
  %mul11424 = mul nuw i64 %conv11422, %conv11423
  %add11421 = add i64 %mul11424, %conv11416
  %add11425 = add i64 %add11421, %mul11420
  %x11427 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11425, i32 0
  %412 = load double, double* %x11427, align 8, !tbaa !19
  %mul11428 = fmul double %beta.coerce.elt, %412
  %add11431 = fadd double %add11398, %mul11428
  %y11446 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11425, i32 1
  %413 = load double, double* %y11446, align 8, !tbaa !21
  %mul11447 = fmul double %beta.coerce.elt, %413
  %add11450 = fadd double %add11409, %mul11447
  br label %if.end11453

if.end11453:                                      ; preds = %if.then11414, %if.then11384
  %rC.sroa.923.2.in = phi double [ %add11431, %if.then11414 ], [ %add11398, %if.then11384 ]
  %rC.sroa.959.2 = phi double [ %add11450, %if.then11414 ], [ %add11409, %if.then11384 ]
  %cmp11455 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv11459 = zext i32 %add9756 to i64
  %conv11461 = zext i32 %add11243 to i64
  br i1 %cmp11455, label %if.then11456, label %if.end11453.if.end11496_crit_edge

if.end11453.if.end11496_crit_edge:                ; preds = %if.end11453
  %.pre17283 = zext i32 %rem25 to i64
  br label %if.end11496

if.then11456:                                     ; preds = %if.end11453
  %conv11462 = zext i32 %strideC1J to i64
  %mul11463 = mul nuw i64 %conv11461, %conv11462
  %conv11465 = zext i32 %rem25 to i64
  %conv11466 = zext i32 %strideCK to i64
  %mul11467 = mul nuw i64 %conv11465, %conv11466
  %add11464 = add i64 %mul11467, %conv11459
  %add11468 = add i64 %add11464, %mul11463
  %y11470 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11468, i32 1
  %414 = load double, double* %y11470, align 8, !tbaa !21
  %415 = fmul double %beta.coerce.elt12917, %414
  %add11474 = fsub double %rC.sroa.923.2.in, %415
  %x11489 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11468, i32 0
  %416 = load double, double* %x11489, align 8, !tbaa !19
  %mul11490 = fmul double %beta.coerce.elt12917, %416
  %add11493 = fadd double %rC.sroa.959.2, %mul11490
  br label %if.end11496

if.end11496:                                      ; preds = %if.then11456, %if.end11453.if.end11496_crit_edge
  %conv11504.pre-phi = phi i64 [ %.pre17283, %if.end11453.if.end11496_crit_edge ], [ %conv11465, %if.then11456 ]
  %rC.sroa.923.3.in = phi double [ %rC.sroa.923.2.in, %if.end11453.if.end11496_crit_edge ], [ %add11474, %if.then11456 ]
  %rC.sroa.959.3 = phi double [ %rC.sroa.959.2, %if.end11453.if.end11496_crit_edge ], [ %add11493, %if.then11456 ]
  %conv11501 = zext i32 %strideD1J to i64
  %mul11502 = mul nuw i64 %conv11461, %conv11501
  %conv11505 = zext i32 %strideDK to i64
  %mul11506 = mul nuw i64 %conv11504.pre-phi, %conv11505
  %add11503 = add i64 %mul11506, %conv11459
  %add11507 = add i64 %add11503, %mul11502
  %417 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11507, i32 0
  store double %rC.sroa.923.3.in, double* %417, align 8
  %rC.sroa.959.208..sroa_idx15911 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11507, i32 1
  store double %rC.sroa.959.3, double* %rC.sroa.959.208..sroa_idx15911, align 8
  br label %if.end11510

if.end11510:                                      ; preds = %if.end11496, %if.end11375
  %or.cond16982 = and i1 %cmp9895, %cmp11248
  br i1 %or.cond16982, label %if.then11519, label %if.end11645

if.then11519:                                     ; preds = %if.end11510
  %mul11525 = fmul double %alpha.coerce.elt, %.lcssa17034
  %418 = fmul double %alpha.coerce.elt12915, %rC.sroa.1030.1.lcssa
  %add11533 = fsub double %mul11525, %418
  %mul11539 = fmul double %alpha.coerce.elt, %rC.sroa.1030.1.lcssa
  %mul11541 = fmul double %alpha.coerce.elt12915, %.lcssa17034
  %add11544 = fadd double %mul11541, %mul11539
  %cmp11548 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp11548, label %if.then11549, label %if.end11588

if.then11549:                                     ; preds = %if.then11519
  %conv11551 = zext i32 %add9891 to i64
  %conv11553 = zext i32 %add11243 to i64
  %conv11554 = zext i32 %strideC1J to i64
  %mul11555 = mul nuw i64 %conv11553, %conv11554
  %conv11557 = zext i32 %rem25 to i64
  %conv11558 = zext i32 %strideCK to i64
  %mul11559 = mul nuw i64 %conv11557, %conv11558
  %add11556 = add i64 %mul11559, %conv11551
  %add11560 = add i64 %add11556, %mul11555
  %x11562 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11560, i32 0
  %419 = load double, double* %x11562, align 8, !tbaa !19
  %mul11563 = fmul double %beta.coerce.elt, %419
  %add11566 = fadd double %add11533, %mul11563
  %y11581 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11560, i32 1
  %420 = load double, double* %y11581, align 8, !tbaa !21
  %mul11582 = fmul double %beta.coerce.elt, %420
  %add11585 = fadd double %add11544, %mul11582
  br label %if.end11588

if.end11588:                                      ; preds = %if.then11549, %if.then11519
  %rC.sroa.994.2.in = phi double [ %add11566, %if.then11549 ], [ %add11533, %if.then11519 ]
  %rC.sroa.1030.2 = phi double [ %add11585, %if.then11549 ], [ %add11544, %if.then11519 ]
  %cmp11590 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv11594 = zext i32 %add9891 to i64
  %conv11596 = zext i32 %add11243 to i64
  br i1 %cmp11590, label %if.then11591, label %if.end11588.if.end11631_crit_edge

if.end11588.if.end11631_crit_edge:                ; preds = %if.end11588
  %.pre17286 = zext i32 %rem25 to i64
  br label %if.end11631

if.then11591:                                     ; preds = %if.end11588
  %conv11597 = zext i32 %strideC1J to i64
  %mul11598 = mul nuw i64 %conv11596, %conv11597
  %conv11600 = zext i32 %rem25 to i64
  %conv11601 = zext i32 %strideCK to i64
  %mul11602 = mul nuw i64 %conv11600, %conv11601
  %add11599 = add i64 %mul11602, %conv11594
  %add11603 = add i64 %add11599, %mul11598
  %y11605 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11603, i32 1
  %421 = load double, double* %y11605, align 8, !tbaa !21
  %422 = fmul double %beta.coerce.elt12917, %421
  %add11609 = fsub double %rC.sroa.994.2.in, %422
  %x11624 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11603, i32 0
  %423 = load double, double* %x11624, align 8, !tbaa !19
  %mul11625 = fmul double %beta.coerce.elt12917, %423
  %add11628 = fadd double %rC.sroa.1030.2, %mul11625
  br label %if.end11631

if.end11631:                                      ; preds = %if.then11591, %if.end11588.if.end11631_crit_edge
  %conv11639.pre-phi = phi i64 [ %.pre17286, %if.end11588.if.end11631_crit_edge ], [ %conv11600, %if.then11591 ]
  %rC.sroa.994.3.in = phi double [ %rC.sroa.994.2.in, %if.end11588.if.end11631_crit_edge ], [ %add11609, %if.then11591 ]
  %rC.sroa.1030.3 = phi double [ %rC.sroa.1030.2, %if.end11588.if.end11631_crit_edge ], [ %add11628, %if.then11591 ]
  %conv11636 = zext i32 %strideD1J to i64
  %mul11637 = mul nuw i64 %conv11596, %conv11636
  %conv11640 = zext i32 %strideDK to i64
  %mul11641 = mul nuw i64 %conv11639.pre-phi, %conv11640
  %add11638 = add i64 %mul11641, %conv11594
  %add11642 = add i64 %add11638, %mul11637
  %424 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11642, i32 0
  store double %rC.sroa.994.3.in, double* %424, align 8
  %rC.sroa.1030.224..sroa_idx15934 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11642, i32 1
  store double %rC.sroa.1030.3, double* %rC.sroa.1030.224..sroa_idx15934, align 8
  br label %if.end11645

if.end11645:                                      ; preds = %if.end11631, %if.end11510
  %or.cond16983 = and i1 %cmp10030, %cmp11248
  br i1 %or.cond16983, label %if.then11654, label %if.end11780

if.then11654:                                     ; preds = %if.end11645
  %mul11660 = fmul double %alpha.coerce.elt, %.lcssa17033
  %425 = fmul double %alpha.coerce.elt12915, %rC.sroa.1101.1.lcssa
  %add11668 = fsub double %mul11660, %425
  %mul11674 = fmul double %alpha.coerce.elt, %rC.sroa.1101.1.lcssa
  %mul11676 = fmul double %alpha.coerce.elt12915, %.lcssa17033
  %add11679 = fadd double %mul11676, %mul11674
  %cmp11683 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp11683, label %if.then11684, label %if.end11723

if.then11684:                                     ; preds = %if.then11654
  %conv11686 = zext i32 %add10026 to i64
  %conv11688 = zext i32 %add11243 to i64
  %conv11689 = zext i32 %strideC1J to i64
  %mul11690 = mul nuw i64 %conv11688, %conv11689
  %conv11692 = zext i32 %rem25 to i64
  %conv11693 = zext i32 %strideCK to i64
  %mul11694 = mul nuw i64 %conv11692, %conv11693
  %add11691 = add i64 %mul11694, %conv11686
  %add11695 = add i64 %add11691, %mul11690
  %x11697 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11695, i32 0
  %426 = load double, double* %x11697, align 8, !tbaa !19
  %mul11698 = fmul double %beta.coerce.elt, %426
  %add11701 = fadd double %add11668, %mul11698
  %y11716 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11695, i32 1
  %427 = load double, double* %y11716, align 8, !tbaa !21
  %mul11717 = fmul double %beta.coerce.elt, %427
  %add11720 = fadd double %add11679, %mul11717
  br label %if.end11723

if.end11723:                                      ; preds = %if.then11684, %if.then11654
  %rC.sroa.1065.2.in = phi double [ %add11701, %if.then11684 ], [ %add11668, %if.then11654 ]
  %rC.sroa.1101.2 = phi double [ %add11720, %if.then11684 ], [ %add11679, %if.then11654 ]
  %cmp11725 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv11729 = zext i32 %add10026 to i64
  %conv11731 = zext i32 %add11243 to i64
  br i1 %cmp11725, label %if.then11726, label %if.end11723.if.end11766_crit_edge

if.end11723.if.end11766_crit_edge:                ; preds = %if.end11723
  %.pre17289 = zext i32 %rem25 to i64
  br label %if.end11766

if.then11726:                                     ; preds = %if.end11723
  %conv11732 = zext i32 %strideC1J to i64
  %mul11733 = mul nuw i64 %conv11731, %conv11732
  %conv11735 = zext i32 %rem25 to i64
  %conv11736 = zext i32 %strideCK to i64
  %mul11737 = mul nuw i64 %conv11735, %conv11736
  %add11734 = add i64 %mul11737, %conv11729
  %add11738 = add i64 %add11734, %mul11733
  %y11740 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11738, i32 1
  %428 = load double, double* %y11740, align 8, !tbaa !21
  %429 = fmul double %beta.coerce.elt12917, %428
  %add11744 = fsub double %rC.sroa.1065.2.in, %429
  %x11759 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11738, i32 0
  %430 = load double, double* %x11759, align 8, !tbaa !19
  %mul11760 = fmul double %beta.coerce.elt12917, %430
  %add11763 = fadd double %rC.sroa.1101.2, %mul11760
  br label %if.end11766

if.end11766:                                      ; preds = %if.then11726, %if.end11723.if.end11766_crit_edge
  %conv11774.pre-phi = phi i64 [ %.pre17289, %if.end11723.if.end11766_crit_edge ], [ %conv11735, %if.then11726 ]
  %rC.sroa.1065.3.in = phi double [ %rC.sroa.1065.2.in, %if.end11723.if.end11766_crit_edge ], [ %add11744, %if.then11726 ]
  %rC.sroa.1101.3 = phi double [ %rC.sroa.1101.2, %if.end11723.if.end11766_crit_edge ], [ %add11763, %if.then11726 ]
  %conv11771 = zext i32 %strideD1J to i64
  %mul11772 = mul nuw i64 %conv11731, %conv11771
  %conv11775 = zext i32 %strideDK to i64
  %mul11776 = mul nuw i64 %conv11774.pre-phi, %conv11775
  %add11773 = add i64 %mul11776, %conv11729
  %add11777 = add i64 %add11773, %mul11772
  %431 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11777, i32 0
  store double %rC.sroa.1065.3.in, double* %431, align 8
  %rC.sroa.1101.240..sroa_idx15957 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11777, i32 1
  store double %rC.sroa.1101.3, double* %rC.sroa.1101.240..sroa_idx15957, align 8
  br label %if.end11780

if.end11780:                                      ; preds = %if.end11766, %if.end11645
  %add11783 = add i32 %add9620, 32
  %cmp11788 = icmp ult i32 %add11783, %size1J
  %or.cond16984 = and i1 %cmp9625, %cmp11788
  br i1 %or.cond16984, label %if.then11789, label %if.end11915

if.then11789:                                     ; preds = %if.end11780
  %mul11795 = fmul double %alpha.coerce.elt, %.lcssa17032
  %432 = fmul double %alpha.coerce.elt12915, %rC.sroa.1172.1.lcssa
  %add11803 = fsub double %mul11795, %432
  %mul11809 = fmul double %alpha.coerce.elt, %rC.sroa.1172.1.lcssa
  %mul11811 = fmul double %alpha.coerce.elt12915, %.lcssa17032
  %add11814 = fadd double %mul11811, %mul11809
  %cmp11818 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp11818, label %if.then11819, label %if.end11858

if.then11819:                                     ; preds = %if.then11789
  %conv11821 = zext i32 %add9616 to i64
  %conv11823 = zext i32 %add11783 to i64
  %conv11824 = zext i32 %strideC1J to i64
  %mul11825 = mul nuw i64 %conv11823, %conv11824
  %conv11827 = zext i32 %rem25 to i64
  %conv11828 = zext i32 %strideCK to i64
  %mul11829 = mul nuw i64 %conv11827, %conv11828
  %add11826 = add i64 %mul11829, %conv11821
  %add11830 = add i64 %add11826, %mul11825
  %x11832 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11830, i32 0
  %433 = load double, double* %x11832, align 8, !tbaa !19
  %mul11833 = fmul double %beta.coerce.elt, %433
  %add11836 = fadd double %add11803, %mul11833
  %y11851 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11830, i32 1
  %434 = load double, double* %y11851, align 8, !tbaa !21
  %mul11852 = fmul double %beta.coerce.elt, %434
  %add11855 = fadd double %add11814, %mul11852
  br label %if.end11858

if.end11858:                                      ; preds = %if.then11819, %if.then11789
  %rC.sroa.1136.2.in = phi double [ %add11836, %if.then11819 ], [ %add11803, %if.then11789 ]
  %rC.sroa.1172.2 = phi double [ %add11855, %if.then11819 ], [ %add11814, %if.then11789 ]
  %cmp11860 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv11864 = zext i32 %add9616 to i64
  %conv11866 = zext i32 %add11783 to i64
  br i1 %cmp11860, label %if.then11861, label %if.end11858.if.end11901_crit_edge

if.end11858.if.end11901_crit_edge:                ; preds = %if.end11858
  %.pre17292 = zext i32 %rem25 to i64
  br label %if.end11901

if.then11861:                                     ; preds = %if.end11858
  %conv11867 = zext i32 %strideC1J to i64
  %mul11868 = mul nuw i64 %conv11866, %conv11867
  %conv11870 = zext i32 %rem25 to i64
  %conv11871 = zext i32 %strideCK to i64
  %mul11872 = mul nuw i64 %conv11870, %conv11871
  %add11869 = add i64 %mul11872, %conv11864
  %add11873 = add i64 %add11869, %mul11868
  %y11875 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11873, i32 1
  %435 = load double, double* %y11875, align 8, !tbaa !21
  %436 = fmul double %beta.coerce.elt12917, %435
  %add11879 = fsub double %rC.sroa.1136.2.in, %436
  %x11894 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11873, i32 0
  %437 = load double, double* %x11894, align 8, !tbaa !19
  %mul11895 = fmul double %beta.coerce.elt12917, %437
  %add11898 = fadd double %rC.sroa.1172.2, %mul11895
  br label %if.end11901

if.end11901:                                      ; preds = %if.then11861, %if.end11858.if.end11901_crit_edge
  %conv11909.pre-phi = phi i64 [ %.pre17292, %if.end11858.if.end11901_crit_edge ], [ %conv11870, %if.then11861 ]
  %rC.sroa.1136.3.in = phi double [ %rC.sroa.1136.2.in, %if.end11858.if.end11901_crit_edge ], [ %add11879, %if.then11861 ]
  %rC.sroa.1172.3 = phi double [ %rC.sroa.1172.2, %if.end11858.if.end11901_crit_edge ], [ %add11898, %if.then11861 ]
  %conv11906 = zext i32 %strideD1J to i64
  %mul11907 = mul nuw i64 %conv11866, %conv11906
  %conv11910 = zext i32 %strideDK to i64
  %mul11911 = mul nuw i64 %conv11909.pre-phi, %conv11910
  %add11908 = add i64 %mul11911, %conv11864
  %add11912 = add i64 %add11908, %mul11907
  %438 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11912, i32 0
  store double %rC.sroa.1136.3.in, double* %438, align 8
  %rC.sroa.1172.256..sroa_idx15980 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add11912, i32 1
  store double %rC.sroa.1172.3, double* %rC.sroa.1172.256..sroa_idx15980, align 8
  br label %if.end11915

if.end11915:                                      ; preds = %if.end11901, %if.end11780
  %or.cond16985 = and i1 %cmp9760, %cmp11788
  br i1 %or.cond16985, label %if.then11924, label %if.end12050

if.then11924:                                     ; preds = %if.end11915
  %mul11930 = fmul double %alpha.coerce.elt, %.lcssa17031
  %439 = fmul double %alpha.coerce.elt12915, %rC.sroa.1243.1.lcssa
  %add11938 = fsub double %mul11930, %439
  %mul11944 = fmul double %alpha.coerce.elt, %rC.sroa.1243.1.lcssa
  %mul11946 = fmul double %alpha.coerce.elt12915, %.lcssa17031
  %add11949 = fadd double %mul11946, %mul11944
  %cmp11953 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp11953, label %if.then11954, label %if.end11993

if.then11954:                                     ; preds = %if.then11924
  %conv11956 = zext i32 %add9756 to i64
  %conv11958 = zext i32 %add11783 to i64
  %conv11959 = zext i32 %strideC1J to i64
  %mul11960 = mul nuw i64 %conv11958, %conv11959
  %conv11962 = zext i32 %rem25 to i64
  %conv11963 = zext i32 %strideCK to i64
  %mul11964 = mul nuw i64 %conv11962, %conv11963
  %add11961 = add i64 %mul11964, %conv11956
  %add11965 = add i64 %add11961, %mul11960
  %x11967 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11965, i32 0
  %440 = load double, double* %x11967, align 8, !tbaa !19
  %mul11968 = fmul double %beta.coerce.elt, %440
  %add11971 = fadd double %add11938, %mul11968
  %y11986 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add11965, i32 1
  %441 = load double, double* %y11986, align 8, !tbaa !21
  %mul11987 = fmul double %beta.coerce.elt, %441
  %add11990 = fadd double %add11949, %mul11987
  br label %if.end11993

if.end11993:                                      ; preds = %if.then11954, %if.then11924
  %rC.sroa.1207.2.in = phi double [ %add11971, %if.then11954 ], [ %add11938, %if.then11924 ]
  %rC.sroa.1243.2 = phi double [ %add11990, %if.then11954 ], [ %add11949, %if.then11924 ]
  %cmp11995 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv11999 = zext i32 %add9756 to i64
  %conv12001 = zext i32 %add11783 to i64
  br i1 %cmp11995, label %if.then11996, label %if.end11993.if.end12036_crit_edge

if.end11993.if.end12036_crit_edge:                ; preds = %if.end11993
  %.pre17295 = zext i32 %rem25 to i64
  br label %if.end12036

if.then11996:                                     ; preds = %if.end11993
  %conv12002 = zext i32 %strideC1J to i64
  %mul12003 = mul nuw i64 %conv12001, %conv12002
  %conv12005 = zext i32 %rem25 to i64
  %conv12006 = zext i32 %strideCK to i64
  %mul12007 = mul nuw i64 %conv12005, %conv12006
  %add12004 = add i64 %mul12007, %conv11999
  %add12008 = add i64 %add12004, %mul12003
  %y12010 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12008, i32 1
  %442 = load double, double* %y12010, align 8, !tbaa !21
  %443 = fmul double %beta.coerce.elt12917, %442
  %add12014 = fsub double %rC.sroa.1207.2.in, %443
  %x12029 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12008, i32 0
  %444 = load double, double* %x12029, align 8, !tbaa !19
  %mul12030 = fmul double %beta.coerce.elt12917, %444
  %add12033 = fadd double %rC.sroa.1243.2, %mul12030
  br label %if.end12036

if.end12036:                                      ; preds = %if.then11996, %if.end11993.if.end12036_crit_edge
  %conv12044.pre-phi = phi i64 [ %.pre17295, %if.end11993.if.end12036_crit_edge ], [ %conv12005, %if.then11996 ]
  %rC.sroa.1207.3.in = phi double [ %rC.sroa.1207.2.in, %if.end11993.if.end12036_crit_edge ], [ %add12014, %if.then11996 ]
  %rC.sroa.1243.3 = phi double [ %rC.sroa.1243.2, %if.end11993.if.end12036_crit_edge ], [ %add12033, %if.then11996 ]
  %conv12041 = zext i32 %strideD1J to i64
  %mul12042 = mul nuw i64 %conv12001, %conv12041
  %conv12045 = zext i32 %strideDK to i64
  %mul12046 = mul nuw i64 %conv12044.pre-phi, %conv12045
  %add12043 = add i64 %mul12046, %conv11999
  %add12047 = add i64 %add12043, %mul12042
  %445 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12047, i32 0
  store double %rC.sroa.1207.3.in, double* %445, align 8
  %rC.sroa.1243.272..sroa_idx16003 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12047, i32 1
  store double %rC.sroa.1243.3, double* %rC.sroa.1243.272..sroa_idx16003, align 8
  br label %if.end12050

if.end12050:                                      ; preds = %if.end12036, %if.end11915
  %or.cond16986 = and i1 %cmp9895, %cmp11788
  br i1 %or.cond16986, label %if.then12059, label %if.end12185

if.then12059:                                     ; preds = %if.end12050
  %mul12065 = fmul double %alpha.coerce.elt, %.lcssa17030
  %446 = fmul double %alpha.coerce.elt12915, %rC.sroa.1314.1.lcssa
  %add12073 = fsub double %mul12065, %446
  %mul12079 = fmul double %alpha.coerce.elt, %rC.sroa.1314.1.lcssa
  %mul12081 = fmul double %alpha.coerce.elt12915, %.lcssa17030
  %add12084 = fadd double %mul12081, %mul12079
  %cmp12088 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp12088, label %if.then12089, label %if.end12128

if.then12089:                                     ; preds = %if.then12059
  %conv12091 = zext i32 %add9891 to i64
  %conv12093 = zext i32 %add11783 to i64
  %conv12094 = zext i32 %strideC1J to i64
  %mul12095 = mul nuw i64 %conv12093, %conv12094
  %conv12097 = zext i32 %rem25 to i64
  %conv12098 = zext i32 %strideCK to i64
  %mul12099 = mul nuw i64 %conv12097, %conv12098
  %add12096 = add i64 %mul12099, %conv12091
  %add12100 = add i64 %add12096, %mul12095
  %x12102 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12100, i32 0
  %447 = load double, double* %x12102, align 8, !tbaa !19
  %mul12103 = fmul double %beta.coerce.elt, %447
  %add12106 = fadd double %add12073, %mul12103
  %y12121 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12100, i32 1
  %448 = load double, double* %y12121, align 8, !tbaa !21
  %mul12122 = fmul double %beta.coerce.elt, %448
  %add12125 = fadd double %add12084, %mul12122
  br label %if.end12128

if.end12128:                                      ; preds = %if.then12089, %if.then12059
  %rC.sroa.1278.2.in = phi double [ %add12106, %if.then12089 ], [ %add12073, %if.then12059 ]
  %rC.sroa.1314.2 = phi double [ %add12125, %if.then12089 ], [ %add12084, %if.then12059 ]
  %cmp12130 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv12134 = zext i32 %add9891 to i64
  %conv12136 = zext i32 %add11783 to i64
  br i1 %cmp12130, label %if.then12131, label %if.end12128.if.end12171_crit_edge

if.end12128.if.end12171_crit_edge:                ; preds = %if.end12128
  %.pre17298 = zext i32 %rem25 to i64
  br label %if.end12171

if.then12131:                                     ; preds = %if.end12128
  %conv12137 = zext i32 %strideC1J to i64
  %mul12138 = mul nuw i64 %conv12136, %conv12137
  %conv12140 = zext i32 %rem25 to i64
  %conv12141 = zext i32 %strideCK to i64
  %mul12142 = mul nuw i64 %conv12140, %conv12141
  %add12139 = add i64 %mul12142, %conv12134
  %add12143 = add i64 %add12139, %mul12138
  %y12145 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12143, i32 1
  %449 = load double, double* %y12145, align 8, !tbaa !21
  %450 = fmul double %beta.coerce.elt12917, %449
  %add12149 = fsub double %rC.sroa.1278.2.in, %450
  %x12164 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12143, i32 0
  %451 = load double, double* %x12164, align 8, !tbaa !19
  %mul12165 = fmul double %beta.coerce.elt12917, %451
  %add12168 = fadd double %rC.sroa.1314.2, %mul12165
  br label %if.end12171

if.end12171:                                      ; preds = %if.then12131, %if.end12128.if.end12171_crit_edge
  %conv12179.pre-phi = phi i64 [ %.pre17298, %if.end12128.if.end12171_crit_edge ], [ %conv12140, %if.then12131 ]
  %rC.sroa.1278.3.in = phi double [ %rC.sroa.1278.2.in, %if.end12128.if.end12171_crit_edge ], [ %add12149, %if.then12131 ]
  %rC.sroa.1314.3 = phi double [ %rC.sroa.1314.2, %if.end12128.if.end12171_crit_edge ], [ %add12168, %if.then12131 ]
  %conv12176 = zext i32 %strideD1J to i64
  %mul12177 = mul nuw i64 %conv12136, %conv12176
  %conv12180 = zext i32 %strideDK to i64
  %mul12181 = mul nuw i64 %conv12179.pre-phi, %conv12180
  %add12178 = add i64 %mul12181, %conv12134
  %add12182 = add i64 %add12178, %mul12177
  %452 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12182, i32 0
  store double %rC.sroa.1278.3.in, double* %452, align 8
  %rC.sroa.1314.288..sroa_idx16026 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12182, i32 1
  store double %rC.sroa.1314.3, double* %rC.sroa.1314.288..sroa_idx16026, align 8
  br label %if.end12185

if.end12185:                                      ; preds = %if.end12171, %if.end12050
  %or.cond16987 = and i1 %cmp10030, %cmp11788
  br i1 %or.cond16987, label %if.then12194, label %if.end12320

if.then12194:                                     ; preds = %if.end12185
  %mul12200 = fmul double %alpha.coerce.elt, %.lcssa17029
  %453 = fmul double %alpha.coerce.elt12915, %rC.sroa.1385.1.lcssa
  %add12208 = fsub double %mul12200, %453
  %mul12214 = fmul double %alpha.coerce.elt, %rC.sroa.1385.1.lcssa
  %mul12216 = fmul double %alpha.coerce.elt12915, %.lcssa17029
  %add12219 = fadd double %mul12216, %mul12214
  %cmp12223 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp12223, label %if.then12224, label %if.end12263

if.then12224:                                     ; preds = %if.then12194
  %conv12226 = zext i32 %add10026 to i64
  %conv12228 = zext i32 %add11783 to i64
  %conv12229 = zext i32 %strideC1J to i64
  %mul12230 = mul nuw i64 %conv12228, %conv12229
  %conv12232 = zext i32 %rem25 to i64
  %conv12233 = zext i32 %strideCK to i64
  %mul12234 = mul nuw i64 %conv12232, %conv12233
  %add12231 = add i64 %mul12234, %conv12226
  %add12235 = add i64 %add12231, %mul12230
  %x12237 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12235, i32 0
  %454 = load double, double* %x12237, align 8, !tbaa !19
  %mul12238 = fmul double %beta.coerce.elt, %454
  %add12241 = fadd double %add12208, %mul12238
  %y12256 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12235, i32 1
  %455 = load double, double* %y12256, align 8, !tbaa !21
  %mul12257 = fmul double %beta.coerce.elt, %455
  %add12260 = fadd double %add12219, %mul12257
  br label %if.end12263

if.end12263:                                      ; preds = %if.then12224, %if.then12194
  %rC.sroa.1349.2.in = phi double [ %add12241, %if.then12224 ], [ %add12208, %if.then12194 ]
  %rC.sroa.1385.2 = phi double [ %add12260, %if.then12224 ], [ %add12219, %if.then12194 ]
  %cmp12265 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv12269 = zext i32 %add10026 to i64
  %conv12271 = zext i32 %add11783 to i64
  br i1 %cmp12265, label %if.then12266, label %if.end12263.if.end12306_crit_edge

if.end12263.if.end12306_crit_edge:                ; preds = %if.end12263
  %.pre17301 = zext i32 %rem25 to i64
  br label %if.end12306

if.then12266:                                     ; preds = %if.end12263
  %conv12272 = zext i32 %strideC1J to i64
  %mul12273 = mul nuw i64 %conv12271, %conv12272
  %conv12275 = zext i32 %rem25 to i64
  %conv12276 = zext i32 %strideCK to i64
  %mul12277 = mul nuw i64 %conv12275, %conv12276
  %add12274 = add i64 %mul12277, %conv12269
  %add12278 = add i64 %add12274, %mul12273
  %y12280 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12278, i32 1
  %456 = load double, double* %y12280, align 8, !tbaa !21
  %457 = fmul double %beta.coerce.elt12917, %456
  %add12284 = fsub double %rC.sroa.1349.2.in, %457
  %x12299 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12278, i32 0
  %458 = load double, double* %x12299, align 8, !tbaa !19
  %mul12300 = fmul double %beta.coerce.elt12917, %458
  %add12303 = fadd double %rC.sroa.1385.2, %mul12300
  br label %if.end12306

if.end12306:                                      ; preds = %if.then12266, %if.end12263.if.end12306_crit_edge
  %conv12314.pre-phi = phi i64 [ %.pre17301, %if.end12263.if.end12306_crit_edge ], [ %conv12275, %if.then12266 ]
  %rC.sroa.1349.3.in = phi double [ %rC.sroa.1349.2.in, %if.end12263.if.end12306_crit_edge ], [ %add12284, %if.then12266 ]
  %rC.sroa.1385.3 = phi double [ %rC.sroa.1385.2, %if.end12263.if.end12306_crit_edge ], [ %add12303, %if.then12266 ]
  %conv12311 = zext i32 %strideD1J to i64
  %mul12312 = mul nuw i64 %conv12271, %conv12311
  %conv12315 = zext i32 %strideDK to i64
  %mul12316 = mul nuw i64 %conv12314.pre-phi, %conv12315
  %add12313 = add i64 %mul12316, %conv12269
  %add12317 = add i64 %add12313, %mul12312
  %459 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12317, i32 0
  store double %rC.sroa.1349.3.in, double* %459, align 8
  %rC.sroa.1385.304..sroa_idx16049 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12317, i32 1
  store double %rC.sroa.1385.3, double* %rC.sroa.1385.304..sroa_idx16049, align 8
  br label %if.end12320

if.end12320:                                      ; preds = %if.end12306, %if.end12185
  %add12323 = add i32 %add9620, 40
  %cmp12328 = icmp ult i32 %add12323, %size1J
  %or.cond16988 = and i1 %cmp9625, %cmp12328
  br i1 %or.cond16988, label %if.then12329, label %if.end12455

if.then12329:                                     ; preds = %if.end12320
  %mul12335 = fmul double %alpha.coerce.elt, %.lcssa17028
  %460 = fmul double %alpha.coerce.elt12915, %rC.sroa.1456.1.lcssa
  %add12343 = fsub double %mul12335, %460
  %mul12349 = fmul double %alpha.coerce.elt, %rC.sroa.1456.1.lcssa
  %mul12351 = fmul double %alpha.coerce.elt12915, %.lcssa17028
  %add12354 = fadd double %mul12351, %mul12349
  %cmp12358 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp12358, label %if.then12359, label %if.end12398

if.then12359:                                     ; preds = %if.then12329
  %conv12361 = zext i32 %add9616 to i64
  %conv12363 = zext i32 %add12323 to i64
  %conv12364 = zext i32 %strideC1J to i64
  %mul12365 = mul nuw i64 %conv12363, %conv12364
  %conv12367 = zext i32 %rem25 to i64
  %conv12368 = zext i32 %strideCK to i64
  %mul12369 = mul nuw i64 %conv12367, %conv12368
  %add12366 = add i64 %mul12369, %conv12361
  %add12370 = add i64 %add12366, %mul12365
  %x12372 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12370, i32 0
  %461 = load double, double* %x12372, align 8, !tbaa !19
  %mul12373 = fmul double %beta.coerce.elt, %461
  %add12376 = fadd double %add12343, %mul12373
  %y12391 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12370, i32 1
  %462 = load double, double* %y12391, align 8, !tbaa !21
  %mul12392 = fmul double %beta.coerce.elt, %462
  %add12395 = fadd double %add12354, %mul12392
  br label %if.end12398

if.end12398:                                      ; preds = %if.then12359, %if.then12329
  %rC.sroa.1420.2.in = phi double [ %add12376, %if.then12359 ], [ %add12343, %if.then12329 ]
  %rC.sroa.1456.2 = phi double [ %add12395, %if.then12359 ], [ %add12354, %if.then12329 ]
  %cmp12400 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv12404 = zext i32 %add9616 to i64
  %conv12406 = zext i32 %add12323 to i64
  br i1 %cmp12400, label %if.then12401, label %if.end12398.if.end12441_crit_edge

if.end12398.if.end12441_crit_edge:                ; preds = %if.end12398
  %.pre17304 = zext i32 %rem25 to i64
  br label %if.end12441

if.then12401:                                     ; preds = %if.end12398
  %conv12407 = zext i32 %strideC1J to i64
  %mul12408 = mul nuw i64 %conv12406, %conv12407
  %conv12410 = zext i32 %rem25 to i64
  %conv12411 = zext i32 %strideCK to i64
  %mul12412 = mul nuw i64 %conv12410, %conv12411
  %add12409 = add i64 %mul12412, %conv12404
  %add12413 = add i64 %add12409, %mul12408
  %y12415 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12413, i32 1
  %463 = load double, double* %y12415, align 8, !tbaa !21
  %464 = fmul double %beta.coerce.elt12917, %463
  %add12419 = fsub double %rC.sroa.1420.2.in, %464
  %x12434 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12413, i32 0
  %465 = load double, double* %x12434, align 8, !tbaa !19
  %mul12435 = fmul double %beta.coerce.elt12917, %465
  %add12438 = fadd double %rC.sroa.1456.2, %mul12435
  br label %if.end12441

if.end12441:                                      ; preds = %if.then12401, %if.end12398.if.end12441_crit_edge
  %conv12449.pre-phi = phi i64 [ %.pre17304, %if.end12398.if.end12441_crit_edge ], [ %conv12410, %if.then12401 ]
  %rC.sroa.1420.3.in = phi double [ %rC.sroa.1420.2.in, %if.end12398.if.end12441_crit_edge ], [ %add12419, %if.then12401 ]
  %rC.sroa.1456.3 = phi double [ %rC.sroa.1456.2, %if.end12398.if.end12441_crit_edge ], [ %add12438, %if.then12401 ]
  %conv12446 = zext i32 %strideD1J to i64
  %mul12447 = mul nuw i64 %conv12406, %conv12446
  %conv12450 = zext i32 %strideDK to i64
  %mul12451 = mul nuw i64 %conv12449.pre-phi, %conv12450
  %add12448 = add i64 %mul12451, %conv12404
  %add12452 = add i64 %add12448, %mul12447
  %466 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12452, i32 0
  store double %rC.sroa.1420.3.in, double* %466, align 8
  %rC.sroa.1456.320..sroa_idx16072 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12452, i32 1
  store double %rC.sroa.1456.3, double* %rC.sroa.1456.320..sroa_idx16072, align 8
  br label %if.end12455

if.end12455:                                      ; preds = %if.end12441, %if.end12320
  %or.cond16989 = and i1 %cmp9760, %cmp12328
  br i1 %or.cond16989, label %if.then12464, label %if.end12590

if.then12464:                                     ; preds = %if.end12455
  %mul12470 = fmul double %alpha.coerce.elt, %.lcssa17027
  %467 = fmul double %alpha.coerce.elt12915, %rC.sroa.1527.1.lcssa
  %add12478 = fsub double %mul12470, %467
  %mul12484 = fmul double %alpha.coerce.elt, %rC.sroa.1527.1.lcssa
  %mul12486 = fmul double %alpha.coerce.elt12915, %.lcssa17027
  %add12489 = fadd double %mul12486, %mul12484
  %cmp12493 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp12493, label %if.then12494, label %if.end12533

if.then12494:                                     ; preds = %if.then12464
  %conv12496 = zext i32 %add9756 to i64
  %conv12498 = zext i32 %add12323 to i64
  %conv12499 = zext i32 %strideC1J to i64
  %mul12500 = mul nuw i64 %conv12498, %conv12499
  %conv12502 = zext i32 %rem25 to i64
  %conv12503 = zext i32 %strideCK to i64
  %mul12504 = mul nuw i64 %conv12502, %conv12503
  %add12501 = add i64 %mul12504, %conv12496
  %add12505 = add i64 %add12501, %mul12500
  %x12507 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12505, i32 0
  %468 = load double, double* %x12507, align 8, !tbaa !19
  %mul12508 = fmul double %beta.coerce.elt, %468
  %add12511 = fadd double %add12478, %mul12508
  %y12526 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12505, i32 1
  %469 = load double, double* %y12526, align 8, !tbaa !21
  %mul12527 = fmul double %beta.coerce.elt, %469
  %add12530 = fadd double %add12489, %mul12527
  br label %if.end12533

if.end12533:                                      ; preds = %if.then12494, %if.then12464
  %rC.sroa.1491.2.in = phi double [ %add12511, %if.then12494 ], [ %add12478, %if.then12464 ]
  %rC.sroa.1527.2 = phi double [ %add12530, %if.then12494 ], [ %add12489, %if.then12464 ]
  %cmp12535 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv12539 = zext i32 %add9756 to i64
  %conv12541 = zext i32 %add12323 to i64
  br i1 %cmp12535, label %if.then12536, label %if.end12533.if.end12576_crit_edge

if.end12533.if.end12576_crit_edge:                ; preds = %if.end12533
  %.pre17307 = zext i32 %rem25 to i64
  br label %if.end12576

if.then12536:                                     ; preds = %if.end12533
  %conv12542 = zext i32 %strideC1J to i64
  %mul12543 = mul nuw i64 %conv12541, %conv12542
  %conv12545 = zext i32 %rem25 to i64
  %conv12546 = zext i32 %strideCK to i64
  %mul12547 = mul nuw i64 %conv12545, %conv12546
  %add12544 = add i64 %mul12547, %conv12539
  %add12548 = add i64 %add12544, %mul12543
  %y12550 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12548, i32 1
  %470 = load double, double* %y12550, align 8, !tbaa !21
  %471 = fmul double %beta.coerce.elt12917, %470
  %add12554 = fsub double %rC.sroa.1491.2.in, %471
  %x12569 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12548, i32 0
  %472 = load double, double* %x12569, align 8, !tbaa !19
  %mul12570 = fmul double %beta.coerce.elt12917, %472
  %add12573 = fadd double %rC.sroa.1527.2, %mul12570
  br label %if.end12576

if.end12576:                                      ; preds = %if.then12536, %if.end12533.if.end12576_crit_edge
  %conv12584.pre-phi = phi i64 [ %.pre17307, %if.end12533.if.end12576_crit_edge ], [ %conv12545, %if.then12536 ]
  %rC.sroa.1491.3.in = phi double [ %rC.sroa.1491.2.in, %if.end12533.if.end12576_crit_edge ], [ %add12554, %if.then12536 ]
  %rC.sroa.1527.3 = phi double [ %rC.sroa.1527.2, %if.end12533.if.end12576_crit_edge ], [ %add12573, %if.then12536 ]
  %conv12581 = zext i32 %strideD1J to i64
  %mul12582 = mul nuw i64 %conv12541, %conv12581
  %conv12585 = zext i32 %strideDK to i64
  %mul12586 = mul nuw i64 %conv12584.pre-phi, %conv12585
  %add12583 = add i64 %mul12586, %conv12539
  %add12587 = add i64 %add12583, %mul12582
  %473 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12587, i32 0
  store double %rC.sroa.1491.3.in, double* %473, align 8
  %rC.sroa.1527.336..sroa_idx16095 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12587, i32 1
  store double %rC.sroa.1527.3, double* %rC.sroa.1527.336..sroa_idx16095, align 8
  br label %if.end12590

if.end12590:                                      ; preds = %if.end12576, %if.end12455
  %or.cond16990 = and i1 %cmp9895, %cmp12328
  br i1 %or.cond16990, label %if.then12599, label %if.end12725

if.then12599:                                     ; preds = %if.end12590
  %mul12605 = fmul double %alpha.coerce.elt, %.lcssa17026
  %474 = fmul double %alpha.coerce.elt12915, %rC.sroa.1598.1.lcssa
  %add12613 = fsub double %mul12605, %474
  %mul12619 = fmul double %alpha.coerce.elt, %rC.sroa.1598.1.lcssa
  %mul12621 = fmul double %alpha.coerce.elt12915, %.lcssa17026
  %add12624 = fadd double %mul12621, %mul12619
  %cmp12628 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp12628, label %if.then12629, label %if.end12668

if.then12629:                                     ; preds = %if.then12599
  %conv12631 = zext i32 %add9891 to i64
  %conv12633 = zext i32 %add12323 to i64
  %conv12634 = zext i32 %strideC1J to i64
  %mul12635 = mul nuw i64 %conv12633, %conv12634
  %conv12637 = zext i32 %rem25 to i64
  %conv12638 = zext i32 %strideCK to i64
  %mul12639 = mul nuw i64 %conv12637, %conv12638
  %add12636 = add i64 %mul12639, %conv12631
  %add12640 = add i64 %add12636, %mul12635
  %x12642 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12640, i32 0
  %475 = load double, double* %x12642, align 8, !tbaa !19
  %mul12643 = fmul double %beta.coerce.elt, %475
  %add12646 = fadd double %add12613, %mul12643
  %y12661 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12640, i32 1
  %476 = load double, double* %y12661, align 8, !tbaa !21
  %mul12662 = fmul double %beta.coerce.elt, %476
  %add12665 = fadd double %add12624, %mul12662
  br label %if.end12668

if.end12668:                                      ; preds = %if.then12629, %if.then12599
  %rC.sroa.1562.2.in = phi double [ %add12646, %if.then12629 ], [ %add12613, %if.then12599 ]
  %rC.sroa.1598.2 = phi double [ %add12665, %if.then12629 ], [ %add12624, %if.then12599 ]
  %cmp12670 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv12674 = zext i32 %add9891 to i64
  %conv12676 = zext i32 %add12323 to i64
  br i1 %cmp12670, label %if.then12671, label %if.end12668.if.end12711_crit_edge

if.end12668.if.end12711_crit_edge:                ; preds = %if.end12668
  %.pre17310 = zext i32 %rem25 to i64
  br label %if.end12711

if.then12671:                                     ; preds = %if.end12668
  %conv12677 = zext i32 %strideC1J to i64
  %mul12678 = mul nuw i64 %conv12676, %conv12677
  %conv12680 = zext i32 %rem25 to i64
  %conv12681 = zext i32 %strideCK to i64
  %mul12682 = mul nuw i64 %conv12680, %conv12681
  %add12679 = add i64 %mul12682, %conv12674
  %add12683 = add i64 %add12679, %mul12678
  %y12685 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12683, i32 1
  %477 = load double, double* %y12685, align 8, !tbaa !21
  %478 = fmul double %beta.coerce.elt12917, %477
  %add12689 = fsub double %rC.sroa.1562.2.in, %478
  %x12704 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12683, i32 0
  %479 = load double, double* %x12704, align 8, !tbaa !19
  %mul12705 = fmul double %beta.coerce.elt12917, %479
  %add12708 = fadd double %rC.sroa.1598.2, %mul12705
  br label %if.end12711

if.end12711:                                      ; preds = %if.then12671, %if.end12668.if.end12711_crit_edge
  %conv12719.pre-phi = phi i64 [ %.pre17310, %if.end12668.if.end12711_crit_edge ], [ %conv12680, %if.then12671 ]
  %rC.sroa.1562.3.in = phi double [ %rC.sroa.1562.2.in, %if.end12668.if.end12711_crit_edge ], [ %add12689, %if.then12671 ]
  %rC.sroa.1598.3 = phi double [ %rC.sroa.1598.2, %if.end12668.if.end12711_crit_edge ], [ %add12708, %if.then12671 ]
  %conv12716 = zext i32 %strideD1J to i64
  %mul12717 = mul nuw i64 %conv12676, %conv12716
  %conv12720 = zext i32 %strideDK to i64
  %mul12721 = mul nuw i64 %conv12719.pre-phi, %conv12720
  %add12718 = add i64 %mul12721, %conv12674
  %add12722 = add i64 %add12718, %mul12717
  %480 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12722, i32 0
  store double %rC.sroa.1562.3.in, double* %480, align 8
  %rC.sroa.1598.352..sroa_idx16118 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12722, i32 1
  store double %rC.sroa.1598.3, double* %rC.sroa.1598.352..sroa_idx16118, align 8
  br label %if.end12725

if.end12725:                                      ; preds = %if.end12711, %if.end12590
  %or.cond16991 = and i1 %cmp10030, %cmp12328
  br i1 %or.cond16991, label %if.then12734, label %if.end12860

if.then12734:                                     ; preds = %if.end12725
  %mul12740 = fmul double %alpha.coerce.elt, %.lcssa
  %481 = fmul double %alpha.coerce.elt12915, %rC.sroa.1669.1.lcssa
  %add12748 = fsub double %mul12740, %481
  %mul12754 = fmul double %alpha.coerce.elt, %rC.sroa.1669.1.lcssa
  %mul12756 = fmul double %alpha.coerce.elt12915, %.lcssa
  %add12759 = fadd double %mul12756, %mul12754
  %cmp12763 = fcmp une double %beta.coerce.elt, 0.000000e+00
  br i1 %cmp12763, label %if.then12764, label %if.end12803

if.then12764:                                     ; preds = %if.then12734
  %conv12766 = zext i32 %add10026 to i64
  %conv12768 = zext i32 %add12323 to i64
  %conv12769 = zext i32 %strideC1J to i64
  %mul12770 = mul nuw i64 %conv12768, %conv12769
  %conv12772 = zext i32 %rem25 to i64
  %conv12773 = zext i32 %strideCK to i64
  %mul12774 = mul nuw i64 %conv12772, %conv12773
  %add12771 = add i64 %mul12774, %conv12766
  %add12775 = add i64 %add12771, %mul12770
  %x12777 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12775, i32 0
  %482 = load double, double* %x12777, align 8, !tbaa !19
  %mul12778 = fmul double %beta.coerce.elt, %482
  %add12781 = fadd double %add12748, %mul12778
  %y12796 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12775, i32 1
  %483 = load double, double* %y12796, align 8, !tbaa !21
  %mul12797 = fmul double %beta.coerce.elt, %483
  %add12800 = fadd double %add12759, %mul12797
  br label %if.end12803

if.end12803:                                      ; preds = %if.then12764, %if.then12734
  %rC.sroa.1633.2.in = phi double [ %add12781, %if.then12764 ], [ %add12748, %if.then12734 ]
  %rC.sroa.1669.2 = phi double [ %add12800, %if.then12764 ], [ %add12759, %if.then12734 ]
  %cmp12805 = fcmp une double %beta.coerce.elt12917, 0.000000e+00
  %conv12809 = zext i32 %add10026 to i64
  %conv12811 = zext i32 %add12323 to i64
  br i1 %cmp12805, label %if.then12806, label %if.end12803.if.end12846_crit_edge

if.end12803.if.end12846_crit_edge:                ; preds = %if.end12803
  %.pre17313 = zext i32 %rem25 to i64
  br label %if.end12846

if.then12806:                                     ; preds = %if.end12803
  %conv12812 = zext i32 %strideC1J to i64
  %mul12813 = mul nuw i64 %conv12811, %conv12812
  %conv12815 = zext i32 %rem25 to i64
  %conv12816 = zext i32 %strideCK to i64
  %mul12817 = mul nuw i64 %conv12815, %conv12816
  %add12814 = add i64 %mul12817, %conv12809
  %add12818 = add i64 %add12814, %mul12813
  %y12820 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12818, i32 1
  %484 = load double, double* %y12820, align 8, !tbaa !21
  %485 = fmul double %beta.coerce.elt12917, %484
  %add12824 = fsub double %rC.sroa.1633.2.in, %485
  %x12839 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %C, i64 %add12818, i32 0
  %486 = load double, double* %x12839, align 8, !tbaa !19
  %mul12840 = fmul double %beta.coerce.elt12917, %486
  %add12843 = fadd double %rC.sroa.1669.2, %mul12840
  br label %if.end12846

if.end12846:                                      ; preds = %if.then12806, %if.end12803.if.end12846_crit_edge
  %conv12854.pre-phi = phi i64 [ %.pre17313, %if.end12803.if.end12846_crit_edge ], [ %conv12815, %if.then12806 ]
  %rC.sroa.1633.3.in = phi double [ %rC.sroa.1633.2.in, %if.end12803.if.end12846_crit_edge ], [ %add12824, %if.then12806 ]
  %rC.sroa.1669.3 = phi double [ %rC.sroa.1669.2, %if.end12803.if.end12846_crit_edge ], [ %add12843, %if.then12806 ]
  %conv12851 = zext i32 %strideD1J to i64
  %mul12852 = mul nuw i64 %conv12811, %conv12851
  %conv12855 = zext i32 %strideDK to i64
  %mul12856 = mul nuw i64 %conv12854.pre-phi, %conv12855
  %add12853 = add i64 %mul12856, %conv12809
  %add12857 = add i64 %add12853, %mul12852
  %487 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12857, i32 0
  store double %rC.sroa.1633.3.in, double* %487, align 8
  %rC.sroa.1669.368..sroa_idx16141 = getelementptr inbounds %struct.tensile_complex, %struct.tensile_complex* %D, i64 %add12857, i32 1
  store double %rC.sroa.1669.3, double* %rC.sroa.1669.368..sroa_idx16141, align 8
  br label %if.end12860

if.end12860:                                      ; preds = %if.end12846, %if.end12725, %while.end9600
  ret void
}

; Function Attrs: convergent nounwind readnone
declare i32 @hc_get_workitem_id(i32) local_unnamed_addr #6

; Function Attrs: convergent nounwind readnone
declare i32 @hc_get_group_id(i32) local_unnamed_addr #6

; Function Attrs: convergent
declare void @hc_barrier(i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind readnone
declare i32 @amp_get_global_id(i32) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #7

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "HC" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "HC" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent inlinehint "HC" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent norecurse nounwind "HC" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { convergent nobuiltin nounwind readnone }
attributes #9 = { convergent nobuiltin }
attributes #10 = { convergent nobuiltin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"HCC clang version 9.0.0 (/data/jenkins_workspace/centos_pipeline_job/rocm-rel-2.6/rocm-2.6-22-20190704/centos/external/hcc-tot/clang fff0bd8ccc310cbfec5e3e1bf516b81412081a71) (/data/jenkins_workspace/centos_pipeline_job/rocm-rel-2.6/rocm-2.6-22-20190704/centos/external/hcc-tot/compiler a42c925d178d2a3cd6541769279b736c56b3f935) (based on HCC 1.3.19242-7496b9e1-fff0bd8ccc-a42c925d178 )"}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTSN6Kalmar12__index_leafILi0EEE", !5, i64 0, !5, i64 4}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 0}
!10 = !{!"_ZTSN6Kalmar12__index_leafILi1EEE", !5, i64 0, !5, i64 4}
!11 = !{!12, !5, i64 0}
!12 = !{!"_ZTSN6Kalmar12__index_leafILi2EEE", !5, i64 0, !5, i64 4}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"_Float16", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"double", !6, i64 0}
!19 = !{!20, !18, i64 0}
!20 = !{!"_ZTS15tensile_complexIdE", !18, i64 0, !18, i64 8}
!21 = !{!20, !18, i64 8}
