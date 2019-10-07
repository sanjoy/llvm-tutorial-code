	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_sum                    ## -- Begin function sum
	.p2align	4, 0x90
_sum:                                   ## @sum
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	jle	LBB0_1
## %bb.2:                               ## %for.body.preheader
	leaq	-1(%rdi), %rax
	leaq	-2(%rdi), %rcx
	mulq	%rcx
	shldq	$63, %rax, %rdx
	leaq	-1(%rdx,%rdi), %rax
	popq	%rbp
	retq
LBB0_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
