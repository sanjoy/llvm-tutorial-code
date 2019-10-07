; ModuleID = '<stdin>'
source_filename = "code.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i64 @sum(i64 %lim) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp sgt i64 %lim, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %tmp = add nsw i64 %lim, -1
  %tmp1 = zext i64 %tmp to i65
  %tmp2 = add nsw i64 %lim, -2
  %tmp3 = zext i64 %tmp2 to i65
  %tmp4 = mul i65 %tmp1, %tmp3
  %tmp5 = lshr i65 %tmp4, 1
  %tmp6 = trunc i65 %tmp5 to i64
  %tmp7 = add i64 %tmp6, %lim
  %tmp8 = add i64 %tmp7, -1
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry
  %total.0.lcssa = phi i64 [ 0, %entry ], [ %tmp8, %for.body.preheader ]
  ret i64 %total.0.lcssa
}

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (http://llvm.org/git/clang.git 1c3c183da3437d9580a66c719a1cb54522d530ee) (llvm/trunk 373868)"}
