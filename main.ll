; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%"class.std::ios_base::Init" = type { i8 }
%union._LARGE_INTEGER = type { i64 }
%class.CWindow = type { %struct.tagWNDCLASSEXA, %struct.HINSTANCE__*, i8*, i8*, i8*, %struct.tagMSG, i8*, %struct.tagBITMAPINFO, %struct.tagBITMAPFILEHEADER, i32, i32, i32, i32, %struct.HWND__* }
%struct.tagWNDCLASSEXA = type { i32, i32, i64 (%struct.HWND__*, i32, i64, i64)*, i32, i32, %struct.HINSTANCE__*, %struct.HICON__*, %struct.HICON__*, %struct.HBRUSH__*, i8*, i8*, %struct.HICON__* }
%struct.HBRUSH__ = type { i32 }
%struct.HICON__ = type { i32 }
%struct.HINSTANCE__ = type { i32 }
%struct.tagMSG = type { %struct.HWND__*, i32, i64, i64, i32, %struct.tagPOINT }
%struct.tagPOINT = type { i32, i32 }
%struct.tagBITMAPINFO = type { %struct.tagBITMAPINFOHEADER, [1 x %struct.tagRGBQUAD] }
%struct.tagBITMAPINFOHEADER = type { i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.tagRGBQUAD = type { i8, i8, i8, i8 }
%struct.tagBITMAPFILEHEADER = type <{ i16, i32, i16, i16, i32 }>
%struct.HWND__ = type { i32 }
%class.Test = type { i32, [1000 x %struct.SPHERE*], [1000 x %struct.PLATE*], [1000 x %struct.LIGHT*], i32, i32, i32, %class.vec3 }
%struct.SPHERE = type { %struct.COMMON, %class.vec3, double }
%struct.COMMON = type { %class.vec3, double, double, double, double, double }
%struct.PLATE = type { %struct.COMMON, %class.vec3, %class.vec3 }
%struct.LIGHT = type { %class.vec3, %class.vec3 }
%class.vec3 = type { %class.vec2, %union.anon.2 }
%class.vec2 = type { %union.anon, %union.anon.1 }
%union.anon = type { double }
%union.anon.1 = type { double }
%union.anon.2 = type { double }
%struct.SURFACE = type { double, i8, i32, %class.vec3, %class.vec3, %class.vec3, %class.vec3, %class.vec3, double, double, double, double, double }

$_ZN4TestC2Ev = comdat any

$_ZN4Test5PaintEPhiii = comdat any

$_ZN4TestD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4vec3C2Ev = comdat any

$_ZN4Test5EntryEP5PLATE = comdat any

$_ZN4vec3C2Eddd = comdat any

$_ZN5PLATEC2ERK4vec3S2_S0_ddddd = comdat any

$_ZN4Test5EntryEP6SPHERE = comdat any

$_ZN6SPHEREC2ERK4vec3dS0_ddddd = comdat any

$_ZN4Test5EntryEP5LIGHT = comdat any

$_ZNK4vec3mlEd = comdat any

$_ZN5LIGHTC2ERK4vec3S2_ = comdat any

$_ZN4vec2C2Ev = comdat any

$_ZN6COMMONC2Ev = comdat any

$_ZNK4vec3plERKS_ = comdat any

$_ZNK4vec3miERKS_ = comdat any

$_ZN4Test8RaytrackE4vec3S0_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZN7SURFACEC2Ev = comdat any

$_ZN4Test6raygunER4vec3RKS0_ = comdat any

$_ZNK4vec3dvEd = comdat any

$_ZNK4vec3ngEv = comdat any

$_ZmldRK4vec3 = comdat any

$_ZN4vec3C2Ed = comdat any

$_ZNK4vec3mlERKS_ = comdat any

$_ZN4vec3pLERKS_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@_ZL5nFreq = internal global %union._LARGE_INTEGER zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"Voxel Metaball   Jul 11 2017\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"time %fsec\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @atexit(void ()* @__dtor__ZStL8__ioinit) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: noinline uwtable
define internal void @__dtor__ZStL8__ioinit() #0 {
  call void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  ret void
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: noinline uwtable
define double @_Z18getPerformanceTimev() #0 {
  %1 = alloca %union._LARGE_INTEGER, align 8
  %2 = alloca double, align 8
  %3 = call i32 @QueryPerformanceFrequency(%union._LARGE_INTEGER* @_ZL5nFreq)
  %4 = call i32 @QueryPerformanceCounter(%union._LARGE_INTEGER* %1)
  %5 = bitcast %union._LARGE_INTEGER* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = sitofp i64 %6 to double
  %8 = load i64, i64* getelementptr inbounds (%union._LARGE_INTEGER, %union._LARGE_INTEGER* @_ZL5nFreq, i32 0, i32 0), align 8
  %9 = sitofp i64 %8 to double
  %10 = fdiv double %7, %9
  store double %10, double* %2, align 8
  %11 = load double, double* %2, align 8
  ret double %11
}

declare dllimport i32 @QueryPerformanceFrequency(%union._LARGE_INTEGER*) #1

declare dllimport i32 @QueryPerformanceCounter(%union._LARGE_INTEGER*) #1

; Function Attrs: noinline norecurse uwtable
define i32 @main() #3 personality i8* bitcast (i32 (...)* @__gxx_personality_seh0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca %class.CWindow, align 8
  %3 = alloca %class.Test, align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32 0, i32* %1, align 4
  call void @_ZN7CWindowC1EiiPKc6RENDER(%class.CWindow* %2, i32 512, i32 512, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32 1)
  invoke void @_ZN4TestC2Ev(%class.Test* %3)
          to label %9 unwind label %34

; <label>:9:                                      ; preds = %0
  store i32 0, i32* %6, align 4
  br label %10

; <label>:10:                                     ; preds = %42, %9
  %11 = invoke zeroext i1 @_ZN7CWindow10runMessageEv(%class.CWindow* %2)
          to label %12 unwind label %38

; <label>:12:                                     ; preds = %10
  br i1 %11, label %13, label %43

; <label>:13:                                     ; preds = %12
  %14 = invoke double @_Z18getPerformanceTimev()
          to label %15 unwind label %38

; <label>:15:                                     ; preds = %13
  store double %14, double* %7, align 8
  %16 = getelementptr inbounds %class.CWindow, %class.CWindow* %2, i32 0, i32 6
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %class.CWindow, %class.CWindow* %2, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %class.CWindow, %class.CWindow* %2, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  invoke void @_ZN4Test5PaintEPhiii(%class.Test* %3, i8* %17, i32 %19, i32 %21, i32 3)
          to label %22 unwind label %38

; <label>:22:                                     ; preds = %15
  %23 = invoke double @_Z18getPerformanceTimev()
          to label %24 unwind label %38

; <label>:24:                                     ; preds = %22
  store double %23, double* %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = icmp slt i32 %25, 3
  br i1 %27, label %28, label %42

; <label>:28:                                     ; preds = %24
  %29 = load double, double* %8, align 8
  %30 = load double, double* %7, align 8
  %31 = fsub double %29, %30
  %32 = invoke i32 (i8*, ...) @_ZL6printfPKcz(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), double %31)
          to label %33 unwind label %38

; <label>:33:                                     ; preds = %28
  br label %42

; <label>:34:                                     ; preds = %43, %0
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %4, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %5, align 4
  br label %47

; <label>:38:                                     ; preds = %28, %22, %15, %13, %10
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %4, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %5, align 4
  invoke void @_ZN4TestD2Ev(%class.Test* %3)
          to label %46 unwind label %54

; <label>:42:                                     ; preds = %33, %24
  br label %10

; <label>:43:                                     ; preds = %12
  store i32 0, i32* %1, align 4
  invoke void @_ZN4TestD2Ev(%class.Test* %3)
          to label %44 unwind label %34

; <label>:44:                                     ; preds = %43
  call void @_ZN7CWindowD1Ev(%class.CWindow* %2)
  %45 = load i32, i32* %1, align 4
  ret i32 %45

; <label>:46:                                     ; preds = %38
  br label %47

; <label>:47:                                     ; preds = %46, %34
  invoke void @_ZN7CWindowD1Ev(%class.CWindow* %2)
          to label %48 unwind label %54

; <label>:48:                                     ; preds = %47
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = insertvalue { i8*, i32 } undef, i8* %50, 0
  %53 = insertvalue { i8*, i32 } %52, i32 %51, 1
  resume { i8*, i32 } %53

; <label>:54:                                     ; preds = %47, %38
  %55 = landingpad { i8*, i32 }
          catch i8* null
  %56 = extractvalue { i8*, i32 } %55, 0
  call void @__clang_call_terminate(i8* %56) #10
  unreachable
}

declare void @_ZN7CWindowC1EiiPKc6RENDER(%class.CWindow*, i32, i32, i8*, i32) unnamed_addr #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN4TestC2Ev(%class.Test*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_seh0 to i8*) {
  %2 = alloca %class.Test*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %class.vec3, align 8
  %11 = alloca %class.vec3, align 8
  %12 = alloca %class.vec3, align 8
  %13 = alloca %class.vec3, align 8
  %14 = alloca i8*
  %15 = alloca i32
  %16 = alloca %class.vec3, align 8
  %17 = alloca %class.vec3, align 8
  %18 = alloca %class.vec3, align 8
  %19 = alloca %class.vec3, align 8
  %20 = alloca %class.vec3, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca %class.vec3, align 8
  %29 = alloca %class.vec3, align 8
  %30 = alloca %class.vec3, align 8
  %31 = alloca %class.vec3, align 8
  %32 = alloca %class.vec3, align 8
  %33 = alloca %class.vec3, align 8
  %34 = alloca %class.vec3, align 8
  %35 = alloca %class.vec3, align 8
  %36 = alloca %class.vec3, align 8
  %37 = alloca %class.vec3, align 8
  %38 = alloca %class.vec3, align 8
  %39 = alloca %class.vec3, align 8
  %40 = alloca %class.vec3, align 8
  %41 = alloca %class.vec3, align 8
  %42 = alloca %class.vec3, align 8
  %43 = alloca %class.vec3, align 8
  %44 = alloca %class.vec3, align 8
  store %class.Test* %0, %class.Test** %2, align 8
  %45 = load %class.Test*, %class.Test** %2, align 8
  %46 = getelementptr inbounds %class.Test, %class.Test* %45, i32 0, i32 7
  call void @_ZN4vec3C2Ev(%class.vec3* %46)
  %47 = bitcast %class.Test* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 24048, i32 8, i1 false)
  call void @_ZN4vec3C2Ev(%class.vec3* %10)
  call void @_ZN4vec3C2Ev(%class.vec3* %11)
  call void @_ZN4vec3C2Ev(%class.vec3* %12)
  %48 = call i8* @_Znwy(i64 112) #11
  %49 = bitcast i8* %48 to %struct.PLATE*
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %13, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
          to label %50 unwind label %109

; <label>:50:                                     ; preds = %1
  %51 = bitcast %class.vec3* %10 to i8*
  %52 = bitcast %class.vec3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 24, i32 8, i1 false)
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %16, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
          to label %53 unwind label %109

; <label>:53:                                     ; preds = %50
  %54 = bitcast %class.vec3* %12 to i8*
  %55 = bitcast %class.vec3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 24, i32 8, i1 false)
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %18, double 8.000000e-01, double 8.000000e-01, double 8.000000e-01)
          to label %56 unwind label %109

; <label>:56:                                     ; preds = %53
  %57 = bitcast %class.vec3* %11 to i8*
  %58 = bitcast %class.vec3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 24, i32 8, i1 false)
  %59 = bitcast %class.vec3* %17 to i8*
  %60 = bitcast %class.vec3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 24, i32 8, i1 false)
  store float 5.000000e-01, float* %8, align 4
  store float 1.000000e+00, float* %9, align 4
  store float 2.000000e+01, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  invoke void @_ZN5PLATEC2ERK4vec3S2_S0_ddddd(%struct.PLATE* %49, %class.vec3* dereferenceable(24) %10, %class.vec3* dereferenceable(24) %12, %class.vec3* %17, double 5.000000e-01, double 1.000000e+00, double 2.000000e+01, double 0.000000e+00, double 0.000000e+00)
          to label %61 unwind label %109

; <label>:61:                                     ; preds = %56
  call void @_ZN4Test5EntryEP5PLATE(%class.Test* %45, %struct.PLATE* %49)
  %62 = call i8* @_Znwy(i64 96) #11
  %63 = bitcast i8* %62 to %struct.SPHERE*
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %19, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
          to label %64 unwind label %113

; <label>:64:                                     ; preds = %61
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %20, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
          to label %65 unwind label %113

; <label>:65:                                     ; preds = %64
  invoke void @_ZN6SPHEREC2ERK4vec3dS0_ddddd(%struct.SPHERE* %63, %class.vec3* dereferenceable(24) %19, double 5.000000e-01, %class.vec3* %20, double 5.000000e-01, double 1.000000e+00, double 1.000000e+02, double 0.000000e+00, double 0.000000e+00)
          to label %66 unwind label %113

; <label>:66:                                     ; preds = %65
  call void @_ZN4Test5EntryEP6SPHERE(%class.Test* %45, %struct.SPHERE* %63)
  store i32 48, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %67

; <label>:67:                                     ; preds = %106, %66
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %21, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %121

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %22, align 4
  %73 = sitofp i32 %72 to double
  %74 = fmul double %73, 0x3F81DF46A2529D39
  %75 = fmul double %74, 1.600000e+01
  %76 = fmul double %75, 3.000000e+00
  store double %76, double* %23, align 8
  %77 = load i32, i32* %22, align 4
  %78 = sitofp i32 %77 to double
  %79 = fmul double %78, 0x3F81DF46A2529D39
  %80 = fmul double %79, 1.600000e+01
  %81 = fmul double %80, 5.000000e-01
  store double %81, double* %24, align 8
  %82 = load double, double* %23, align 8
  %83 = call double @cos(double %82) #2
  store double %83, double* %25, align 8
  %84 = load double, double* %23, align 8
  %85 = call double @sin(double %84) #2
  store double %85, double* %26, align 8
  %86 = load double, double* %24, align 8
  %87 = call double @cos(double %86) #2
  %88 = fadd double %87, 1.200000e+00
  store double %88, double* %27, align 8
  %89 = call i8* @_Znwy(i64 96) #11
  %90 = bitcast i8* %89 to %struct.SPHERE*
  %91 = load double, double* %25, align 8
  %92 = load double, double* %27, align 8
  %93 = load double, double* %26, align 8
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %28, double %91, double %92, double %93)
          to label %94 unwind label %117

; <label>:94:                                     ; preds = %71
  %95 = bitcast %class.vec3* %10 to i8*
  %96 = bitcast %class.vec3* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 24, i32 8, i1 false)
  store float 0x3FC99999A0000000, float* %3, align 4
  %97 = load double, double* %25, align 8
  %98 = load double, double* %27, align 8
  %99 = load double, double* %26, align 8
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %30, double %97, double %98, double %99)
          to label %100 unwind label %117

; <label>:100:                                    ; preds = %94
  %101 = bitcast %class.vec3* %11 to i8*
  %102 = bitcast %class.vec3* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 24, i32 8, i1 false)
  %103 = bitcast %class.vec3* %29 to i8*
  %104 = bitcast %class.vec3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 24, i32 8, i1 false)
  store float 0x3FC99999A0000000, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  store float 1.000000e+02, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  invoke void @_ZN6SPHEREC2ERK4vec3dS0_ddddd(%struct.SPHERE* %90, %class.vec3* dereferenceable(24) %10, double 0x3FC99999A0000000, %class.vec3* %29, double 0x3FC99999A0000000, double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, double 0.000000e+00)
          to label %105 unwind label %117

; <label>:105:                                    ; preds = %100
  call void @_ZN4Test5EntryEP6SPHERE(%class.Test* %45, %struct.SPHERE* %90)
  br label %106

; <label>:106:                                    ; preds = %105
  %107 = load i32, i32* %22, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %22, align 4
  br label %67

; <label>:109:                                    ; preds = %56, %53, %50, %1
  %110 = landingpad { i8*, i32 }
          cleanup
  %111 = extractvalue { i8*, i32 } %110, 0
  store i8* %111, i8** %14, align 8
  %112 = extractvalue { i8*, i32 } %110, 1
  store i32 %112, i32* %15, align 4
  call void @_ZdlPv(i8* %48) #12
  br label %165

; <label>:113:                                    ; preds = %65, %64, %61
  %114 = landingpad { i8*, i32 }
          cleanup
  %115 = extractvalue { i8*, i32 } %114, 0
  store i8* %115, i8** %14, align 8
  %116 = extractvalue { i8*, i32 } %114, 1
  store i32 %116, i32* %15, align 4
  call void @_ZdlPv(i8* %62) #12
  br label %165

; <label>:117:                                    ; preds = %100, %94, %71
  %118 = landingpad { i8*, i32 }
          cleanup
  %119 = extractvalue { i8*, i32 } %118, 0
  store i8* %119, i8** %14, align 8
  %120 = extractvalue { i8*, i32 } %118, 1
  store i32 %120, i32* %15, align 4
  call void @_ZdlPv(i8* %89) #12
  br label %165

; <label>:121:                                    ; preds = %67
  %122 = call i8* @_Znwy(i64 48) #11
  %123 = bitcast i8* %122 to %struct.LIGHT*
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %31, double 0.000000e+00, double 3.000000e+01, double 0.000000e+00)
          to label %124 unwind label %149

; <label>:124:                                    ; preds = %121
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %33, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
          to label %125 unwind label %149

; <label>:125:                                    ; preds = %124
  invoke void @_ZNK4vec3mlEd(%class.vec3* sret %32, %class.vec3* %33, double 1.800000e+03)
          to label %126 unwind label %149

; <label>:126:                                    ; preds = %125
  invoke void @_ZN5LIGHTC2ERK4vec3S2_(%struct.LIGHT* %123, %class.vec3* dereferenceable(24) %31, %class.vec3* dereferenceable(24) %32)
          to label %127 unwind label %149

; <label>:127:                                    ; preds = %126
  call void @_ZN4Test5EntryEP5LIGHT(%class.Test* %45, %struct.LIGHT* %123)
  %128 = call i8* @_Znwy(i64 48) #11
  %129 = bitcast i8* %128 to %struct.LIGHT*
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %34, double -3.000000e+01, double 3.000000e+01, double 0.000000e+00)
          to label %130 unwind label %153

; <label>:130:                                    ; preds = %127
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %36, double 5.000000e-01, double 1.000000e+00, double 1.000000e+00)
          to label %131 unwind label %153

; <label>:131:                                    ; preds = %130
  invoke void @_ZNK4vec3mlEd(%class.vec3* sret %35, %class.vec3* %36, double 1.800000e+03)
          to label %132 unwind label %153

; <label>:132:                                    ; preds = %131
  invoke void @_ZN5LIGHTC2ERK4vec3S2_(%struct.LIGHT* %129, %class.vec3* dereferenceable(24) %34, %class.vec3* dereferenceable(24) %35)
          to label %133 unwind label %153

; <label>:133:                                    ; preds = %132
  call void @_ZN4Test5EntryEP5LIGHT(%class.Test* %45, %struct.LIGHT* %129)
  %134 = call i8* @_Znwy(i64 48) #11
  %135 = bitcast i8* %134 to %struct.LIGHT*
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %37, double 6.000000e+01, double 8.000000e+01, double 0.000000e+00)
          to label %136 unwind label %157

; <label>:136:                                    ; preds = %133
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %39, double 1.000000e+00, double 1.000000e+00, double 5.000000e-01)
          to label %137 unwind label %157

; <label>:137:                                    ; preds = %136
  invoke void @_ZNK4vec3mlEd(%class.vec3* sret %38, %class.vec3* %39, double 4.800000e+03)
          to label %138 unwind label %157

; <label>:138:                                    ; preds = %137
  invoke void @_ZN5LIGHTC2ERK4vec3S2_(%struct.LIGHT* %135, %class.vec3* dereferenceable(24) %37, %class.vec3* dereferenceable(24) %38)
          to label %139 unwind label %157

; <label>:139:                                    ; preds = %138
  call void @_ZN4Test5EntryEP5LIGHT(%class.Test* %45, %struct.LIGHT* %135)
  %140 = call i8* @_Znwy(i64 48) #11
  %141 = bitcast i8* %140 to %struct.LIGHT*
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %40, double -6.000000e+01, double 8.000000e+01, double 0.000000e+00)
          to label %142 unwind label %161

; <label>:142:                                    ; preds = %139
  invoke void @_ZN4vec3C2Eddd(%class.vec3* %42, double 1.000000e+00, double 5.000000e-01, double 1.000000e+00)
          to label %143 unwind label %161

; <label>:143:                                    ; preds = %142
  invoke void @_ZNK4vec3mlEd(%class.vec3* sret %41, %class.vec3* %42, double 4.800000e+03)
          to label %144 unwind label %161

; <label>:144:                                    ; preds = %143
  invoke void @_ZN5LIGHTC2ERK4vec3S2_(%struct.LIGHT* %141, %class.vec3* dereferenceable(24) %40, %class.vec3* dereferenceable(24) %41)
          to label %145 unwind label %161

; <label>:145:                                    ; preds = %144
  call void @_ZN4Test5EntryEP5LIGHT(%class.Test* %45, %struct.LIGHT* %141)
  call void @_ZN4vec3C2Eddd(%class.vec3* %44, double 2.000000e-01, double 4.000000e-01, double 6.000000e-01)
  call void @_ZNK4vec3mlEd(%class.vec3* sret %43, %class.vec3* %44, double 0.000000e+00)
  %146 = getelementptr inbounds %class.Test, %class.Test* %45, i32 0, i32 7
  %147 = bitcast %class.vec3* %146 to i8*
  %148 = bitcast %class.vec3* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 24, i32 8, i1 false)
  ret void

; <label>:149:                                    ; preds = %126, %125, %124, %121
  %150 = landingpad { i8*, i32 }
          cleanup
  %151 = extractvalue { i8*, i32 } %150, 0
  store i8* %151, i8** %14, align 8
  %152 = extractvalue { i8*, i32 } %150, 1
  store i32 %152, i32* %15, align 4
  call void @_ZdlPv(i8* %122) #12
  br label %165

; <label>:153:                                    ; preds = %132, %131, %130, %127
  %154 = landingpad { i8*, i32 }
          cleanup
  %155 = extractvalue { i8*, i32 } %154, 0
  store i8* %155, i8** %14, align 8
  %156 = extractvalue { i8*, i32 } %154, 1
  store i32 %156, i32* %15, align 4
  call void @_ZdlPv(i8* %128) #12
  br label %165

; <label>:157:                                    ; preds = %138, %137, %136, %133
  %158 = landingpad { i8*, i32 }
          cleanup
  %159 = extractvalue { i8*, i32 } %158, 0
  store i8* %159, i8** %14, align 8
  %160 = extractvalue { i8*, i32 } %158, 1
  store i32 %160, i32* %15, align 4
  call void @_ZdlPv(i8* %134) #12
  br label %165

; <label>:161:                                    ; preds = %144, %143, %142, %139
  %162 = landingpad { i8*, i32 }
          cleanup
  %163 = extractvalue { i8*, i32 } %162, 0
  store i8* %163, i8** %14, align 8
  %164 = extractvalue { i8*, i32 } %162, 1
  store i32 %164, i32* %15, align 4
  call void @_ZdlPv(i8* %140) #12
  br label %165

; <label>:165:                                    ; preds = %161, %157, %153, %149, %117, %113, %109
  %166 = load i8*, i8** %14, align 8
  %167 = load i32, i32* %15, align 4
  %168 = insertvalue { i8*, i32 } undef, i8* %166, 0
  %169 = insertvalue { i8*, i32 } %168, i32 %167, 1
  resume { i8*, i32 } %169
}

declare i32 @__gxx_personality_seh0(...)

declare zeroext i1 @_ZN7CWindow10runMessageEv(%class.CWindow*) #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN4Test5PaintEPhiii(%class.Test*, i8*, i32, i32, i32) #0 comdat align 2 {
  %6 = alloca %class.Test*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %class.vec3, align 8
  %12 = alloca %class.vec3, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca %class.vec3, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca %class.vec3, align 8
  %28 = alloca %class.vec3, align 8
  %29 = alloca %class.vec3, align 8
  %30 = alloca %class.vec3, align 8
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %class.vec3, align 8
  %35 = alloca %class.vec3, align 8
  %36 = alloca %class.vec3, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store %class.Test* %0, %class.Test** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %46 = load %class.Test*, %class.Test** %6, align 8
  call void @_ZN4vec3C2Eddd(%class.vec3* %11, double 0.000000e+00, double 1.000000e+00, double -4.000000e+00)
  call void @_ZN4vec3C2Eddd(%class.vec3* %12, double 0.000000e+00, double 1.000000e+00, double -9.000000e+00)
  call void @_ZN4vec3C2Ev(%class.vec3* %20)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %47

; <label>:47:                                     ; preds = %158, %5
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %161

; <label>:51:                                     ; preds = %47
  store i32 0, i32* %24, align 4
  br label %52

; <label>:52:                                     ; preds = %154, %51
  %53 = load i32, i32* %24, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %157

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %24, align 4
  %58 = sitofp i32 %57 to double
  %59 = load i32, i32* %9, align 4
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %58, %60
  %62 = fmul double %61, 2.000000e+00
  %63 = fsub double %62, 1.000000e+00
  store double %63, double* %25, align 8
  %64 = load i32, i32* %23, align 4
  %65 = sitofp i32 %64 to double
  %66 = load i32, i32* %8, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %65, %67
  %69 = fmul double %68, 2.000000e+00
  %70 = fsub double %69, 1.000000e+00
  store double %70, double* %26, align 8
  %71 = load double, double* %25, align 8
  %72 = load double, double* %26, align 8
  call void @_ZN4vec3C2Eddd(%class.vec3* %28, double %71, double %72, double 0.000000e+00)
  call void @_ZNK4vec3plERKS_(%class.vec3* sret %27, %class.vec3* %28, %class.vec3* dereferenceable(24) %11)
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %30, %class.vec3* %27, %class.vec3* dereferenceable(24) %12)
  call void @_Z9normalizeRK4vec3(%class.vec3* sret %29, %class.vec3* dereferenceable(24) %30)
  store double 1.000000e+00, double* %31, align 8
  store i32 0, i32* %32, align 4
  %73 = getelementptr inbounds %class.Test, %class.Test* %46, i32 0, i32 0
  store i32 0, i32* %73, align 8
  store i32 0, i32* %33, align 4
  %74 = bitcast %class.vec3* %35 to i8*
  %75 = bitcast %class.vec3* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 24, i32 8, i1 false)
  %76 = bitcast %class.vec3* %36 to i8*
  %77 = bitcast %class.vec3* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 24, i32 8, i1 false)
  call void @_ZN4Test8RaytrackE4vec3S0_(%class.vec3* sret %34, %class.Test* %46, %class.vec3* %35, %class.vec3* %36)
  %78 = bitcast %class.vec3* %20 to i8*
  %79 = bitcast %class.vec3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 24, i32 8, i1 false)
  %80 = getelementptr inbounds %class.Test, %class.Test* %46, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %21, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

; <label>:84:                                     ; preds = %56
  %85 = getelementptr inbounds %class.Test, %class.Test* %46, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %21, align 4
  br label %87

; <label>:87:                                     ; preds = %84, %56
  %88 = getelementptr inbounds %class.Test, %class.Test* %46, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %22, align 4
  store i32 255, i32* %38, align 4
  %92 = bitcast %class.vec3* %20 to %class.vec2*
  %93 = getelementptr inbounds %class.vec2, %class.vec2* %92, i32 0, i32 0
  %94 = bitcast %union.anon* %93 to double*
  %95 = load double, double* %94, align 8
  %96 = fmul double 2.550000e+02, %95
  %97 = fptosi double %96 to i32
  store i32 %97, i32* %39, align 4
  %98 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %38, i32* dereferenceable(4) %39)
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %37, align 4
  store i32 255, i32* %41, align 4
  %100 = bitcast %class.vec3* %20 to %class.vec2*
  %101 = getelementptr inbounds %class.vec2, %class.vec2* %100, i32 0, i32 1
  %102 = bitcast %union.anon.1* %101 to double*
  %103 = load double, double* %102, align 8
  %104 = fmul double 2.550000e+02, %103
  %105 = fptosi double %104 to i32
  store i32 %105, i32* %42, align 4
  %106 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %41, i32* dereferenceable(4) %42)
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %40, align 4
  store i32 255, i32* %44, align 4
  %108 = getelementptr inbounds %class.vec3, %class.vec3* %20, i32 0, i32 1
  %109 = bitcast %union.anon.2* %108 to double*
  %110 = load double, double* %109, align 8
  %111 = fmul double 2.550000e+02, %110
  %112 = fptosi double %111 to i32
  store i32 %112, i32* %45, align 4
  %113 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %44, i32* dereferenceable(4) %45)
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %43, align 4
  %115 = load i32, i32* %43, align 4
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %9, align 4
  %120 = mul nsw i32 %118, %119
  %121 = mul nsw i32 %120, 3
  %122 = load i32, i32* %24, align 4
  %123 = mul nsw i32 %122, 3
  %124 = add nsw i32 %121, %123
  %125 = add nsw i32 %124, 0
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %117, i64 %126
  store i8 %116, i8* %127, align 1
  %128 = load i32, i32* %37, align 4
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %131, %132
  %134 = mul nsw i32 %133, 3
  %135 = load i32, i32* %24, align 4
  %136 = mul nsw i32 %135, 3
  %137 = add nsw i32 %134, %136
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %130, i64 %139
  store i8 %129, i8* %140, align 1
  %141 = load i32, i32* %40, align 4
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %9, align 4
  %146 = mul nsw i32 %144, %145
  %147 = mul nsw i32 %146, 3
  %148 = load i32, i32* %24, align 4
  %149 = mul nsw i32 %148, 3
  %150 = add nsw i32 %147, %149
  %151 = add nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %143, i64 %152
  store i8 %142, i8* %153, align 1
  br label %154

; <label>:154:                                    ; preds = %87
  %155 = load i32, i32* %24, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %24, align 4
  br label %52

; <label>:157:                                    ; preds = %52
  br label %158

; <label>:158:                                    ; preds = %157
  %159 = load i32, i32* %23, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %23, align 4
  br label %47

; <label>:161:                                    ; preds = %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_ZL6printfPKcz(i8* nonnull, ...) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = bitcast i8** %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @__mingw_vprintf(i8* %6, i8* %7) #2
  store i32 %8, i32* %3, align 4
  %9 = bitcast i8** %4 to i8*
  call void @llvm.va_end(i8* %9)
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4TestD2Ev(%class.Test*) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.Test*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.Test* %0, %class.Test** %2, align 8
  %6 = load %class.Test*, %class.Test** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

; <label>:7:                                      ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds %class.Test, %class.Test* %6, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %class.Test, %class.Test* %6, i32 0, i32 1
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1000 x %struct.SPHERE*], [1000 x %struct.SPHERE*]* %13, i64 0, i64 %15
  %17 = load %struct.SPHERE*, %struct.SPHERE** %16, align 8
  %18 = icmp eq %struct.SPHERE* %17, null
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %12
  %20 = bitcast %struct.SPHERE* %17 to i8*
  call void @_ZdlPv(i8* %20) #12
  br label %21

; <label>:21:                                     ; preds = %19, %12
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

; <label>:25:                                     ; preds = %7
  store i32 0, i32* %4, align 4
  br label %26

; <label>:26:                                     ; preds = %41, %25
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds %class.Test, %class.Test* %6, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %44

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %class.Test, %class.Test* %6, i32 0, i32 2
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1000 x %struct.PLATE*], [1000 x %struct.PLATE*]* %32, i64 0, i64 %34
  %36 = load %struct.PLATE*, %struct.PLATE** %35, align 8
  %37 = icmp eq %struct.PLATE* %36, null
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %31
  %39 = bitcast %struct.PLATE* %36 to i8*
  call void @_ZdlPv(i8* %39) #12
  br label %40

; <label>:40:                                     ; preds = %38, %31
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %26

; <label>:44:                                     ; preds = %26
  store i32 0, i32* %5, align 4
  br label %45

; <label>:45:                                     ; preds = %60, %44
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds %class.Test, %class.Test* %6, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %63

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %class.Test, %class.Test* %6, i32 0, i32 3
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1000 x %struct.LIGHT*], [1000 x %struct.LIGHT*]* %51, i64 0, i64 %53
  %55 = load %struct.LIGHT*, %struct.LIGHT** %54, align 8
  %56 = icmp eq %struct.LIGHT* %55, null
  br i1 %56, label %59, label %57

; <label>:57:                                     ; preds = %50
  %58 = bitcast %struct.LIGHT* %55 to i8*
  call void @_ZdlPv(i8* %58) #12
  br label %59

; <label>:59:                                     ; preds = %57, %50
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %45

; <label>:63:                                     ; preds = %45
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #5 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #10
  unreachable
}

declare dllimport i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare void @_ZN7CWindowD1Ev(%class.CWindow*) unnamed_addr #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN4vec3C2Ev(%class.vec3*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.vec3*, align 8
  store %class.vec3* %0, %class.vec3** %2, align 8
  %3 = load %class.vec3*, %class.vec3** %2, align 8
  %4 = bitcast %class.vec3* %3 to %class.vec2*
  call void @_ZN4vec2C2Ev(%class.vec2* %4)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4Test5EntryEP5PLATE(%class.Test*, %struct.PLATE*) #4 comdat align 2 {
  %3 = alloca %class.Test*, align 8
  %4 = alloca %struct.PLATE*, align 8
  store %class.Test* %0, %class.Test** %3, align 8
  store %struct.PLATE* %1, %struct.PLATE** %4, align 8
  %5 = load %class.Test*, %class.Test** %3, align 8
  %6 = load %struct.PLATE*, %struct.PLATE** %4, align 8
  %7 = getelementptr inbounds %class.Test, %class.Test* %5, i32 0, i32 2
  %8 = getelementptr inbounds %class.Test, %class.Test* %5, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [1000 x %struct.PLATE*], [1000 x %struct.PLATE*]* %7, i64 0, i64 %11
  store %struct.PLATE* %6, %struct.PLATE** %12, align 8
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwy(i64) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4vec3C2Eddd(%class.vec3*, double, double, double) unnamed_addr #4 comdat align 2 {
  %5 = alloca %class.vec3*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %class.vec3* %0, %class.vec3** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load %class.vec3*, %class.vec3** %5, align 8
  %10 = bitcast %class.vec3* %9 to %class.vec2*
  call void @_ZN4vec2C2Ev(%class.vec2* %10)
  %11 = load double, double* %6, align 8
  %12 = bitcast %class.vec3* %9 to %class.vec2*
  %13 = getelementptr inbounds %class.vec2, %class.vec2* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to double*
  store double %11, double* %14, align 8
  %15 = load double, double* %7, align 8
  %16 = bitcast %class.vec3* %9 to %class.vec2*
  %17 = getelementptr inbounds %class.vec2, %class.vec2* %16, i32 0, i32 1
  %18 = bitcast %union.anon.1* %17 to double*
  store double %15, double* %18, align 8
  %19 = load double, double* %8, align 8
  %20 = getelementptr inbounds %class.vec3, %class.vec3* %9, i32 0, i32 1
  %21 = bitcast %union.anon.2* %20 to double*
  store double %19, double* %21, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5PLATEC2ERK4vec3S2_S0_ddddd(%struct.PLATE*, %class.vec3* dereferenceable(24), %class.vec3* dereferenceable(24), %class.vec3*, double, double, double, double, double) unnamed_addr #0 comdat align 2 {
  %10 = alloca %struct.PLATE*, align 8
  %11 = alloca %class.vec3*, align 8
  %12 = alloca %class.vec3*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.PLATE* %0, %struct.PLATE** %10, align 8
  store %class.vec3* %1, %class.vec3** %11, align 8
  store %class.vec3* %2, %class.vec3** %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  store double %7, double* %16, align 8
  store double %8, double* %17, align 8
  %18 = load %struct.PLATE*, %struct.PLATE** %10, align 8
  %19 = bitcast %struct.PLATE* %18 to %struct.COMMON*
  call void @_ZN6COMMONC2Ev(%struct.COMMON* %19)
  %20 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %18, i32 0, i32 1
  call void @_ZN4vec3C2Ev(%class.vec3* %20)
  %21 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %18, i32 0, i32 2
  call void @_ZN4vec3C2Ev(%class.vec3* %21)
  %22 = bitcast %struct.PLATE* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 112, i32 8, i1 false)
  %23 = load %class.vec3*, %class.vec3** %11, align 8
  %24 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %18, i32 0, i32 1
  %25 = bitcast %class.vec3* %24 to i8*
  %26 = bitcast %class.vec3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 8, i1 false)
  %27 = load %class.vec3*, %class.vec3** %12, align 8
  %28 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %18, i32 0, i32 2
  %29 = bitcast %class.vec3* %28 to i8*
  %30 = bitcast %class.vec3* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 24, i32 8, i1 false)
  %31 = bitcast %struct.PLATE* %18 to %struct.COMMON*
  %32 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %31, i32 0, i32 0
  %33 = bitcast %class.vec3* %32 to i8*
  %34 = bitcast %class.vec3* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 8, i1 false)
  %35 = load double, double* %13, align 8
  %36 = bitcast %struct.PLATE* %18 to %struct.COMMON*
  %37 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %36, i32 0, i32 1
  store double %35, double* %37, align 8
  %38 = load double, double* %14, align 8
  %39 = bitcast %struct.PLATE* %18 to %struct.COMMON*
  %40 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %39, i32 0, i32 2
  store double %38, double* %40, align 8
  %41 = load double, double* %15, align 8
  %42 = bitcast %struct.PLATE* %18 to %struct.COMMON*
  %43 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %42, i32 0, i32 3
  store double %41, double* %43, align 8
  %44 = load double, double* %16, align 8
  %45 = bitcast %struct.PLATE* %18 to %struct.COMMON*
  %46 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %45, i32 0, i32 4
  store double %44, double* %46, align 8
  %47 = load double, double* %17, align 8
  %48 = bitcast %struct.PLATE* %18 to %struct.COMMON*
  %49 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %48, i32 0, i32 5
  store double %47, double* %49, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4Test5EntryEP6SPHERE(%class.Test*, %struct.SPHERE*) #4 comdat align 2 {
  %3 = alloca %class.Test*, align 8
  %4 = alloca %struct.SPHERE*, align 8
  store %class.Test* %0, %class.Test** %3, align 8
  store %struct.SPHERE* %1, %struct.SPHERE** %4, align 8
  %5 = load %class.Test*, %class.Test** %3, align 8
  %6 = load %struct.SPHERE*, %struct.SPHERE** %4, align 8
  %7 = getelementptr inbounds %class.Test, %class.Test* %5, i32 0, i32 1
  %8 = getelementptr inbounds %class.Test, %class.Test* %5, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [1000 x %struct.SPHERE*], [1000 x %struct.SPHERE*]* %7, i64 0, i64 %11
  store %struct.SPHERE* %6, %struct.SPHERE** %12, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6SPHEREC2ERK4vec3dS0_ddddd(%struct.SPHERE*, %class.vec3* dereferenceable(24), double, %class.vec3*, double, double, double, double, double) unnamed_addr #0 comdat align 2 {
  %10 = alloca %struct.SPHERE*, align 8
  %11 = alloca %class.vec3*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %class.vec3, align 8
  %19 = alloca %class.vec3, align 8
  store %struct.SPHERE* %0, %struct.SPHERE** %10, align 8
  store %class.vec3* %1, %class.vec3** %11, align 8
  store double %2, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  store double %7, double* %16, align 8
  store double %8, double* %17, align 8
  %20 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %21 = bitcast %struct.SPHERE* %20 to %struct.COMMON*
  call void @_ZN6COMMONC2Ev(%struct.COMMON* %21)
  %22 = getelementptr inbounds %struct.SPHERE, %struct.SPHERE* %20, i32 0, i32 1
  call void @_ZN4vec3C2Ev(%class.vec3* %22)
  %23 = bitcast %struct.SPHERE* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 96, i32 8, i1 false)
  %24 = load %class.vec3*, %class.vec3** %11, align 8
  %25 = getelementptr inbounds %struct.SPHERE, %struct.SPHERE* %20, i32 0, i32 1
  %26 = bitcast %class.vec3* %25 to i8*
  %27 = bitcast %class.vec3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 24, i32 8, i1 false)
  %28 = load double, double* %12, align 8
  %29 = getelementptr inbounds %struct.SPHERE, %struct.SPHERE* %20, i32 0, i32 2
  store double %28, double* %29, align 8
  call void @_Z3mindRK4vec3(%class.vec3* sret %19, double 1.000000e+00, %class.vec3* dereferenceable(24) %3)
  call void @_Z3maxdRK4vec3(%class.vec3* sret %18, double 0.000000e+00, %class.vec3* dereferenceable(24) %19)
  %30 = bitcast %struct.SPHERE* %20 to %struct.COMMON*
  %31 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %30, i32 0, i32 0
  %32 = bitcast %class.vec3* %31 to i8*
  %33 = bitcast %class.vec3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 8, i1 false)
  %34 = load double, double* %13, align 8
  %35 = bitcast %struct.SPHERE* %20 to %struct.COMMON*
  %36 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %35, i32 0, i32 1
  store double %34, double* %36, align 8
  %37 = load double, double* %14, align 8
  %38 = bitcast %struct.SPHERE* %20 to %struct.COMMON*
  %39 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %38, i32 0, i32 2
  store double %37, double* %39, align 8
  %40 = load double, double* %15, align 8
  %41 = bitcast %struct.SPHERE* %20 to %struct.COMMON*
  %42 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %41, i32 0, i32 3
  store double %40, double* %42, align 8
  %43 = load double, double* %16, align 8
  %44 = bitcast %struct.SPHERE* %20 to %struct.COMMON*
  %45 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %44, i32 0, i32 4
  store double %43, double* %45, align 8
  %46 = load double, double* %17, align 8
  %47 = bitcast %struct.SPHERE* %20 to %struct.COMMON*
  %48 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %47, i32 0, i32 5
  store double %46, double* %48, align 8
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #9

; Function Attrs: nounwind
declare double @sin(double) #9

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4Test5EntryEP5LIGHT(%class.Test*, %struct.LIGHT*) #4 comdat align 2 {
  %3 = alloca %class.Test*, align 8
  %4 = alloca %struct.LIGHT*, align 8
  store %class.Test* %0, %class.Test** %3, align 8
  store %struct.LIGHT* %1, %struct.LIGHT** %4, align 8
  %5 = load %class.Test*, %class.Test** %3, align 8
  %6 = load %struct.LIGHT*, %struct.LIGHT** %4, align 8
  %7 = getelementptr inbounds %class.Test, %class.Test* %5, i32 0, i32 3
  %8 = getelementptr inbounds %class.Test, %class.Test* %5, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [1000 x %struct.LIGHT*], [1000 x %struct.LIGHT*]* %7, i64 0, i64 %11
  store %struct.LIGHT* %6, %struct.LIGHT** %12, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK4vec3mlEd(%class.vec3* noalias sret, %class.vec3*, double) #0 comdat align 2 {
  %4 = alloca %class.vec3*, align 8
  %5 = alloca double, align 8
  store %class.vec3* %1, %class.vec3** %4, align 8
  store double %2, double* %5, align 8
  %6 = load %class.vec3*, %class.vec3** %4, align 8
  call void @_ZN4vec3C2Ev(%class.vec3* %0)
  %7 = bitcast %class.vec3* %6 to %class.vec2*
  %8 = getelementptr inbounds %class.vec2, %class.vec2* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to double*
  %10 = load double, double* %9, align 8
  %11 = load double, double* %5, align 8
  %12 = fmul double %10, %11
  %13 = bitcast %class.vec3* %0 to %class.vec2*
  %14 = getelementptr inbounds %class.vec2, %class.vec2* %13, i32 0, i32 0
  %15 = bitcast %union.anon* %14 to double*
  store double %12, double* %15, align 8
  %16 = bitcast %class.vec3* %6 to %class.vec2*
  %17 = getelementptr inbounds %class.vec2, %class.vec2* %16, i32 0, i32 1
  %18 = bitcast %union.anon.1* %17 to double*
  %19 = load double, double* %18, align 8
  %20 = load double, double* %5, align 8
  %21 = fmul double %19, %20
  %22 = bitcast %class.vec3* %0 to %class.vec2*
  %23 = getelementptr inbounds %class.vec2, %class.vec2* %22, i32 0, i32 1
  %24 = bitcast %union.anon.1* %23 to double*
  store double %21, double* %24, align 8
  %25 = getelementptr inbounds %class.vec3, %class.vec3* %6, i32 0, i32 1
  %26 = bitcast %union.anon.2* %25 to double*
  %27 = load double, double* %26, align 8
  %28 = load double, double* %5, align 8
  %29 = fmul double %27, %28
  %30 = getelementptr inbounds %class.vec3, %class.vec3* %0, i32 0, i32 1
  %31 = bitcast %union.anon.2* %30 to double*
  store double %29, double* %31, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5LIGHTC2ERK4vec3S2_(%struct.LIGHT*, %class.vec3* dereferenceable(24), %class.vec3* dereferenceable(24)) unnamed_addr #0 comdat align 2 {
  %4 = alloca %struct.LIGHT*, align 8
  %5 = alloca %class.vec3*, align 8
  %6 = alloca %class.vec3*, align 8
  store %struct.LIGHT* %0, %struct.LIGHT** %4, align 8
  store %class.vec3* %1, %class.vec3** %5, align 8
  store %class.vec3* %2, %class.vec3** %6, align 8
  %7 = load %struct.LIGHT*, %struct.LIGHT** %4, align 8
  %8 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %7, i32 0, i32 0
  call void @_ZN4vec3C2Ev(%class.vec3* %8)
  %9 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %7, i32 0, i32 1
  call void @_ZN4vec3C2Ev(%class.vec3* %9)
  %10 = load %class.vec3*, %class.vec3** %5, align 8
  %11 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %7, i32 0, i32 0
  %12 = bitcast %class.vec3* %11 to i8*
  %13 = bitcast %class.vec3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  %14 = load %class.vec3*, %class.vec3** %6, align 8
  %15 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %7, i32 0, i32 1
  %16 = bitcast %class.vec3* %15 to i8*
  %17 = bitcast %class.vec3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4vec2C2Ev(%class.vec2*) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.vec2*, align 8
  store %class.vec2* %0, %class.vec2** %2, align 8
  %3 = load %class.vec2*, %class.vec2** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6COMMONC2Ev(%struct.COMMON*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %struct.COMMON*, align 8
  store %struct.COMMON* %0, %struct.COMMON** %2, align 8
  %3 = load %struct.COMMON*, %struct.COMMON** %2, align 8
  %4 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %3, i32 0, i32 0
  call void @_ZN4vec3C2Ev(%class.vec3* %4)
  ret void
}

declare void @_Z3maxdRK4vec3(%class.vec3* sret, double, %class.vec3* dereferenceable(24)) #1

declare void @_Z3mindRK4vec3(%class.vec3* sret, double, %class.vec3* dereferenceable(24)) #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK4vec3plERKS_(%class.vec3* noalias sret, %class.vec3*, %class.vec3* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.vec3*, align 8
  %5 = alloca %class.vec3*, align 8
  store %class.vec3* %1, %class.vec3** %4, align 8
  store %class.vec3* %2, %class.vec3** %5, align 8
  %6 = load %class.vec3*, %class.vec3** %4, align 8
  call void @_ZN4vec3C2Ev(%class.vec3* %0)
  %7 = bitcast %class.vec3* %6 to %class.vec2*
  %8 = getelementptr inbounds %class.vec2, %class.vec2* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to double*
  %10 = load double, double* %9, align 8
  %11 = load %class.vec3*, %class.vec3** %5, align 8
  %12 = bitcast %class.vec3* %11 to %class.vec2*
  %13 = getelementptr inbounds %class.vec2, %class.vec2* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to double*
  %15 = load double, double* %14, align 8
  %16 = fadd double %10, %15
  %17 = bitcast %class.vec3* %0 to %class.vec2*
  %18 = getelementptr inbounds %class.vec2, %class.vec2* %17, i32 0, i32 0
  %19 = bitcast %union.anon* %18 to double*
  store double %16, double* %19, align 8
  %20 = bitcast %class.vec3* %6 to %class.vec2*
  %21 = getelementptr inbounds %class.vec2, %class.vec2* %20, i32 0, i32 1
  %22 = bitcast %union.anon.1* %21 to double*
  %23 = load double, double* %22, align 8
  %24 = load %class.vec3*, %class.vec3** %5, align 8
  %25 = bitcast %class.vec3* %24 to %class.vec2*
  %26 = getelementptr inbounds %class.vec2, %class.vec2* %25, i32 0, i32 1
  %27 = bitcast %union.anon.1* %26 to double*
  %28 = load double, double* %27, align 8
  %29 = fadd double %23, %28
  %30 = bitcast %class.vec3* %0 to %class.vec2*
  %31 = getelementptr inbounds %class.vec2, %class.vec2* %30, i32 0, i32 1
  %32 = bitcast %union.anon.1* %31 to double*
  store double %29, double* %32, align 8
  %33 = getelementptr inbounds %class.vec3, %class.vec3* %6, i32 0, i32 1
  %34 = bitcast %union.anon.2* %33 to double*
  %35 = load double, double* %34, align 8
  %36 = load %class.vec3*, %class.vec3** %5, align 8
  %37 = getelementptr inbounds %class.vec3, %class.vec3* %36, i32 0, i32 1
  %38 = bitcast %union.anon.2* %37 to double*
  %39 = load double, double* %38, align 8
  %40 = fadd double %35, %39
  %41 = getelementptr inbounds %class.vec3, %class.vec3* %0, i32 0, i32 1
  %42 = bitcast %union.anon.2* %41 to double*
  store double %40, double* %42, align 8
  ret void
}

declare void @_Z9normalizeRK4vec3(%class.vec3* sret, %class.vec3* dereferenceable(24)) #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK4vec3miERKS_(%class.vec3* noalias sret, %class.vec3*, %class.vec3* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.vec3*, align 8
  %5 = alloca %class.vec3*, align 8
  store %class.vec3* %1, %class.vec3** %4, align 8
  store %class.vec3* %2, %class.vec3** %5, align 8
  %6 = load %class.vec3*, %class.vec3** %4, align 8
  call void @_ZN4vec3C2Ev(%class.vec3* %0)
  %7 = bitcast %class.vec3* %6 to %class.vec2*
  %8 = getelementptr inbounds %class.vec2, %class.vec2* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to double*
  %10 = load double, double* %9, align 8
  %11 = load %class.vec3*, %class.vec3** %5, align 8
  %12 = bitcast %class.vec3* %11 to %class.vec2*
  %13 = getelementptr inbounds %class.vec2, %class.vec2* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to double*
  %15 = load double, double* %14, align 8
  %16 = fsub double %10, %15
  %17 = bitcast %class.vec3* %0 to %class.vec2*
  %18 = getelementptr inbounds %class.vec2, %class.vec2* %17, i32 0, i32 0
  %19 = bitcast %union.anon* %18 to double*
  store double %16, double* %19, align 8
  %20 = bitcast %class.vec3* %6 to %class.vec2*
  %21 = getelementptr inbounds %class.vec2, %class.vec2* %20, i32 0, i32 1
  %22 = bitcast %union.anon.1* %21 to double*
  %23 = load double, double* %22, align 8
  %24 = load %class.vec3*, %class.vec3** %5, align 8
  %25 = bitcast %class.vec3* %24 to %class.vec2*
  %26 = getelementptr inbounds %class.vec2, %class.vec2* %25, i32 0, i32 1
  %27 = bitcast %union.anon.1* %26 to double*
  %28 = load double, double* %27, align 8
  %29 = fsub double %23, %28
  %30 = bitcast %class.vec3* %0 to %class.vec2*
  %31 = getelementptr inbounds %class.vec2, %class.vec2* %30, i32 0, i32 1
  %32 = bitcast %union.anon.1* %31 to double*
  store double %29, double* %32, align 8
  %33 = getelementptr inbounds %class.vec3, %class.vec3* %6, i32 0, i32 1
  %34 = bitcast %union.anon.2* %33 to double*
  %35 = load double, double* %34, align 8
  %36 = load %class.vec3*, %class.vec3** %5, align 8
  %37 = getelementptr inbounds %class.vec3, %class.vec3* %36, i32 0, i32 1
  %38 = bitcast %union.anon.2* %37 to double*
  %39 = load double, double* %38, align 8
  %40 = fsub double %35, %39
  %41 = getelementptr inbounds %class.vec3, %class.vec3* %0, i32 0, i32 1
  %42 = bitcast %union.anon.2* %41 to double*
  store double %40, double* %42, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN4Test8RaytrackE4vec3S0_(%class.vec3* noalias sret, %class.Test*, %class.vec3*, %class.vec3*) #0 comdat align 2 {
  %5 = alloca %class.Test*, align 8
  %6 = alloca %struct.SURFACE, align 8
  %7 = alloca %struct.LIGHT*, align 8
  %8 = alloca %class.vec3, align 8
  %9 = alloca %class.vec3, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.SURFACE, align 8
  %15 = alloca %class.vec3, align 8
  %16 = alloca %class.vec3, align 8
  %17 = alloca %class.vec3, align 8
  %18 = alloca %class.vec3, align 8
  %19 = alloca %class.vec3, align 8
  %20 = alloca %class.vec3, align 8
  %21 = alloca %class.vec3, align 8
  %22 = alloca %class.vec3, align 8
  %23 = alloca %class.vec3, align 8
  %24 = alloca %class.vec3, align 8
  %25 = alloca %class.vec3, align 8
  %26 = alloca %class.vec3, align 8
  %27 = alloca %class.vec3, align 8
  %28 = alloca %class.vec3, align 8
  %29 = alloca %class.vec3, align 8
  %30 = alloca %class.vec3, align 8
  %31 = alloca %class.vec3, align 8
  %32 = alloca %class.vec3, align 8
  %33 = alloca %struct.SURFACE, align 8
  %34 = alloca %class.vec3, align 8
  %35 = alloca %class.vec3, align 8
  %36 = alloca %class.vec3, align 8
  %37 = alloca %class.vec3, align 8
  %38 = alloca %class.vec3, align 8
  %39 = alloca %class.vec3, align 8
  %40 = alloca %class.vec3, align 8
  %41 = alloca %class.vec3, align 8
  %42 = alloca %class.vec3, align 8
  %43 = alloca %class.vec3, align 8
  %44 = alloca i32, align 4
  %45 = alloca %class.vec3, align 8
  store %class.Test* %1, %class.Test** %5, align 8
  %46 = load %class.Test*, %class.Test** %5, align 8
  call void @_ZN4vec3C2Eddd(%class.vec3* %0, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %47 = getelementptr inbounds %class.Test, %class.Test* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 5
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %4
  br label %168

; <label>:51:                                     ; preds = %4
  %52 = getelementptr inbounds %class.Test, %class.Test* %46, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  call void @_ZN7SURFACEC2Ev(%struct.SURFACE* %6)
  %55 = getelementptr inbounds %class.Test, %class.Test* %46, i32 0, i32 3
  %56 = getelementptr inbounds [1000 x %struct.LIGHT*], [1000 x %struct.LIGHT*]* %55, i64 0, i64 0
  %57 = load %struct.LIGHT*, %struct.LIGHT** %56, align 8
  store %struct.LIGHT* %57, %struct.LIGHT** %7, align 8
  call void @_ZN4vec3C2Ev(%class.vec3* %8)
  call void @_ZN4vec3C2Ev(%class.vec3* %9)
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  call void @_ZN4Test6raygunER4vec3RKS0_(%struct.SURFACE* sret %14, %class.Test* %46, %class.vec3* dereferenceable(24) %2, %class.vec3* dereferenceable(24) %3)
  %58 = bitcast %struct.SURFACE* %6 to i8*
  %59 = bitcast %struct.SURFACE* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 176, i32 8, i1 false)
  %60 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 1
  %61 = load i8, i8* %60, align 8
  %62 = trunc i8 %61 to i1
  br i1 %62, label %63, label %147

; <label>:63:                                     ; preds = %51
  %64 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  %65 = load %struct.LIGHT*, %struct.LIGHT** %7, align 8
  %66 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %65, i32 0, i32 0
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %16, %class.vec3* %64, %class.vec3* dereferenceable(24) %66)
  call void @_Z9normalizeRK4vec3(%class.vec3* sret %15, %class.vec3* dereferenceable(24) %16)
  %67 = bitcast %class.vec3* %9 to i8*
  %68 = bitcast %class.vec3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 24, i32 8, i1 false)
  %69 = load %struct.LIGHT*, %struct.LIGHT** %7, align 8
  %70 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  %72 = load %struct.LIGHT*, %struct.LIGHT** %7, align 8
  %73 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %72, i32 0, i32 0
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %18, %class.vec3* %71, %class.vec3* dereferenceable(24) %73)
  %74 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  %75 = load %struct.LIGHT*, %struct.LIGHT** %7, align 8
  %76 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %75, i32 0, i32 0
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %19, %class.vec3* %74, %class.vec3* dereferenceable(24) %76)
  %77 = call double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24) %18, %class.vec3* dereferenceable(24) %19)
  call void @_ZNK4vec3dvEd(%class.vec3* sret %17, %class.vec3* %70, double %77)
  %78 = bitcast %class.vec3* %8 to i8*
  %79 = bitcast %class.vec3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 24, i32 8, i1 false)
  %80 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 5
  call void @_ZNK4vec3ngEv(%class.vec3* sret %20, %class.vec3* %9)
  %81 = call double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24) %80, %class.vec3* dereferenceable(24) %20)
  %82 = call double @_Z3maxdd(double 0.000000e+00, double %81)
  %83 = fptrunc double %82 to float
  store float %83, float* %10, align 4
  %84 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 10
  %85 = load double, double* %84, align 8
  %86 = fadd double %85, 2.000000e+00
  %87 = fdiv double %86, 0x403921FB54442D18
  %88 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 6
  call void @_ZNK4vec3ngEv(%class.vec3* sret %21, %class.vec3* %9)
  %89 = call double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24) %88, %class.vec3* dereferenceable(24) %21)
  %90 = call double @_Z3maxdd(double 0.000000e+00, double %89)
  %91 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 10
  %92 = load double, double* %91, align 8
  %93 = call double @pow(double %90, double %92) #2
  %94 = fmul double %87, %93
  %95 = fptrunc double %94 to float
  store float %95, float* %11, align 4
  %96 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 8
  %97 = load double, double* %96, align 8
  %98 = fptrunc double %97 to float
  store float %98, float* %12, align 4
  %99 = load float, float* %12, align 4
  %100 = fpext float %99 to double
  %101 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  %102 = bitcast %class.vec3* %24 to i8*
  %103 = bitcast %class.vec3* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 24, i32 8, i1 false)
  %104 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 6
  %105 = bitcast %class.vec3* %25 to i8*
  %106 = bitcast %class.vec3* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 24, i32 8, i1 false)
  call void @_ZN4Test8RaytrackE4vec3S0_(%class.vec3* sret %26, %class.Test* %46, %class.vec3* %24, %class.vec3* %25)
  %107 = load float, float* %11, align 4
  %108 = fpext float %107 to double
  call void @_ZN4vec3C2Ed(%class.vec3* %27, double %108)
  call void @_ZNK4vec3plERKS_(%class.vec3* sret %23, %class.vec3* %26, %class.vec3* dereferenceable(24) %27)
  call void @_ZmldRK4vec3(%class.vec3* sret %28, double %100, %class.vec3* dereferenceable(24) %23)
  call void @_ZNK4vec3mlERKS_(%class.vec3* sret %22, %class.vec3* %28, %class.vec3* dereferenceable(24) %8)
  %109 = call dereferenceable(24) %class.vec3* @_ZN4vec3pLERKS_(%class.vec3* %0, %class.vec3* dereferenceable(24) %22)
  %110 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 12
  %111 = load double, double* %110, align 8
  %112 = fcmp oeq double %111, 0.000000e+00
  br i1 %112, label %113, label %121

; <label>:113:                                    ; preds = %63
  %114 = load float, float* %12, align 4
  %115 = fsub float 1.000000e+00, %114
  %116 = fpext float %115 to double
  %117 = load float, float* %10, align 4
  %118 = fpext float %117 to double
  %119 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 3
  call void @_ZmldRK4vec3(%class.vec3* sret %30, double %118, %class.vec3* dereferenceable(24) %119)
  call void @_ZmldRK4vec3(%class.vec3* sret %31, double %116, %class.vec3* dereferenceable(24) %30)
  call void @_ZNK4vec3mlERKS_(%class.vec3* sret %29, %class.vec3* %31, %class.vec3* dereferenceable(24) %8)
  %120 = call dereferenceable(24) %class.vec3* @_ZN4vec3pLERKS_(%class.vec3* %0, %class.vec3* dereferenceable(24) %29)
  br label %146

; <label>:121:                                    ; preds = %63
  %122 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 5
  %123 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 9
  %124 = load double, double* %123, align 8
  %125 = fdiv double %124, 1.000000e+00
  call void @_Z7refractRK4vec3S1_d(%class.vec3* sret %32, %class.vec3* dereferenceable(24) %3, %class.vec3* dereferenceable(24) %122, double %125)
  %126 = bitcast %class.vec3* %3 to i8*
  %127 = bitcast %class.vec3* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 24, i32 8, i1 false)
  %128 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  call void @_ZN4Test6raygunER4vec3RKS0_(%struct.SURFACE* sret %33, %class.Test* %46, %class.vec3* dereferenceable(24) %128, %class.vec3* dereferenceable(24) %3)
  %129 = bitcast %struct.SURFACE* %6 to i8*
  %130 = bitcast %struct.SURFACE* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 176, i32 8, i1 false)
  %131 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 5
  %132 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 9
  %133 = load double, double* %132, align 8
  %134 = fdiv double 1.000000e+00, %133
  call void @_Z7refractRK4vec3S1_d(%class.vec3* sret %34, %class.vec3* dereferenceable(24) %3, %class.vec3* dereferenceable(24) %131, double %134)
  %135 = bitcast %class.vec3* %3 to i8*
  %136 = bitcast %class.vec3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 24, i32 8, i1 false)
  %137 = load float, float* %12, align 4
  %138 = fsub float 1.000000e+00, %137
  %139 = fpext float %138 to double
  %140 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  %141 = bitcast %class.vec3* %37 to i8*
  %142 = bitcast %class.vec3* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 24, i32 8, i1 false)
  %143 = bitcast %class.vec3* %38 to i8*
  %144 = bitcast %class.vec3* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 24, i32 8, i1 false)
  call void @_ZN4Test8RaytrackE4vec3S0_(%class.vec3* sret %36, %class.Test* %46, %class.vec3* %37, %class.vec3* %38)
  call void @_ZmldRK4vec3(%class.vec3* sret %35, double %139, %class.vec3* dereferenceable(24) %36)
  %145 = call dereferenceable(24) %class.vec3* @_ZN4vec3pLERKS_(%class.vec3* %0, %class.vec3* dereferenceable(24) %35)
  br label %146

; <label>:146:                                    ; preds = %121, %113
  br label %167

; <label>:147:                                    ; preds = %51
  %148 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  %149 = load %struct.LIGHT*, %struct.LIGHT** %7, align 8
  %150 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %149, i32 0, i32 0
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %40, %class.vec3* %148, %class.vec3* dereferenceable(24) %150)
  call void @_Z9normalizeRK4vec3(%class.vec3* sret %39, %class.vec3* dereferenceable(24) %40)
  %151 = bitcast %class.vec3* %9 to i8*
  %152 = bitcast %class.vec3* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 24, i32 8, i1 false)
  %153 = load %struct.LIGHT*, %struct.LIGHT** %7, align 8
  %154 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  %156 = load %struct.LIGHT*, %struct.LIGHT** %7, align 8
  %157 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %156, i32 0, i32 0
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %42, %class.vec3* %155, %class.vec3* dereferenceable(24) %157)
  %158 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %6, i32 0, i32 4
  %159 = load %struct.LIGHT*, %struct.LIGHT** %7, align 8
  %160 = getelementptr inbounds %struct.LIGHT, %struct.LIGHT* %159, i32 0, i32 0
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %43, %class.vec3* %158, %class.vec3* dereferenceable(24) %160)
  %161 = call double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24) %42, %class.vec3* dereferenceable(24) %43)
  call void @_ZNK4vec3dvEd(%class.vec3* sret %41, %class.vec3* %154, double %161)
  %162 = bitcast %class.vec3* %8 to i8*
  %163 = bitcast %class.vec3* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 24, i32 8, i1 false)
  store i32 20, i32* %44, align 4
  %164 = load float, float* %11, align 4
  %165 = fpext float %164 to double
  call void @_ZN4vec3C2Ed(%class.vec3* %45, double %165)
  %166 = call dereferenceable(24) %class.vec3* @_ZN4vec3pLERKS_(%class.vec3* %0, %class.vec3* dereferenceable(24) %45)
  br label %167

; <label>:167:                                    ; preds = %147, %146
  br label %168

; <label>:168:                                    ; preds = %167, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4), i32* dereferenceable(4)) #4 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %3, align 8
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN7SURFACEC2Ev(%struct.SURFACE*) unnamed_addr #0 comdat align 2 {
  %2 = alloca %struct.SURFACE*, align 8
  store %struct.SURFACE* %0, %struct.SURFACE** %2, align 8
  %3 = load %struct.SURFACE*, %struct.SURFACE** %2, align 8
  %4 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %3, i32 0, i32 3
  call void @_ZN4vec3C2Ev(%class.vec3* %4)
  %5 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %3, i32 0, i32 4
  call void @_ZN4vec3C2Ev(%class.vec3* %5)
  %6 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %3, i32 0, i32 5
  call void @_ZN4vec3C2Ev(%class.vec3* %6)
  %7 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %3, i32 0, i32 6
  call void @_ZN4vec3C2Ev(%class.vec3* %7)
  %8 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %3, i32 0, i32 7
  call void @_ZN4vec3C2Ev(%class.vec3* %8)
  %9 = bitcast %struct.SURFACE* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 176, i32 8, i1 false)
  %10 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %3, i32 0, i32 0
  store double 0x7FEFFFFFFFFFFFFF, double* %10, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN4Test6raygunER4vec3RKS0_(%struct.SURFACE* noalias sret, %class.Test*, %class.vec3* dereferenceable(24), %class.vec3* dereferenceable(24)) #0 comdat align 2 {
  %5 = alloca %class.Test*, align 8
  %6 = alloca %class.vec3*, align 8
  %7 = alloca %class.vec3*, align 8
  %8 = alloca %class.vec3, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.SPHERE*, align 8
  %11 = alloca %class.vec3, align 8
  %12 = alloca double, align 8
  %13 = alloca %class.vec3, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca %class.vec3, align 8
  %19 = alloca %class.vec3, align 8
  %20 = alloca %class.vec3, align 8
  %21 = alloca %class.vec3, align 8
  %22 = alloca %class.vec3, align 8
  %23 = alloca %class.vec3, align 8
  %24 = alloca %class.vec3, align 8
  %25 = alloca %class.vec3, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.PLATE*, align 8
  %28 = alloca double, align 8
  %29 = alloca %class.vec3, align 8
  %30 = alloca double, align 8
  %31 = alloca %class.vec3, align 8
  %32 = alloca %class.vec3, align 8
  %33 = alloca %class.vec3, align 8
  %34 = alloca %class.vec3, align 8
  store %class.Test* %1, %class.Test** %5, align 8
  store %class.vec3* %2, %class.vec3** %6, align 8
  store %class.vec3* %3, %class.vec3** %7, align 8
  %35 = load %class.Test*, %class.Test** %5, align 8
  call void @_ZN7SURFACEC2Ev(%struct.SURFACE* %0)
  %36 = load %class.vec3*, %class.vec3** %7, align 8
  call void @_ZNK4vec3mlEd(%class.vec3* sret %8, %class.vec3* %36, double 2.000000e-10)
  %37 = load %class.vec3*, %class.vec3** %6, align 8
  %38 = call dereferenceable(24) %class.vec3* @_ZN4vec3pLERKS_(%class.vec3* %37, %class.vec3* dereferenceable(24) %8)
  %39 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 1
  store i8 0, i8* %39, align 8
  %40 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 0
  store double 0x7FEFFFFFFFFFFFFF, double* %40, align 8
  %41 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 2
  store i32 0, i32* %41, align 4
  store i32 0, i32* %9, align 4
  br label %42

; <label>:42:                                     ; preds = %162, %4
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %class.Test, %class.Test* %35, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %165

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %class.Test, %class.Test* %35, i32 0, i32 1
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1000 x %struct.SPHERE*], [1000 x %struct.SPHERE*]* %48, i64 0, i64 %50
  %52 = load %struct.SPHERE*, %struct.SPHERE** %51, align 8
  store %struct.SPHERE* %52, %struct.SPHERE** %10, align 8
  %53 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %54 = getelementptr inbounds %struct.SPHERE, %struct.SPHERE* %53, i32 0, i32 1
  %55 = bitcast %class.vec3* %11 to i8*
  %56 = bitcast %class.vec3* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 24, i32 8, i1 false)
  %57 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %58 = getelementptr inbounds %struct.SPHERE, %struct.SPHERE* %57, i32 0, i32 2
  %59 = load double, double* %58, align 8
  store double %59, double* %12, align 8
  %60 = load %class.vec3*, %class.vec3** %6, align 8
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %13, %class.vec3* %60, %class.vec3* dereferenceable(24) %11)
  %61 = load %class.vec3*, %class.vec3** %7, align 8
  %62 = call double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24) %61, %class.vec3* dereferenceable(24) %13)
  store double %62, double* %14, align 8
  %63 = load double, double* %12, align 8
  %64 = load double, double* %12, align 8
  %65 = fmul double %63, %64
  %66 = call double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24) %13, %class.vec3* dereferenceable(24) %13)
  %67 = fsub double %65, %66
  %68 = load double, double* %14, align 8
  %69 = load double, double* %14, align 8
  %70 = fmul double %68, %69
  %71 = fadd double %67, %70
  store double %71, double* %15, align 8
  store i32 0, i32* %16, align 4
  %72 = load double, double* %15, align 8
  %73 = fcmp oge double %72, 0.000000e+00
  br i1 %73, label %74, label %161

; <label>:74:                                     ; preds = %47
  %75 = load double, double* %15, align 8
  %76 = call double @sqrt(double %75) #2
  %77 = fsub double -0.000000e+00, %76
  %78 = load double, double* %14, align 8
  %79 = fsub double %77, %78
  store double %79, double* %17, align 8
  %80 = load double, double* %17, align 8
  %81 = fcmp olt double %80, 0.000000e+00
  br i1 %81, label %82, label %89

; <label>:82:                                     ; preds = %74
  %83 = load double, double* %15, align 8
  %84 = call double @sqrt(double %83) #2
  %85 = load double, double* %14, align 8
  %86 = fsub double %84, %85
  store double %86, double* %17, align 8
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %89

; <label>:89:                                     ; preds = %82, %74
  %90 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 0
  %91 = load double, double* %90, align 8
  %92 = load double, double* %17, align 8
  %93 = fcmp oge double %91, %92
  br i1 %93, label %94, label %160

; <label>:94:                                     ; preds = %89
  %95 = load double, double* %17, align 8
  %96 = fcmp oge double %95, 0.000000e+00
  br i1 %96, label %97, label %160

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load double, double* %17, align 8
  %103 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 0
  store double %102, double* %103, align 8
  %104 = load %class.vec3*, %class.vec3** %7, align 8
  %105 = load double, double* %17, align 8
  call void @_ZNK4vec3mlEd(%class.vec3* sret %19, %class.vec3* %104, double %105)
  %106 = load %class.vec3*, %class.vec3** %6, align 8
  call void @_ZNK4vec3plERKS_(%class.vec3* sret %18, %class.vec3* %19, %class.vec3* dereferenceable(24) %106)
  %107 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 4
  %108 = bitcast %class.vec3* %107 to i8*
  %109 = bitcast %class.vec3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 24, i32 8, i1 false)
  %110 = load i32, i32* %16, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %117

; <label>:112:                                    ; preds = %97
  %113 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 4
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %21, %class.vec3* %113, %class.vec3* dereferenceable(24) %11)
  call void @_Z9normalizeRK4vec3(%class.vec3* sret %22, %class.vec3* dereferenceable(24) %21)
  call void @_ZNK4vec3ngEv(%class.vec3* sret %20, %class.vec3* %22)
  %114 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 5
  %115 = bitcast %class.vec3* %114 to i8*
  %116 = bitcast %class.vec3* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 24, i32 8, i1 false)
  br label %122

; <label>:117:                                    ; preds = %97
  %118 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 4
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %24, %class.vec3* %118, %class.vec3* dereferenceable(24) %11)
  call void @_Z9normalizeRK4vec3(%class.vec3* sret %23, %class.vec3* dereferenceable(24) %24)
  %119 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 5
  %120 = bitcast %class.vec3* %119 to i8*
  %121 = bitcast %class.vec3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 24, i32 8, i1 false)
  br label %122

; <label>:122:                                    ; preds = %117, %112
  %123 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %124 = bitcast %struct.SPHERE* %123 to %struct.COMMON*
  %125 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 3
  %127 = bitcast %class.vec3* %126 to i8*
  %128 = bitcast %class.vec3* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 24, i32 8, i1 false)
  %129 = load %class.vec3*, %class.vec3** %7, align 8
  %130 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 5
  call void @_Z7reflectRK4vec3S1_(%class.vec3* sret %25, %class.vec3* dereferenceable(24) %129, %class.vec3* dereferenceable(24) %130)
  %131 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 6
  %132 = bitcast %class.vec3* %131 to i8*
  %133 = bitcast %class.vec3* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 24, i32 8, i1 false)
  %134 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %135 = bitcast %struct.SPHERE* %134 to %struct.COMMON*
  %136 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %135, i32 0, i32 1
  %137 = load double, double* %136, align 8
  %138 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 8
  store double %137, double* %138, align 8
  %139 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %140 = bitcast %struct.SPHERE* %139 to %struct.COMMON*
  %141 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %140, i32 0, i32 2
  %142 = load double, double* %141, align 8
  %143 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 9
  store double %142, double* %143, align 8
  %144 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %145 = bitcast %struct.SPHERE* %144 to %struct.COMMON*
  %146 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %145, i32 0, i32 3
  %147 = load double, double* %146, align 8
  %148 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 10
  store double %147, double* %148, align 8
  %149 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %150 = bitcast %struct.SPHERE* %149 to %struct.COMMON*
  %151 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %150, i32 0, i32 4
  %152 = load double, double* %151, align 8
  %153 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 11
  store double %152, double* %153, align 8
  %154 = load %struct.SPHERE*, %struct.SPHERE** %10, align 8
  %155 = bitcast %struct.SPHERE* %154 to %struct.COMMON*
  %156 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %155, i32 0, i32 5
  %157 = load double, double* %156, align 8
  %158 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 12
  store double %157, double* %158, align 8
  %159 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 1
  store i8 1, i8* %159, align 8
  br label %160

; <label>:160:                                    ; preds = %122, %94, %89
  br label %161

; <label>:161:                                    ; preds = %160, %47
  br label %162

; <label>:162:                                    ; preds = %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %42

; <label>:165:                                    ; preds = %42
  store i32 0, i32* %26, align 4
  br label %166

; <label>:166:                                    ; preds = %297, %165
  %167 = load i32, i32* %26, align 4
  %168 = getelementptr inbounds %class.Test, %class.Test* %35, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %300

; <label>:171:                                    ; preds = %166
  %172 = getelementptr inbounds %class.Test, %class.Test* %35, i32 0, i32 2
  %173 = load i32, i32* %26, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [1000 x %struct.PLATE*], [1000 x %struct.PLATE*]* %172, i64 0, i64 %174
  %176 = load %struct.PLATE*, %struct.PLATE** %175, align 8
  store %struct.PLATE* %176, %struct.PLATE** %27, align 8
  %177 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %178 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %177, i32 0, i32 2
  %179 = load %class.vec3*, %class.vec3** %6, align 8
  %180 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %181 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %180, i32 0, i32 1
  call void @_ZNK4vec3miERKS_(%class.vec3* sret %29, %class.vec3* %179, %class.vec3* dereferenceable(24) %181)
  %182 = call double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24) %178, %class.vec3* dereferenceable(24) %29)
  store double %182, double* %28, align 8
  %183 = load double, double* %28, align 8
  %184 = fcmp ogt double %183, 0.000000e+00
  br i1 %184, label %185, label %296

; <label>:185:                                    ; preds = %171
  %186 = load double, double* %28, align 8
  %187 = fsub double -0.000000e+00, %186
  %188 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %189 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %188, i32 0, i32 2
  %190 = load %class.vec3*, %class.vec3** %7, align 8
  %191 = call double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24) %189, %class.vec3* dereferenceable(24) %190)
  %192 = fdiv double %187, %191
  store double %192, double* %30, align 8
  %193 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 0
  %194 = load double, double* %193, align 8
  %195 = load double, double* %30, align 8
  %196 = fcmp oge double %194, %195
  br i1 %196, label %197, label %295

; <label>:197:                                    ; preds = %185
  %198 = load double, double* %30, align 8
  %199 = fcmp oge double %198, 0.000000e+00
  br i1 %199, label %200, label %295

; <label>:200:                                    ; preds = %197
  %201 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 2
  store i32 2, i32* %201, align 4
  %202 = load double, double* %30, align 8
  %203 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 0
  store double %202, double* %203, align 8
  %204 = load %class.vec3*, %class.vec3** %7, align 8
  %205 = load double, double* %30, align 8
  call void @_ZNK4vec3mlEd(%class.vec3* sret %32, %class.vec3* %204, double %205)
  %206 = load %class.vec3*, %class.vec3** %6, align 8
  call void @_ZNK4vec3plERKS_(%class.vec3* sret %31, %class.vec3* %32, %class.vec3* dereferenceable(24) %206)
  %207 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 4
  %208 = bitcast %class.vec3* %207 to i8*
  %209 = bitcast %class.vec3* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %208, i8* %209, i64 24, i32 8, i1 false)
  %210 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %211 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 5
  %213 = bitcast %class.vec3* %212 to i8*
  %214 = bitcast %class.vec3* %211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* %214, i64 24, i32 8, i1 false)
  %215 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 4
  %216 = bitcast %class.vec3* %215 to %class.vec2*
  %217 = getelementptr inbounds %class.vec2, %class.vec2* %216, i32 0, i32 0
  %218 = bitcast %union.anon* %217 to double*
  %219 = load double, double* %218, align 8
  %220 = fadd double %219, 1.000000e+04
  %221 = call double @fmod(double %220, double 1.000000e+00) #2
  %222 = fcmp olt double %221, 5.000000e-01
  br i1 %222, label %223, label %231

; <label>:223:                                    ; preds = %200
  %224 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 4
  %225 = getelementptr inbounds %class.vec3, %class.vec3* %224, i32 0, i32 1
  %226 = bitcast %union.anon.2* %225 to double*
  %227 = load double, double* %226, align 8
  %228 = fadd double %227, 1.000000e+04
  %229 = call double @fmod(double %228, double 1.000000e+00) #2
  %230 = fcmp olt double %229, 5.000000e-01
  br i1 %230, label %248, label %231

; <label>:231:                                    ; preds = %223, %200
  %232 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 4
  %233 = bitcast %class.vec3* %232 to %class.vec2*
  %234 = getelementptr inbounds %class.vec2, %class.vec2* %233, i32 0, i32 0
  %235 = bitcast %union.anon* %234 to double*
  %236 = load double, double* %235, align 8
  %237 = fadd double %236, 1.000000e+04
  %238 = call double @fmod(double %237, double 1.000000e+00) #2
  %239 = fcmp ogt double %238, 5.000000e-01
  br i1 %239, label %240, label %255

; <label>:240:                                    ; preds = %231
  %241 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 4
  %242 = getelementptr inbounds %class.vec3, %class.vec3* %241, i32 0, i32 1
  %243 = bitcast %union.anon.2* %242 to double*
  %244 = load double, double* %243, align 8
  %245 = fadd double %244, 1.000000e+04
  %246 = call double @fmod(double %245, double 1.000000e+00) #2
  %247 = fcmp ogt double %246, 5.000000e-01
  br i1 %247, label %248, label %255

; <label>:248:                                    ; preds = %240, %223
  %249 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %250 = bitcast %struct.PLATE* %249 to %struct.COMMON*
  %251 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 3
  %253 = bitcast %class.vec3* %252 to i8*
  %254 = bitcast %class.vec3* %251 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %253, i8* %254, i64 24, i32 8, i1 false)
  br label %262

; <label>:255:                                    ; preds = %240, %231
  %256 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %257 = bitcast %struct.PLATE* %256 to %struct.COMMON*
  %258 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %257, i32 0, i32 0
  call void @_ZNK4vec3mlEd(%class.vec3* sret %33, %class.vec3* %258, double 5.000000e-01)
  %259 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 3
  %260 = bitcast %class.vec3* %259 to i8*
  %261 = bitcast %class.vec3* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %260, i8* %261, i64 24, i32 8, i1 false)
  br label %262

; <label>:262:                                    ; preds = %255, %248
  %263 = load %class.vec3*, %class.vec3** %7, align 8
  %264 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %265 = getelementptr inbounds %struct.PLATE, %struct.PLATE* %264, i32 0, i32 2
  call void @_Z7reflectRK4vec3S1_(%class.vec3* sret %34, %class.vec3* dereferenceable(24) %263, %class.vec3* dereferenceable(24) %265)
  %266 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 6
  %267 = bitcast %class.vec3* %266 to i8*
  %268 = bitcast %class.vec3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %268, i64 24, i32 8, i1 false)
  %269 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %270 = bitcast %struct.PLATE* %269 to %struct.COMMON*
  %271 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %270, i32 0, i32 1
  %272 = load double, double* %271, align 8
  %273 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 8
  store double %272, double* %273, align 8
  %274 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %275 = bitcast %struct.PLATE* %274 to %struct.COMMON*
  %276 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %275, i32 0, i32 2
  %277 = load double, double* %276, align 8
  %278 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 9
  store double %277, double* %278, align 8
  %279 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %280 = bitcast %struct.PLATE* %279 to %struct.COMMON*
  %281 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %280, i32 0, i32 3
  %282 = load double, double* %281, align 8
  %283 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 10
  store double %282, double* %283, align 8
  %284 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %285 = bitcast %struct.PLATE* %284 to %struct.COMMON*
  %286 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %285, i32 0, i32 4
  %287 = load double, double* %286, align 8
  %288 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 11
  store double %287, double* %288, align 8
  %289 = load %struct.PLATE*, %struct.PLATE** %27, align 8
  %290 = bitcast %struct.PLATE* %289 to %struct.COMMON*
  %291 = getelementptr inbounds %struct.COMMON, %struct.COMMON* %290, i32 0, i32 5
  %292 = load double, double* %291, align 8
  %293 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 12
  store double %292, double* %293, align 8
  %294 = getelementptr inbounds %struct.SURFACE, %struct.SURFACE* %0, i32 0, i32 1
  store i8 1, i8* %294, align 8
  br label %295

; <label>:295:                                    ; preds = %262, %197, %185
  br label %296

; <label>:296:                                    ; preds = %295, %171
  br label %297

; <label>:297:                                    ; preds = %296
  %298 = load i32, i32* %26, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %26, align 4
  br label %166

; <label>:300:                                    ; preds = %166
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK4vec3dvEd(%class.vec3* noalias sret, %class.vec3*, double) #0 comdat align 2 {
  %4 = alloca %class.vec3*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %class.vec3* %1, %class.vec3** %4, align 8
  store double %2, double* %5, align 8
  %7 = load %class.vec3*, %class.vec3** %4, align 8
  %8 = load double, double* %5, align 8
  %9 = fdiv double 1.000000e+00, %8
  store double %9, double* %6, align 8
  call void @_ZN4vec3C2Ev(%class.vec3* %0)
  %10 = bitcast %class.vec3* %7 to %class.vec2*
  %11 = getelementptr inbounds %class.vec2, %class.vec2* %10, i32 0, i32 0
  %12 = bitcast %union.anon* %11 to double*
  %13 = load double, double* %12, align 8
  %14 = load double, double* %6, align 8
  %15 = fmul double %13, %14
  %16 = bitcast %class.vec3* %0 to %class.vec2*
  %17 = getelementptr inbounds %class.vec2, %class.vec2* %16, i32 0, i32 0
  %18 = bitcast %union.anon* %17 to double*
  store double %15, double* %18, align 8
  %19 = bitcast %class.vec3* %7 to %class.vec2*
  %20 = getelementptr inbounds %class.vec2, %class.vec2* %19, i32 0, i32 1
  %21 = bitcast %union.anon.1* %20 to double*
  %22 = load double, double* %21, align 8
  %23 = load double, double* %6, align 8
  %24 = fmul double %22, %23
  %25 = bitcast %class.vec3* %0 to %class.vec2*
  %26 = getelementptr inbounds %class.vec2, %class.vec2* %25, i32 0, i32 1
  %27 = bitcast %union.anon.1* %26 to double*
  store double %24, double* %27, align 8
  %28 = getelementptr inbounds %class.vec3, %class.vec3* %7, i32 0, i32 1
  %29 = bitcast %union.anon.2* %28 to double*
  %30 = load double, double* %29, align 8
  %31 = load double, double* %6, align 8
  %32 = fmul double %30, %31
  %33 = getelementptr inbounds %class.vec3, %class.vec3* %0, i32 0, i32 1
  %34 = bitcast %union.anon.2* %33 to double*
  store double %32, double* %34, align 8
  ret void
}

declare double @_Z3dotRK4vec3S1_(%class.vec3* dereferenceable(24), %class.vec3* dereferenceable(24)) #1

declare double @_Z3maxdd(double, double) #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK4vec3ngEv(%class.vec3* noalias sret, %class.vec3*) #0 comdat align 2 {
  %3 = alloca %class.vec3*, align 8
  store %class.vec3* %1, %class.vec3** %3, align 8
  %4 = load %class.vec3*, %class.vec3** %3, align 8
  call void @_ZN4vec3C2Ev(%class.vec3* %0)
  %5 = bitcast %class.vec3* %4 to %class.vec2*
  %6 = getelementptr inbounds %class.vec2, %class.vec2* %5, i32 0, i32 0
  %7 = bitcast %union.anon* %6 to double*
  %8 = load double, double* %7, align 8
  %9 = fsub double -0.000000e+00, %8
  %10 = bitcast %class.vec3* %0 to %class.vec2*
  %11 = getelementptr inbounds %class.vec2, %class.vec2* %10, i32 0, i32 0
  %12 = bitcast %union.anon* %11 to double*
  store double %9, double* %12, align 8
  %13 = bitcast %class.vec3* %4 to %class.vec2*
  %14 = getelementptr inbounds %class.vec2, %class.vec2* %13, i32 0, i32 1
  %15 = bitcast %union.anon.1* %14 to double*
  %16 = load double, double* %15, align 8
  %17 = fsub double -0.000000e+00, %16
  %18 = bitcast %class.vec3* %0 to %class.vec2*
  %19 = getelementptr inbounds %class.vec2, %class.vec2* %18, i32 0, i32 1
  %20 = bitcast %union.anon.1* %19 to double*
  store double %17, double* %20, align 8
  %21 = getelementptr inbounds %class.vec3, %class.vec3* %4, i32 0, i32 1
  %22 = bitcast %union.anon.2* %21 to double*
  %23 = load double, double* %22, align 8
  %24 = fsub double -0.000000e+00, %23
  %25 = getelementptr inbounds %class.vec3, %class.vec3* %0, i32 0, i32 1
  %26 = bitcast %union.anon.2* %25 to double*
  store double %24, double* %26, align 8
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #9

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZmldRK4vec3(%class.vec3* noalias sret, double, %class.vec3* dereferenceable(24)) #0 comdat {
  %4 = alloca double, align 8
  %5 = alloca %class.vec3*, align 8
  store double %1, double* %4, align 8
  store %class.vec3* %2, %class.vec3** %5, align 8
  call void @_ZN4vec3C2Ev(%class.vec3* %0)
  %6 = load double, double* %4, align 8
  %7 = load %class.vec3*, %class.vec3** %5, align 8
  %8 = bitcast %class.vec3* %7 to %class.vec2*
  %9 = getelementptr inbounds %class.vec2, %class.vec2* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %6, %11
  %13 = bitcast %class.vec3* %0 to %class.vec2*
  %14 = getelementptr inbounds %class.vec2, %class.vec2* %13, i32 0, i32 0
  %15 = bitcast %union.anon* %14 to double*
  store double %12, double* %15, align 8
  %16 = load double, double* %4, align 8
  %17 = load %class.vec3*, %class.vec3** %5, align 8
  %18 = bitcast %class.vec3* %17 to %class.vec2*
  %19 = getelementptr inbounds %class.vec2, %class.vec2* %18, i32 0, i32 1
  %20 = bitcast %union.anon.1* %19 to double*
  %21 = load double, double* %20, align 8
  %22 = fmul double %16, %21
  %23 = bitcast %class.vec3* %0 to %class.vec2*
  %24 = getelementptr inbounds %class.vec2, %class.vec2* %23, i32 0, i32 1
  %25 = bitcast %union.anon.1* %24 to double*
  store double %22, double* %25, align 8
  %26 = load double, double* %4, align 8
  %27 = load %class.vec3*, %class.vec3** %5, align 8
  %28 = getelementptr inbounds %class.vec3, %class.vec3* %27, i32 0, i32 1
  %29 = bitcast %union.anon.2* %28 to double*
  %30 = load double, double* %29, align 8
  %31 = fmul double %26, %30
  %32 = getelementptr inbounds %class.vec3, %class.vec3* %0, i32 0, i32 1
  %33 = bitcast %union.anon.2* %32 to double*
  store double %31, double* %33, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4vec3C2Ed(%class.vec3*, double) unnamed_addr #4 comdat align 2 {
  %3 = alloca %class.vec3*, align 8
  %4 = alloca double, align 8
  store %class.vec3* %0, %class.vec3** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %class.vec3*, %class.vec3** %3, align 8
  %6 = bitcast %class.vec3* %5 to %class.vec2*
  call void @_ZN4vec2C2Ev(%class.vec2* %6)
  %7 = load double, double* %4, align 8
  %8 = bitcast %class.vec3* %5 to %class.vec2*
  %9 = getelementptr inbounds %class.vec2, %class.vec2* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to double*
  store double %7, double* %10, align 8
  %11 = load double, double* %4, align 8
  %12 = bitcast %class.vec3* %5 to %class.vec2*
  %13 = getelementptr inbounds %class.vec2, %class.vec2* %12, i32 0, i32 1
  %14 = bitcast %union.anon.1* %13 to double*
  store double %11, double* %14, align 8
  %15 = load double, double* %4, align 8
  %16 = getelementptr inbounds %class.vec3, %class.vec3* %5, i32 0, i32 1
  %17 = bitcast %union.anon.2* %16 to double*
  store double %15, double* %17, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK4vec3mlERKS_(%class.vec3* noalias sret, %class.vec3*, %class.vec3* dereferenceable(24)) #0 comdat align 2 {
  %4 = alloca %class.vec3*, align 8
  %5 = alloca %class.vec3*, align 8
  store %class.vec3* %1, %class.vec3** %4, align 8
  store %class.vec3* %2, %class.vec3** %5, align 8
  %6 = load %class.vec3*, %class.vec3** %4, align 8
  call void @_ZN4vec3C2Ev(%class.vec3* %0)
  %7 = bitcast %class.vec3* %6 to %class.vec2*
  %8 = getelementptr inbounds %class.vec2, %class.vec2* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to double*
  %10 = load double, double* %9, align 8
  %11 = load %class.vec3*, %class.vec3** %5, align 8
  %12 = bitcast %class.vec3* %11 to %class.vec2*
  %13 = getelementptr inbounds %class.vec2, %class.vec2* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to double*
  %15 = load double, double* %14, align 8
  %16 = fmul double %10, %15
  %17 = bitcast %class.vec3* %0 to %class.vec2*
  %18 = getelementptr inbounds %class.vec2, %class.vec2* %17, i32 0, i32 0
  %19 = bitcast %union.anon* %18 to double*
  store double %16, double* %19, align 8
  %20 = bitcast %class.vec3* %6 to %class.vec2*
  %21 = getelementptr inbounds %class.vec2, %class.vec2* %20, i32 0, i32 1
  %22 = bitcast %union.anon.1* %21 to double*
  %23 = load double, double* %22, align 8
  %24 = load %class.vec3*, %class.vec3** %5, align 8
  %25 = bitcast %class.vec3* %24 to %class.vec2*
  %26 = getelementptr inbounds %class.vec2, %class.vec2* %25, i32 0, i32 1
  %27 = bitcast %union.anon.1* %26 to double*
  %28 = load double, double* %27, align 8
  %29 = fmul double %23, %28
  %30 = bitcast %class.vec3* %0 to %class.vec2*
  %31 = getelementptr inbounds %class.vec2, %class.vec2* %30, i32 0, i32 1
  %32 = bitcast %union.anon.1* %31 to double*
  store double %29, double* %32, align 8
  %33 = getelementptr inbounds %class.vec3, %class.vec3* %6, i32 0, i32 1
  %34 = bitcast %union.anon.2* %33 to double*
  %35 = load double, double* %34, align 8
  %36 = load %class.vec3*, %class.vec3** %5, align 8
  %37 = getelementptr inbounds %class.vec3, %class.vec3* %36, i32 0, i32 1
  %38 = bitcast %union.anon.2* %37 to double*
  %39 = load double, double* %38, align 8
  %40 = fmul double %35, %39
  %41 = getelementptr inbounds %class.vec3, %class.vec3* %0, i32 0, i32 1
  %42 = bitcast %union.anon.2* %41 to double*
  store double %40, double* %42, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.vec3* @_ZN4vec3pLERKS_(%class.vec3*, %class.vec3* dereferenceable(24)) #4 comdat align 2 {
  %3 = alloca %class.vec3*, align 8
  %4 = alloca %class.vec3*, align 8
  store %class.vec3* %0, %class.vec3** %3, align 8
  store %class.vec3* %1, %class.vec3** %4, align 8
  %5 = load %class.vec3*, %class.vec3** %3, align 8
  %6 = load %class.vec3*, %class.vec3** %4, align 8
  %7 = bitcast %class.vec3* %6 to %class.vec2*
  %8 = getelementptr inbounds %class.vec2, %class.vec2* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to double*
  %10 = load double, double* %9, align 8
  %11 = bitcast %class.vec3* %5 to %class.vec2*
  %12 = getelementptr inbounds %class.vec2, %class.vec2* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to double*
  %14 = load double, double* %13, align 8
  %15 = fadd double %14, %10
  store double %15, double* %13, align 8
  %16 = load %class.vec3*, %class.vec3** %4, align 8
  %17 = bitcast %class.vec3* %16 to %class.vec2*
  %18 = getelementptr inbounds %class.vec2, %class.vec2* %17, i32 0, i32 1
  %19 = bitcast %union.anon.1* %18 to double*
  %20 = load double, double* %19, align 8
  %21 = bitcast %class.vec3* %5 to %class.vec2*
  %22 = getelementptr inbounds %class.vec2, %class.vec2* %21, i32 0, i32 1
  %23 = bitcast %union.anon.1* %22 to double*
  %24 = load double, double* %23, align 8
  %25 = fadd double %24, %20
  store double %25, double* %23, align 8
  %26 = load %class.vec3*, %class.vec3** %4, align 8
  %27 = getelementptr inbounds %class.vec3, %class.vec3* %26, i32 0, i32 1
  %28 = bitcast %union.anon.2* %27 to double*
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds %class.vec3, %class.vec3* %5, i32 0, i32 1
  %31 = bitcast %union.anon.2* %30 to double*
  %32 = load double, double* %31, align 8
  %33 = fadd double %32, %29
  store double %33, double* %31, align 8
  ret %class.vec3* %5
}

declare void @_Z7refractRK4vec3S1_d(%class.vec3* sret, %class.vec3* dereferenceable(24), %class.vec3* dereferenceable(24), double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #9

declare void @_Z7reflectRK4vec3S1_(%class.vec3* sret, %class.vec3* dereferenceable(24), %class.vec3* dereferenceable(24)) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #9

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @__mingw_vprintf(i8*, i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
