	.file	"centro.c"
# GNU C (GCC) version 4.8.1 20130603 (Red Hat 4.8.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.1 20130603 (Red Hat 4.8.1-1), GMP version 5.1.1, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  centro.c -mtune=generic -march=x86-64
# -auxbase-strip centro.S -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
# -fident -finline-atomics -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -fmath-errno -fmerge-debug-strings
# -fmove-loop-invariants -fpeephole -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
# -fsigned-zeros -fsplit-ivs-in-unroller -fstrict-volatile-bitfields
# -fsync-libcalls -ftrapping-math -ftree-coalesce-vars -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-slp-vectorize
# -ftree-vect-loop-version -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.section	.rodata
.LC0:
	.string	"r"
	.text
	.globl	read_lines
	.type	read_lines, @function
read_lines:
.LFB2:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# arg, arg
	movq	stdin(%rip), %rdx	# stdin, stdin.0
	movq	-40(%rbp), %rax	# arg, tmp65
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	freopen	#
	movl	$0, -4(%rbp)	#, n
	movl	$10000, %edi	#,
	call	malloc	#
	movq	%rax, -24(%rbp)	# s.1, s
	jmp	.L2	#
.L3:
	addl	$1, -4(%rbp)	#, n
.L2:
	movq	stdin(%rip), %rdx	# stdin, stdin.2
	leaq	-16(%rbp), %rcx	#, tmp67
	leaq	-24(%rbp), %rax	#, tmp68
	movq	%rcx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	getline	#
	cmpq	$-1, %rax	#, D.2743
	jne	.L3	#,
	movl	-4(%rbp), %eax	# n, D.2744
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	read_lines, .-read_lines
	.section	.rodata
.LC1:
	.string	"%d lineas leidas\n"
.LC2:
	.string	"%d\n"
.LC3:
	.string	"%f %f %f"
.LC4:
	.string	"%f %f %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# argc, argc
	movq	%rsi, -48(%rbp)	# argv, argv
	movq	-48(%rbp), %rax	# argv, tmp95
	addq	$8, %rax	#, D.2746
	movq	(%rax), %rax	# *_3, D.2747
	movq	%rax, %rdi	# D.2747,
	call	read_lines	#
	movl	%eax, -8(%rbp)	# tmp96, n
	movl	-8(%rbp), %eax	# n, tmp97
	movl	%eax, %esi	# tmp97,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movl	-8(%rbp), %eax	# n, tmp98
	cltq
	salq	$2, %rax	#, D.2748
	movq	%rax, %rdi	# D.2748,
	call	malloc	#
	movq	%rax, -16(%rbp)	# tmp99, x
	movl	-8(%rbp), %eax	# n, tmp100
	cltq
	salq	$2, %rax	#, D.2748
	movq	%rax, %rdi	# D.2748,
	call	malloc	#
	movq	%rax, -24(%rbp)	# tmp101, y
	movl	-8(%rbp), %eax	# n, tmp102
	cltq
	salq	$2, %rax	#, D.2748
	movq	%rax, %rdi	# D.2748,
	call	malloc	#
	movq	%rax, -32(%rbp)	# tmp103, z
	movq	stdin(%rip), %rdx	# stdin, stdin.3
	movq	-48(%rbp), %rax	# argv, tmp104
	addq	$8, %rax	#, D.2746
	movq	(%rax), %rax	# *_16, D.2747
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.2747,
	call	freopen	#
	movl	-8(%rbp), %eax	# n, tmp105
	movl	%eax, %esi	# tmp105,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movl	$0, -4(%rbp)	#, i
	jmp	.L6	#
.L7:
	movl	-4(%rbp), %eax	# i, tmp106
	cltq
	leaq	0(,%rax,4), %rdx	#, D.2748
	movq	-32(%rbp), %rax	# z, tmp107
	leaq	(%rdx,%rax), %rcx	#, D.2749
	movl	-4(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, D.2748
	movq	-24(%rbp), %rax	# y, tmp109
	addq	%rax, %rdx	# tmp109, D.2749
	movl	-4(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rsi	#, D.2748
	movq	-16(%rbp), %rax	# x, tmp111
	addq	%rsi, %rax	# D.2748, D.2749
	movq	%rax, %rsi	# D.2749,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, D.2748
	movq	-32(%rbp), %rax	# z, tmp113
	addq	%rdx, %rax	# D.2748, D.2749
	movss	(%rax), %xmm0	# *_30, D.2750
	unpcklps	%xmm0, %xmm0	# D.2750, D.2750
	cvtps2pd	%xmm0, %xmm2	# D.2750, D.2751
	movl	-4(%rbp), %eax	# i, tmp114
	cltq
	leaq	0(,%rax,4), %rdx	#, D.2748
	movq	-24(%rbp), %rax	# y, tmp115
	addq	%rdx, %rax	# D.2748, D.2749
	movss	(%rax), %xmm0	# *_35, D.2750
	unpcklps	%xmm0, %xmm0	# D.2750, D.2750
	cvtps2pd	%xmm0, %xmm1	# D.2750, D.2751
	movl	-4(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, D.2748
	movq	-16(%rbp), %rax	# x, tmp117
	addq	%rdx, %rax	# D.2748, D.2749
	movss	(%rax), %xmm0	# *_40, D.2750
	unpcklps	%xmm0, %xmm0	# D.2750, D.2750
	cvtps2pd	%xmm0, %xmm0	# D.2750, D.2751
	movl	$.LC4, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	addl	$1, -4(%rbp)	#, i
.L6:
	movl	-4(%rbp), %eax	# i, tmp118
	cmpl	-8(%rbp), %eax	# n, tmp118
	jl	.L7	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.1 20130603 (Red Hat 4.8.1-1)"
	.section	.note.GNU-stack,"",@progbits
