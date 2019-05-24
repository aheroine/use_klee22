; ModuleID = 'htonl.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone uwtable
define zeroext i16 @htons(i16 zeroext %v) #0 {
  tail call void @llvm.dbg.value(metadata !{i16 %v}, i64 0, metadata !13), !dbg !31
  %1 = tail call i16 @llvm.bswap.i16(i16 %v), !dbg !32
  ret i16 %1, !dbg !32
}

; Function Attrs: nounwind readnone uwtable
define i32 @htonl(i32 %v) #0 {
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !21), !dbg !33
  %1 = lshr i32 %v, 16, !dbg !34
  %2 = trunc i32 %1 to i16, !dbg !34
  tail call void @llvm.dbg.value(metadata !{i16 %2}, i64 0, metadata !35) #2, !dbg !36
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #2, !dbg !37
  %4 = zext i16 %3 to i32, !dbg !34
  %5 = trunc i32 %v to i16, !dbg !34
  tail call void @llvm.dbg.value(metadata !{i16 %5}, i64 0, metadata !35) #2, !dbg !36
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #2, !dbg !37
  %7 = zext i16 %6 to i32, !dbg !34
  %8 = shl nuw i32 %7, 16, !dbg !34
  %9 = or i32 %8, %4, !dbg !34
  ret i32 %9, !dbg !34
}

; Function Attrs: nounwind readnone uwtable
define zeroext i16 @ntohs(i16 zeroext %v) #0 {
  tail call void @llvm.dbg.value(metadata !{i16 %v}, i64 0, metadata !24), !dbg !38
  tail call void @llvm.dbg.value(metadata !{i16 %v}, i64 0, metadata !39) #2, !dbg !41
  %1 = tail call i16 @llvm.bswap.i16(i16 %v) #2, !dbg !42
  ret i16 %1, !dbg !40
}

; Function Attrs: nounwind readnone uwtable
define i32 @ntohl(i32 %v) #0 {
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !27), !dbg !43
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !44) #2, !dbg !46
  %1 = lshr i32 %v, 16, !dbg !47
  %2 = trunc i32 %1 to i16, !dbg !47
  tail call void @llvm.dbg.value(metadata !{i16 %2}, i64 0, metadata !48) #2, !dbg !49
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #2, !dbg !50
  %4 = zext i16 %3 to i32, !dbg !47
  %5 = trunc i32 %v to i16, !dbg !47
  tail call void @llvm.dbg.value(metadata !{i16 %5}, i64 0, metadata !48) #2, !dbg !49
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #2, !dbg !50
  %7 = zext i16 %6 to i32, !dbg !47
  %8 = shl nuw i32 %7, 16, !dbg !47
  %9 = or i32 %8, %4, !dbg !47
  ret i32 %9, !dbg !45
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind readnone
declare i16 @llvm.bswap.i16(i16) #1

attributes #0 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}

!0 = metadata !{i32 786449, metadata !1, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/jl/deploy/klee22/runtime/klee-libc//home/jl/deploy/klee22/runtime/klee-libc/htonl.c] [DW_LANG_C89]
!1 = metadata !{metadata !"/home/jl/deploy/klee22/runtime/klee-libc/htonl.c", metadata !"/home/jl/deploy/klee22/runtime/klee-libc"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !14, metadata !22, metadata !25}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"htons", metadata !"htons", metadata !"", i32 26, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16 (i16)* @htons, null, null, metadata !12, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [htons]
!5 = metadata !{metadata !"htonl.c", metadata !"/home/jl/deploy/klee22/runtime/klee-libc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [/home/jl/deploy/klee22/runtime/klee-libc/htonl.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786454, metadata !5, null, metadata !"uint16_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint16_t] [line 25, size 0, align 0, offset 0] [from __uint16_t]
!10 = metadata !{i32 786454, metadata !5, null, metadata !"__uint16_t", i32 39, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [__uint16_t] [line 39, size 0, align 0, offset 0] [from unsigned short]
!11 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !6, i32 16777242, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 26]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"htonl", metadata !"htonl", metadata !"", i32 29, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @htonl, null, null, metadata !20, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [htonl]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !17, metadata !17}
!17 = metadata !{i32 786454, metadata !5, null, metadata !"uint32_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [uint32_t] [line 26, size 0, align 0, offset 0] [from __uint32_t]
!18 = metadata !{i32 786454, metadata !5, null, metadata !"__uint32_t", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [__uint32_t] [line 41, size 0, align 0, offset 0] [from unsigned int]
!19 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786689, metadata !14, metadata !"v", metadata !6, i32 16777245, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 29]
!22 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"ntohs", metadata !"ntohs", metadata !"", i32 44, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16 (i16)* @ntohs, null, null, metadata !23, i32 44} ; [ DW_TAG_subprogram ] [line 44] [def] [ntohs]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786689, metadata !22, metadata !"v", metadata !6, i32 16777260, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 44]
!25 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"ntohl", metadata !"ntohl", metadata !"", i32 47, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @ntohl, null, null, metadata !26, i32 47} ; [ DW_TAG_subprogram ] [line 47] [def] [ntohl]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786689, metadata !25, metadata !"v", metadata !6, i32 16777263, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 47]
!28 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!29 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!30 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_342/final)"}
!31 = metadata !{i32 26, i32 0, metadata !4, null}
!32 = metadata !{i32 27, i32 0, metadata !4, null}
!33 = metadata !{i32 29, i32 0, metadata !14, null}
!34 = metadata !{i32 30, i32 0, metadata !14, null}
!35 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !6, i32 16777242, metadata !9, i32 0, metadata !34} ; [ DW_TAG_arg_variable ] [v] [line 26]
!36 = metadata !{i32 26, i32 0, metadata !4, metadata !34}
!37 = metadata !{i32 27, i32 0, metadata !4, metadata !34}
!38 = metadata !{i32 44, i32 0, metadata !22, null}
!39 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !6, i32 16777242, metadata !9, i32 0, metadata !40} ; [ DW_TAG_arg_variable ] [v] [line 26]
!40 = metadata !{i32 45, i32 0, metadata !22, null}
!41 = metadata !{i32 26, i32 0, metadata !4, metadata !40}
!42 = metadata !{i32 27, i32 0, metadata !4, metadata !40}
!43 = metadata !{i32 47, i32 0, metadata !25, null}
!44 = metadata !{i32 786689, metadata !14, metadata !"v", metadata !6, i32 16777245, metadata !17, i32 0, metadata !45} ; [ DW_TAG_arg_variable ] [v] [line 29]
!45 = metadata !{i32 48, i32 0, metadata !25, null}
!46 = metadata !{i32 29, i32 0, metadata !14, metadata !45}
!47 = metadata !{i32 30, i32 0, metadata !14, metadata !45}
!48 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !6, i32 16777242, metadata !9, i32 0, metadata !47} ; [ DW_TAG_arg_variable ] [v] [line 26]
!49 = metadata !{i32 26, i32 0, metadata !4, metadata !47}
!50 = metadata !{i32 27, i32 0, metadata !4, metadata !47}
