	.file	"main.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.globl	_Z6is_intPc
	.type	_Z6is_intPc, @function
_Z6is_intPc:
.LFB2630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	jmp	.L2
.L6:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L3
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L4
.L3:
	movl	$0, %eax
	jmp	.L5
.L4:
	addq	$1, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	movl	$1, %eax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2630:
	.size	_Z6is_intPc, .-_Z6is_intPc
	.section	.text._ZN7iServerC2Ev,"axG",@progbits,_ZN7iServerC5Ev,comdat
	.align 2
	.weak	_ZN7iServerC2Ev
	.type	_ZN7iServerC2Ev, @function
_ZN7iServerC2Ev:
.LFB2634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV7iServer(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2634:
	.size	_ZN7iServerC2Ev, .-_ZN7iServerC2Ev
	.weak	_ZN7iServerC1Ev
	.set	_ZN7iServerC1Ev,_ZN7iServerC2Ev
	.section	.text._ZN11LoginServerC2Ev,"axG",@progbits,_ZN11LoginServerC5Ev,comdat
	.align 2
	.weak	_ZN11LoginServerC2Ev
	.type	_ZN11LoginServerC2Ev, @function
_ZN11LoginServerC2Ev:
.LFB2636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7iServerC2Ev
	leaq	16+_ZTV11LoginServer(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2636:
	.size	_ZN11LoginServerC2Ev, .-_ZN11LoginServerC2Ev
	.weak	_ZN11LoginServerC1Ev
	.set	_ZN11LoginServerC1Ev,_ZN11LoginServerC2Ev
	.section	.rodata
	.align 8
.LC0:
	.string	"[ERROR] Port is not provided via command line parameters!\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2631:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2631
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	cmpl	$2, -52(%rbp)
	jne	.L10
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z6is_intPc
	xorl	$1, %eax
	testb	%al, %al
	je	.L11
.L10:
	movl	$1, %eax
	jmp	.L12
.L11:
	movl	$0, %eax
.L12:
	testb	%al, %al
	je	.L13
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cerr(%rip), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$-1, %eax
	jmp	.L18
.L13:
	movl	$8, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	$0, (%rbx)
	movq	%rbx, %rdi
	call	_ZN11LoginServerC1Ev
	movq	%rbx, -48(%rbp)
	movl	$40, %edi
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %rbx
	movl	$1, %r13d
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %esi
	movq	%rbx, %rdi
.LEHB1:
	call	_ZN8ListenerC1Ei@PLT
.LEHE1:
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB2:
	call	_ZN8Listener8bindPortEv@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Listener10listenPortEv@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Listener14acceptListenerEv@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8Listener7receiveER11LoginServer@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	%rax, %r12
	testb	%r13b, %r13b
	je	.L16
	movl	$40, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L16:
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
.L18:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2631:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2631:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2631-.LLSDACSB2631
.LLSDACSB2631:
	.uleb128 .LEHB0-.LFB2631
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2631
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L17-.LFB2631
	.uleb128 0
	.uleb128 .LEHB2-.LFB2631
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2631:
	.text
	.size	main, .-main
	.weak	_ZTV7iServer
	.section	.data.rel.ro._ZTV7iServer,"awG",@progbits,_ZTV7iServer,comdat
	.align 8
	.type	_ZTV7iServer, @object
	.size	_ZTV7iServer, 40
_ZTV7iServer:
	.quad	0
	.quad	_ZTI7iServer
	.quad	0
	.quad	0
	.quad	__cxa_pure_virtual
	.weak	_ZTI7iServer
	.section	.data.rel.ro._ZTI7iServer,"awG",@progbits,_ZTI7iServer,comdat
	.align 8
	.type	_ZTI7iServer, @object
	.size	_ZTI7iServer, 16
_ZTI7iServer:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS7iServer
	.weak	_ZTS7iServer
	.section	.rodata._ZTS7iServer,"aG",@progbits,_ZTS7iServer,comdat
	.align 8
	.type	_ZTS7iServer, @object
	.size	_ZTS7iServer, 9
_ZTS7iServer:
	.string	"7iServer"
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.weak	__cxa_pure_virtual
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
