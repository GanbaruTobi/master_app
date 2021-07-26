; ModuleID = 'cxml.c'
source_filename = "cxml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XmlDocument = type { i8*, i64, i64, i32 }
%struct.XmlString = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @xml_document_create(%struct.XmlDocument* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.XmlDocument*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.XmlDocument* %0, %struct.XmlDocument** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.XmlDocument*, %struct.XmlDocument** %4, align 8
  %9 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.XmlDocument*, %struct.XmlDocument** %4, align 8
  %12 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.XmlDocument*, %struct.XmlDocument** %4, align 8
  %14 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.XmlDocument*, %struct.XmlDocument** %4, align 8
  %16 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %15, i32 0, i32 3
  store i32 0, i32* %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xml_read(%struct.XmlDocument* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.XmlDocument*, align 8
  %4 = alloca i32, align 4
  store %struct.XmlDocument* %0, %struct.XmlDocument** %3, align 8
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %70, %1
  %6 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %7 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %10 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %5
  %14 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %15 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %18 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %69 [
    i32 32, label %23
    i32 10, label %23
    i32 13, label %23
    i32 9, label %23
    i32 60, label %24
    i32 62, label %43
    i32 61, label %51
  ]

23:                                               ; preds = %13, %13, %13, %13
  br label %70

24:                                               ; preds = %13
  %25 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %26 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %29 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 47
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 2, i32* %4, align 4
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %39 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  store i32 3, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %36
  br label %76

43:                                               ; preds = %13
  %44 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %45 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 4, i32* %4, align 4
  br label %76

49:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49
  br label %70

51:                                               ; preds = %13
  %52 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %53 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %58 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %57, i32 0, i32 3
  store i32 5, i32* %58, align 8
  store i32 5, i32* %2, align 4
  br label %81

59:                                               ; preds = %51
  %60 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %61 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 5
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %66 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %65, i32 0, i32 3
  store i32 2, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67
  br label %70

69:                                               ; preds = %13
  br label %70

70:                                               ; preds = %69, %68, %50, %23
  %71 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %72 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %5, !llvm.loop !4

75:                                               ; preds = %5
  br label %76

76:                                               ; preds = %75, %48, %42
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %79 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %56
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { i8*, i64 } @xml_name(%struct.XmlDocument* %0) #0 {
  %2 = alloca %struct.XmlString, align 8
  %3 = alloca %struct.XmlDocument*, align 8
  store %struct.XmlDocument* %0, %struct.XmlDocument** %3, align 8
  %4 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %5 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %8 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %57, %1
  %15 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %16 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %19 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @is_whitespace(i8 signext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %14
  %26 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %27 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %30 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 62
  br i1 %35, label %36, label %55

36:                                               ; preds = %25
  %37 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %38 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %41 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 47
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %49 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %52 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br label %55

55:                                               ; preds = %47, %36, %25, %14
  %56 = phi i1 [ false, %36 ], [ false, %25 ], [ false, %14 ], [ %54, %47 ]
  br i1 %56, label %57, label %65

57:                                               ; preds = %55
  %58 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %59 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %14, !llvm.loop !6

65:                                               ; preds = %55
  %66 = bitcast %struct.XmlString* %2 to { i8*, i64 }*
  %67 = load { i8*, i64 }, { i8*, i64 }* %66, align 8
  ret { i8*, i64 } %67
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @is_whitespace(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 13
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 9
  br label %18

18:                                               ; preds = %14, %10, %6, %1
  %19 = phi i1 [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { i8*, i64 } @xml_text(%struct.XmlDocument* %0) #0 {
  %2 = alloca %struct.XmlString, align 8
  %3 = alloca %struct.XmlDocument*, align 8
  store %struct.XmlDocument* %0, %struct.XmlDocument** %3, align 8
  %4 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %5 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %8 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %35, %1
  %15 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %16 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %19 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 60
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %27 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %30 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br label %33

33:                                               ; preds = %25, %14
  %34 = phi i1 [ false, %14 ], [ %32, %25 ]
  br i1 %34, label %35, label %43

35:                                               ; preds = %33
  %36 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %37 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  br label %14, !llvm.loop !7

43:                                               ; preds = %33
  %44 = bitcast %struct.XmlString* %2 to { i8*, i64 }*
  %45 = load { i8*, i64 }, { i8*, i64 }* %44, align 8
  ret { i8*, i64 } %45
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @xml_string_trim(%struct.XmlString* %0) #0 {
  %2 = alloca %struct.XmlString*, align 8
  store %struct.XmlString* %0, %struct.XmlString** %2, align 8
  br label %3

3:                                                ; preds = %18, %1
  %4 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %5 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = call i32 @is_whitespace(i8 signext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %13 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %20 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  %23 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %24 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %24, align 8
  br label %3, !llvm.loop !8

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %47, %27
  %29 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %30 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %33 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @is_whitespace(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %42 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %28
  %46 = phi i1 [ false, %28 ], [ %44, %40 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load %struct.XmlString*, %struct.XmlString** %2, align 8
  %49 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %49, align 8
  br label %28, !llvm.loop !9

52:                                               ; preds = %45
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { i8*, i64 } @xml_attr_name(%struct.XmlDocument* %0) #0 {
  %2 = alloca %struct.XmlString, align 8
  %3 = alloca %struct.XmlDocument*, align 8
  store %struct.XmlDocument* %0, %struct.XmlDocument** %3, align 8
  %4 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %5 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %8 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %20, %1
  %14 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %21, align 8
  %24 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %13, !llvm.loop !10

27:                                               ; preds = %13
  %28 = bitcast %struct.XmlString* %2 to { i8*, i64 }*
  %29 = load { i8*, i64 }, { i8*, i64 }* %28, align 8
  ret { i8*, i64 } %29
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { i8*, i64 } @xml_attr_value(%struct.XmlDocument* %0) #0 {
  %2 = alloca %struct.XmlString, align 8
  %3 = alloca %struct.XmlDocument*, align 8
  store %struct.XmlDocument* %0, %struct.XmlDocument** %3, align 8
  %4 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %5 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.XmlDocument*, %struct.XmlDocument** %3, align 8
  %8 = getelementptr inbounds %struct.XmlDocument, %struct.XmlDocument* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 2
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %34, %1
  %15 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 34
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 39
  br label %32

32:                                               ; preds = %23, %14
  %33 = phi i1 [ false, %14 ], [ %31, %23 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %2, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %14, !llvm.loop !11

38:                                               ; preds = %32
  %39 = bitcast %struct.XmlString* %2 to { i8*, i64 }*
  %40 = load { i8*, i64 }, { i8*, i64 }* %39, align 8
  ret { i8*, i64 } %40
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xml_string_eq(%struct.XmlString* %0, %struct.XmlString* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XmlString*, align 8
  %5 = alloca %struct.XmlString*, align 8
  %6 = alloca i64, align 8
  store %struct.XmlString* %0, %struct.XmlString** %4, align 8
  store %struct.XmlString* %1, %struct.XmlString** %5, align 8
  %7 = load %struct.XmlString*, %struct.XmlString** %5, align 8
  %8 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.XmlString*, %struct.XmlString** %4, align 8
  %11 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.XmlString*, %struct.XmlString** %4, align 8
  %17 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.XmlString*, %struct.XmlString** %5, align 8
  %20 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %53

24:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.XmlString*, %struct.XmlString** %4, align 8
  %28 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.XmlString*, %struct.XmlString** %4, align 8
  %33 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load %struct.XmlString*, %struct.XmlString** %5, align 8
  %40 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %38, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %53

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %25, !llvm.loop !12

52:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47, %23, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @xml_string_match(%struct.XmlString* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XmlString*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.XmlString* %0, %struct.XmlString** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.XmlString*, %struct.XmlString** %4, align 8
  %10 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = load %struct.XmlString*, %struct.XmlString** %4, align 8
  %15 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %13
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %13
  store i32 0, i32* %3, align 4
  br label %40

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %7, !llvm.loop !13

39:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @xml_string_cpy(%struct.XmlString* %0, i8* %1) #0 {
  %3 = alloca %struct.XmlString*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.XmlString* %0, %struct.XmlString** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.XmlString*, %struct.XmlString** %3, align 8
  %9 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.XmlString*, %struct.XmlString** %3, align 8
  %14 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %6, !llvm.loop !14

25:                                               ; preds = %6
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.XmlString*, %struct.XmlString** %3, align 8
  %28 = getelementptr inbounds %struct.XmlString, %struct.XmlString* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 0, i8* %30, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 12.0.1"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
