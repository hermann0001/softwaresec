	.file	"hello_world_V2.c"
	.text
	.section	.rodata
.LC0:
	.string	"sizeof(char)  = %d byte\n"
.LC1:
	.string	"sizeof(short) = %d byte\n"
.LC2:
	.string	"sizeof(int)   = %d byte\n"
	.align 8
.LC3:
	.string	"----------------------------------------------"
.LC4:
	.string	"sizeof(char*) = %d byte\n"
.LC5:
	.string	"sizeof(short*)= %d byte\n"
.LC6:
	.string	"sizeof(int*)  = %d byte\n"
	.align 8
.LC7:
	.string	"sizeof(string) == strlen(string) => %d\n\n"
.LC8:
	.string	"Value at ptr = %p \n"
.LC9:
	.string	"Value at var = %d \n"
.LC10:
	.string	"Value at *ptr = %d \n\n"
	.align 8
.LC11:
	.string	"static_array == &static_array[0] => %d\n\n"
	.align 8
.LC12:
	.string	"Value of static_array[%d] = %d\n"
.LC13:
	.string	"Value of *ptr = %d\n"
.LC14:
	.string	"Value of ptr = %p\n\n"
	.align 8
.LC15:
	.string	"Value of dynamic_array[%d] = %d\n"
.LC17:
	.string	"int value: %d\n"
.LC18:
	.string	"float value: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$2, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$4, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$8, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$8, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$8, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$4609091, -12(%rbp)
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$4, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -68(%rbp)
	leaq	-68(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -24(%rbp)
	movl	$2, -20(%rbp)
	movl	$3, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -56(%rbp)
	jmp	.L2
.L3:
	movl	-56(%rbp), %eax
	cltq
	movl	-24(%rbp,%rax,4), %edx
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$4, -48(%rbp)
	addl	$1, -56(%rbp)
.L2:
	cmpl	$2, -56(%rbp)
	jle	.L3
	movl	$12, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L4
.L5:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -52(%rbp)
.L4:
	cmpl	$2, -52(%rbp)
	jle	.L5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$3, -64(%rbp)
	movss	.LC16(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-60(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC16:
	.long	1078523331
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
