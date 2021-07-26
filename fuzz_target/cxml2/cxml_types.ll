; ModuleID = 'cxml_types.c'
source_filename = "cxml_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XmlString = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i8 @xml_to_uint8(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %3 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %4 = call i64 @xml_to_uint64(%struct.XmlString* %3)
  %5 = trunc i64 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i64 @xml_to_uint64(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %5 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %6 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %9 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %3, align 1
  %13 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %14 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %17 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %21 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strtoul(i8* %22, i8** null, i32 10) #2
  store i64 %23, i64* %4, align 8
  %24 = load i8, i8* %3, align 1
  %25 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %26 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %29 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %24, i8* %31, align 1
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local zeroext i16 @xml_to_uint16(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %3 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %4 = call i64 @xml_to_uint64(%struct.XmlString* %3)
  %5 = trunc i64 %4 to i16
  ret i16 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xml_to_uint32(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %3 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %4 = call i64 @xml_to_uint64(%struct.XmlString* %3)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local signext i8 @xml_to_int8(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %3 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %4 = call i64 @xml_to_int64(%struct.XmlString* %3)
  %5 = trunc i64 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i64 @xml_to_int64(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %5 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %6 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %9 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %3, align 1
  %13 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %14 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %17 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %21 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strtol(i8* %22, i8** null, i32 10) #2
  store i64 %23, i64* %4, align 8
  %24 = load i8, i8* %3, align 1
  %25 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %26 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %29 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %24, i8* %31, align 1
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local signext i16 @xml_to_int16(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %3 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %4 = call i64 @xml_to_int64(%struct.XmlString* %3)
  %5 = trunc i64 %4 to i16
  ret i16 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xml_to_int32(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %3 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %4 = call i64 @xml_to_int64(%struct.XmlString* %3)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @xml_to_float(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  %3 = alloca i8, align 1
  %4 = alloca float, align 4
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %5 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %6 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %9 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %3, align 1
  %13 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %14 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %17 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %21 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call float @strtof(i8* %22, i8** null) #2
  store float %23, float* %4, align 4
  %24 = load i8, i8* %3, align 1
  %25 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %26 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %29 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %24, i8* %31, align 1
  %32 = load float, float* %4, align 4
  ret float %32
}

; Function Attrs: nounwind
declare float @strtof(i8*, i8**) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local double @xml_to_double(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  %3 = alloca i8, align 1
  %4 = alloca double, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %5 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %6 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %9 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %3, align 1
  %13 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %14 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %17 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %21 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call double @strtod(i8* %22, i8** null) #2
  store double %23, double* %4, align 8
  %24 = load i8, i8* %3, align 1
  %25 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %26 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %29 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %24, i8* %31, align 1
  %32 = load double, double* %4, align 8
  ret double %32
}

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i8* @xml_to_cstring(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  %5 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %6 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, 1
  %9 = call noalias i8* @malloc(i64 %8) #2
  store i8* %9, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %13 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %18 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 %22, i8* %25, align 1
  br label %26

26:                                               ; preds = %16
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %10, !llvm.loop !4

29:                                               ; preds = %10
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %32 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 12.0.1"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
