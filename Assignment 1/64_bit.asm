	.file	"addnumber.c"
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	movl	%rsp, %rbp
	.cfi_def_cfa_register 5
	andl	$-16, %rsp
	subq	$32, %rsp
	movl	$4, 20(%rsp)
	movl	$5, 24(%rsp)
	movl	24(%rsp), %rax
	movl	20(%rsp), %rdx
	addl	%rdx, %rax
	movl	%rax, 28(%rsp)
	movl	28(%rsp), %rax
	movl	%rax, 4(%rsp)
	movl	$.LC0, (%rsp)
	call	printf
	movl	$0, %rax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
