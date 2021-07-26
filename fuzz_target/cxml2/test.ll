; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.XmlDocument = type { i8*, i64, i64, i32 }
%struct.XmlString = type { i8*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"test.xml\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [477 x i8] c"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%.*stag %.*s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%.*stext %.*s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%.*sattr %.*s = %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.XmlDocument, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.XmlString, align 8
  %14 = alloca %struct.XmlString, align 8
  %15 = alloca %struct.XmlString, align 8
  %16 = alloca %struct.XmlString, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call noalias i8* @malloc(i64 2048) #3
  store i8* %17, i8** %6, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %21 = call i64 @fread(i8* %19, i64 1, i64 2048, %struct._IO_FILE* %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %23 = call i32 @fclose(%struct._IO_FILE* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %8, align 8
  call void @xml_document_create(%struct.XmlDocument* %9, i8* %24, i64 %25)
  store i8* getelementptr inbounds ([477 x i8], [477 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %26

26:                                               ; preds = %93, %2
  %27 = call i32 @xml_read(%struct.XmlDocument* %9)
  store i32 %27, i32* %12, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %94

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %93 [
    i32 2, label %31
    i32 4, label %47
    i32 5, label %66
    i32 3, label %90
  ]

31:                                               ; preds = %29
  %32 = call { i8*, i64 } @xml_name(%struct.XmlDocument* %9)
  %33 = bitcast %struct.XmlString* %13 to { i8*, i64 }*
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i8*, i64 } %32, 0
  store i8* %35, i8** %34, align 8
  %36 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i8*, i64 } %32, 1
  store i64 %37, i64* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %13, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %13, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %38, i8* %39, i64 %41, i8* %43)
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %11, align 4
  br label %93

47:                                               ; preds = %29
  %48 = call { i8*, i64 } @xml_text(%struct.XmlDocument* %9)
  %49 = bitcast %struct.XmlString* %14 to { i8*, i64 }*
  %50 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %49, i32 0, i32 0
  %51 = extractvalue { i8*, i64 } %48, 0
  store i8* %51, i8** %50, align 8
  %52 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %49, i32 0, i32 1
  %53 = extractvalue { i8*, i64 } %48, 1
  store i64 %53, i64* %52, align 8
  call void @xml_string_trim(%struct.XmlString* %14)
  %54 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %14, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %14, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %14, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %58, i8* %59, i64 %61, i8* %63)
  br label %65

65:                                               ; preds = %57, %47
  br label %93

66:                                               ; preds = %29
  %67 = call { i8*, i64 } @xml_attr_name(%struct.XmlDocument* %9)
  %68 = bitcast %struct.XmlString* %15 to { i8*, i64 }*
  %69 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %68, i32 0, i32 0
  %70 = extractvalue { i8*, i64 } %67, 0
  store i8* %70, i8** %69, align 8
  %71 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %68, i32 0, i32 1
  %72 = extractvalue { i8*, i64 } %67, 1
  store i64 %72, i64* %71, align 8
  %73 = call { i8*, i64 } @xml_attr_value(%struct.XmlDocument* %9)
  %74 = bitcast %struct.XmlString* %16 to { i8*, i64 }*
  %75 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %74, i32 0, i32 0
  %76 = extractvalue { i8*, i64 } %73, 0
  store i8* %76, i8** %75, align 8
  %77 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %74, i32 0, i32 1
  %78 = extractvalue { i8*, i64 } %73, 1
  store i64 %78, i64* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %15, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %15, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %16, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %16, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %79, i8* %80, i64 %82, i8* %84, i64 %86, i8* %88)
  br label %93

90:                                               ; preds = %29
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 2
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %29, %90, %66, %65, %31
  br label %26, !llvm.loop !4

94:                                               ; preds = %26
  %95 = load i8*, i8** %6, align 8
  call void @free(i8* %95) #3
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @xml_document_create(%struct.XmlDocument*, i8*, i64) #2

declare i32 @xml_read(%struct.XmlDocument*) #2

declare { i8*, i64 } @xml_name(%struct.XmlDocument*) #2

declare i32 @printf(i8*, ...) #2

declare { i8*, i64 } @xml_text(%struct.XmlDocument*) #2

declare void @xml_string_trim(%struct.XmlString*) #2

declare { i8*, i64 } @xml_attr_name(%struct.XmlDocument*) #2

declare { i8*, i64 } @xml_attr_value(%struct.XmlDocument*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 12.0.1"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
