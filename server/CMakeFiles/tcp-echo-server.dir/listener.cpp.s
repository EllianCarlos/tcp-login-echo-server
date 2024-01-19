	.file	"listener.cpp"
	.text
	.section	.text._ZSt23__is_constant_evaluatedv,"axG",@progbits,_ZSt23__is_constant_evaluatedv,comdat
	.weak	_ZSt23__is_constant_evaluatedv
	.type	_ZSt23__is_constant_evaluatedv, @function
_ZSt23__is_constant_evaluatedv:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZSt23__is_constant_evaluatedv, .-_ZSt23__is_constant_evaluatedv
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZSt23__is_constant_evaluatedv
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.rodata
	.align 8
.LC0:
	.string	"%s: __pos (which is %zu) > __size (which is %zu)"
	.section	.text._ZSt10__sv_checkmmPKc,"axG",@progbits,_ZSt10__sv_checkmmPKc,comdat
	.weak	_ZSt10__sv_checkmmPKc
	.type	_ZSt10__sv_checkmmPKc, @function
_ZSt10__sv_checkmmPKc:
.LFB846:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L7
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L7:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	_ZSt10__sv_checkmmPKc, .-_ZSt10__sv_checkmmPKc
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata
.LC1:
	.string	"Socket cannot be created."
.LC2:
	.string	"Socket created."
.LC3:
	.string	"0.0.0.0"
#NO_APP
	.text
	.align 2
	.globl	_ZN8ListenerC2Ei
	.type	_ZN8ListenerC2Ei, @function
_ZN8ListenerC2Ei:
.LFB1987:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1987
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket@PLT
	movq	-104(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L10
	leaq	-81(%rbp), %rax
	movq	%rax, -80(%rbp)
	nop
	nop
	leaq	-81(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZN6Logger5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE1:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movl	$0, %edi
	call	exit@PLT
.L10:
	leaq	-81(%rbp), %rax
	movq	%rax, -72(%rbp)
	nop
	nop
	leaq	-81(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZN6Logger4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE3:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	-104(%rbp), %rax
	movw	$2, 4(%rax)
	movl	-108(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons@PLT
	movq	-104(%rbp), %rdx
	movw	%ax, 6(%rdx)
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	inet_pton@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L17
	jmp	.L22
.L19:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L12
.L18:
	movq	%rax, %rbx
.L12:
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.L21:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L15
.L20:
	movq	%rax, %rbx
.L15:
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
.L22:
	call	__stack_chk_fail@PLT
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1987:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1987:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1987-.LLSDACSB1987
.LLSDACSB1987:
	.uleb128 .LEHB0-.LFB1987
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L18-.LFB1987
	.uleb128 0
	.uleb128 .LEHB1-.LFB1987
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L19-.LFB1987
	.uleb128 0
	.uleb128 .LEHB2-.LFB1987
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L20-.LFB1987
	.uleb128 0
	.uleb128 .LEHB3-.LFB1987
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L21-.LFB1987
	.uleb128 0
	.uleb128 .LEHB4-.LFB1987
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1987:
	.text
	.size	_ZN8ListenerC2Ei, .-_ZN8ListenerC2Ei
	.globl	_ZN8ListenerC1Ei
	.set	_ZN8ListenerC1Ei,_ZN8ListenerC2Ei
	.section	.rodata
.LC4:
	.string	"Could not bind to port."
	.align 8
.LC5:
	.string	"Socket was binded to given address."
	.text
	.align 2
	.globl	_ZN8Listener8bindPortEv
	.type	_ZN8Listener8bindPortEv, @function
_ZN8Listener8bindPortEv:
.LFB1989:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1989
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind@PLT
	shrl	$31, %eax
	testb	%al, %al
	je	.L24
	leaq	-81(%rbp), %rax
	movq	%rax, -80(%rbp)
	nop
	nop
	leaq	-81(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE5:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB6:
	call	_ZN6Logger5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE6:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movl	$-3, %edi
	call	exit@PLT
.L24:
	leaq	-81(%rbp), %rax
	movq	%rax, -72(%rbp)
	nop
	nop
	leaq	-81(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE7:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZN6Logger4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE8:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L31
	jmp	.L36
.L33:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L26
.L32:
	movq	%rax, %rbx
.L26:
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.L35:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L29
.L34:
	movq	%rax, %rbx
.L29:
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE9:
.L36:
	call	__stack_chk_fail@PLT
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1989:
	.section	.gcc_except_table
.LLSDA1989:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1989-.LLSDACSB1989
.LLSDACSB1989:
	.uleb128 .LEHB5-.LFB1989
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L32-.LFB1989
	.uleb128 0
	.uleb128 .LEHB6-.LFB1989
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L33-.LFB1989
	.uleb128 0
	.uleb128 .LEHB7-.LFB1989
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L34-.LFB1989
	.uleb128 0
	.uleb128 .LEHB8-.LFB1989
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L35-.LFB1989
	.uleb128 0
	.uleb128 .LEHB9-.LFB1989
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1989:
	.text
	.size	_ZN8Listener8bindPortEv, .-_ZN8Listener8bindPortEv
	.section	.rodata
.LC6:
	.string	"Cannot accept connections."
.LC7:
	.string	"Can accept connections."
	.text
	.align 2
	.globl	_ZN8Listener14acceptListenerEv
	.type	_ZN8Listener14acceptListenerEv, @function
_ZN8Listener14acceptListenerEv:
.LFB1990:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1990
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$16, -88(%rbp)
	movq	-104(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	leaq	-88(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
.LEHB10:
	call	accept@PLT
.LEHE10:
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	shrl	$31, %eax
	testb	%al, %al
	je	.L38
	leaq	-89(%rbp), %rax
	movq	%rax, -80(%rbp)
	nop
	nop
	leaq	-89(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE11:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB12:
	call	_ZN6Logger5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE12:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movl	$-5, %edi
	call	exit@PLT
.L38:
	leaq	-89(%rbp), %rax
	movq	%rax, -72(%rbp)
	nop
	nop
	leaq	-89(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE13:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB14:
	call	_ZN6Logger4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE14:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L45
	jmp	.L50
.L47:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L40
.L46:
	movq	%rax, %rbx
.L40:
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L41
	call	__stack_chk_fail@PLT
.L41:
	movq	%rax, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.L49:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L43
.L48:
	movq	%rax, %rbx
.L43:
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE15:
.L50:
	call	__stack_chk_fail@PLT
.L45:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1990:
	.section	.gcc_except_table
.LLSDA1990:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1990-.LLSDACSB1990
.LLSDACSB1990:
	.uleb128 .LEHB10-.LFB1990
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1990
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L46-.LFB1990
	.uleb128 0
	.uleb128 .LEHB12-.LFB1990
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L47-.LFB1990
	.uleb128 0
	.uleb128 .LEHB13-.LFB1990
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L48-.LFB1990
	.uleb128 0
	.uleb128 .LEHB14-.LFB1990
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L49-.LFB1990
	.uleb128 0
	.uleb128 .LEHB15-.LFB1990
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE1990:
	.text
	.size	_ZN8Listener14acceptListenerEv, .-_ZN8Listener14acceptListenerEv
	.section	.rodata
.LC8:
	.string	"Socket could not listen!"
.LC9:
	.string	"Socket is listening."
	.text
	.align 2
	.globl	_ZN8Listener10listenPortEv
	.type	_ZN8Listener10listenPortEv, @function
_ZN8Listener10listenPortEv:
.LFB1991:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1991
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	$4096, %esi
	movl	%eax, %edi
	call	listen@PLT
	shrl	$31, %eax
	testb	%al, %al
	je	.L52
	leaq	-81(%rbp), %rax
	movq	%rax, -80(%rbp)
	nop
	nop
	leaq	-81(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE16:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB17:
	call	_ZN6Logger5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE17:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movl	$-4, %edi
	call	exit@PLT
.L52:
	leaq	-81(%rbp), %rax
	movq	%rax, -72(%rbp)
	nop
	nop
	leaq	-81(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE18:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB19:
	call	_ZN6Logger4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE19:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L59
	jmp	.L64
.L61:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L54
.L60:
	movq	%rax, %rbx
.L54:
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L55
	call	__stack_chk_fail@PLT
.L55:
	movq	%rax, %rdi
.LEHB20:
	call	_Unwind_Resume@PLT
.L63:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L57
.L62:
	movq	%rax, %rbx
.L57:
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L58
	call	__stack_chk_fail@PLT
.L58:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE20:
.L64:
	call	__stack_chk_fail@PLT
.L59:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1991:
	.section	.gcc_except_table
.LLSDA1991:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1991-.LLSDACSB1991
.LLSDACSB1991:
	.uleb128 .LEHB16-.LFB1991
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L60-.LFB1991
	.uleb128 0
	.uleb128 .LEHB17-.LFB1991
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L61-.LFB1991
	.uleb128 0
	.uleb128 .LEHB18-.LFB1991
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L62-.LFB1991
	.uleb128 0
	.uleb128 .LEHB19-.LFB1991
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L63-.LFB1991
	.uleb128 0
	.uleb128 .LEHB20-.LFB1991
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE1991:
	.text
	.size	_ZN8Listener10listenPortEv, .-_ZN8Listener10listenPortEv
	.section	.rodata
.LC10:
	.string	"Closed main socket."
	.text
	.align 2
	.globl	_ZN8Listener9closeMainEv
	.type	_ZN8Listener9closeMainEv, @function
_ZN8Listener9closeMainEv:
.LFB1992:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1992
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
.LEHB21:
	call	close@PLT
.LEHE21:
	leaq	-73(%rbp), %rax
	movq	%rax, -72(%rbp)
	nop
	nop
	leaq	-73(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE22:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB23:
	call	_ZN6Logger4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE23:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L69
	jmp	.L72
.L71:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L67
.L70:
	movq	%rax, %rbx
.L67:
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L68
	call	__stack_chk_fail@PLT
.L68:
	movq	%rax, %rdi
.LEHB24:
	call	_Unwind_Resume@PLT
.LEHE24:
.L72:
	call	__stack_chk_fail@PLT
.L69:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1992:
	.section	.gcc_except_table
.LLSDA1992:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1992-.LLSDACSB1992
.LLSDACSB1992:
	.uleb128 .LEHB21-.LFB1992
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB1992
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L70-.LFB1992
	.uleb128 0
	.uleb128 .LEHB23-.LFB1992
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L71-.LFB1992
	.uleb128 0
	.uleb128 .LEHB24-.LFB1992
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE1992:
	.text
	.size	_ZN8Listener9closeMainEv, .-_ZN8Listener9closeMainEv
	.section	.rodata
.LC11:
	.string	"Closed client socket."
	.text
	.align 2
	.globl	_ZN8Listener11closeClientEv
	.type	_ZN8Listener11closeClientEv, @function
_ZN8Listener11closeClientEv:
.LFB1993:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1993
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edi
.LEHB25:
	call	close@PLT
.LEHE25:
	leaq	-73(%rbp), %rax
	movq	%rax, -72(%rbp)
	nop
	nop
	leaq	-73(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB26:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE26:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB27:
	call	_ZN6Logger4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE27:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L77
	jmp	.L80
.L79:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L75
.L78:
	movq	%rax, %rbx
.L75:
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L76
	call	__stack_chk_fail@PLT
.L76:
	movq	%rax, %rdi
.LEHB28:
	call	_Unwind_Resume@PLT
.LEHE28:
.L80:
	call	__stack_chk_fail@PLT
.L77:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1993:
	.section	.gcc_except_table
.LLSDA1993:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1993-.LLSDACSB1993
.LLSDACSB1993:
	.uleb128 .LEHB25-.LFB1993
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB1993
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L78-.LFB1993
	.uleb128 0
	.uleb128 .LEHB27-.LFB1993
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L79-.LFB1993
	.uleb128 0
	.uleb128 .LEHB28-.LFB1993
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE1993:
	.text
	.size	_ZN8Listener11closeClientEv, .-_ZN8Listener11closeClientEv
	.section	.rodata
.LC12:
	.string	"Client is not connected."
.LC13:
	.string	"Something went wrong."
.LC14:
	.string	"received message from client"
.LC15:
	.string	"Message could not be sent."
	.text
	.align 2
	.globl	_ZN8Listener7receiveER11LoginServer
	.type	_ZN8Listener7receiveER11LoginServer, @function
_ZN8Listener7receiveER11LoginServer:
.LFB1994:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1994
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -4216(%rbp)
	movq	%rsi, -4224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.L86:
	movq	-4216(%rbp), %rax
	movl	20(%rax), %eax
	leaq	-4128(%rbp), %rsi
	movl	$0, %ecx
	movl	$4096, %edx
	movl	%eax, %edi
.LEHB29:
	call	recv@PLT
.LEHE29:
	movl	%eax, -4204(%rbp)
	cmpl	$0, -4204(%rbp)
	jne	.L82
	leaq	-4205(%rbp), %rax
	movq	%rax, -4200(%rbp)
	nop
	nop
	leaq	-4205(%rbp), %rdx
	leaq	-4160(%rbp), %rax
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE30:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
.LEHB31:
	call	_ZN6Logger4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE31:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L83
.L82:
	cmpl	$0, -4204(%rbp)
	jns	.L84
	leaq	-4205(%rbp), %rax
	movq	%rax, -4192(%rbp)
	nop
	nop
	leaq	-4205(%rbp), %rdx
	leaq	-4160(%rbp), %rax
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB32:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE32:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
.LEHB33:
	call	_ZN6Logger5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE33:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L83
.L84:
	leaq	-4205(%rbp), %rax
	movq	%rax, -4184(%rbp)
	nop
	nop
	leaq	-4205(%rbp), %rdx
	leaq	-4160(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE34:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
.LEHB35:
	call	_ZN6Logger4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE35:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movl	-4204(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4216(%rbp), %rax
	movl	20(%rax), %eax
	leaq	-4128(%rbp), %rsi
	movl	$0, %ecx
	movl	%eax, %edi
.LEHB36:
	call	send@PLT
.LEHE36:
	shrq	$63, %rax
	testb	%al, %al
	je	.L85
	leaq	-4205(%rbp), %rax
	movq	%rax, -4176(%rbp)
	nop
	nop
	leaq	-4205(%rbp), %rdx
	leaq	-4160(%rbp), %rax
	leaq	.LC15(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB37:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE37:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
.LEHB38:
	call	_ZN6Logger5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE38:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L83
.L85:
	movq	-4224(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rbx
	leaq	-4205(%rbp), %rax
	movq	%rax, -4168(%rbp)
	nop
	nop
	movl	-4204(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-4205(%rbp), %rcx
	leaq	-4128(%rbp), %rsi
	leaq	-4160(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
.LEHB39:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IA4096_cvEERKT_mmRKS3_
.LEHE39:
	leaq	-4160(%rbp), %rdx
	movq	-4224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB40:
	call	*%rbx
.LEHE40:
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L86
.L83:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L102
	jmp	.L113
.L104:
	movq	%rax, %rbx
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L88
.L103:
	movq	%rax, %rbx
.L88:
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L89
	call	__stack_chk_fail@PLT
.L89:
	movq	%rax, %rdi
.LEHB41:
	call	_Unwind_Resume@PLT
.L106:
	movq	%rax, %rbx
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L91
.L105:
	movq	%rax, %rbx
.L91:
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L92
	call	__stack_chk_fail@PLT
.L92:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L108:
	movq	%rax, %rbx
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L94
.L107:
	movq	%rax, %rbx
.L94:
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L95
	call	__stack_chk_fail@PLT
.L95:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L110:
	movq	%rax, %rbx
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L97
.L109:
	movq	%rax, %rbx
.L97:
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L98
	call	__stack_chk_fail@PLT
.L98:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L112:
	movq	%rax, %rbx
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L100
.L111:
	movq	%rax, %rbx
.L100:
	leaq	-4205(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L101
	call	__stack_chk_fail@PLT
.L101:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE41:
.L113:
	call	__stack_chk_fail@PLT
.L102:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1994:
	.section	.gcc_except_table
.LLSDA1994:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1994-.LLSDACSB1994
.LLSDACSB1994:
	.uleb128 .LEHB29-.LFB1994
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB1994
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L103-.LFB1994
	.uleb128 0
	.uleb128 .LEHB31-.LFB1994
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L104-.LFB1994
	.uleb128 0
	.uleb128 .LEHB32-.LFB1994
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L105-.LFB1994
	.uleb128 0
	.uleb128 .LEHB33-.LFB1994
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L106-.LFB1994
	.uleb128 0
	.uleb128 .LEHB34-.LFB1994
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L107-.LFB1994
	.uleb128 0
	.uleb128 .LEHB35-.LFB1994
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L108-.LFB1994
	.uleb128 0
	.uleb128 .LEHB36-.LFB1994
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB1994
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L109-.LFB1994
	.uleb128 0
	.uleb128 .LEHB38-.LFB1994
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L110-.LFB1994
	.uleb128 0
	.uleb128 .LEHB39-.LFB1994
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L111-.LFB1994
	.uleb128 0
	.uleb128 .LEHB40-.LFB1994
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L112-.LFB1994
	.uleb128 0
	.uleb128 .LEHB41-.LFB1994
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE1994:
	.text
	.size	_ZN8Listener7receiveER11LoginServer, .-_ZN8Listener7receiveER11LoginServer
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB1995:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	jmp	.L115
.L116:
	addq	$1, -16(%rbp)
.L115:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L116
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L118
	call	__stack_chk_fail@PLT
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1995:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm,"axG",@progbits,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC5EPKcm,comdat
	.align 2
	.weak	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm
	.type	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm, @function
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm:
.LFB2011:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2011:
	.size	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm, .-_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm
	.weak	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKcm
	.set	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKcm,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB2104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2104:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.rodata
	.align 8
.LC16:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB2251:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2251
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
	cmpq	$0, -48(%rbp)
	jne	.L122
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
.LEHB42:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L122:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE42:
	jmp	.L125
.L124:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB43:
	call	_Unwind_Resume@PLT
.LEHE43:
.L125:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2251:
	.section	.gcc_except_table
.LLSDA2251:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2251-.LLSDACSB2251
.LLSDACSB2251:
	.uleb128 .LEHB42-.LFB2251
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L124-.LFB2251
	.uleb128 0
	.uleb128 .LEHB43-.LFB2251
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE2251:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IA4096_cvEERKT_mmRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IA4096_cvEERKT_mmRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IA4096_cvEERKT_mmRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IA4096_cvEERKT_mmRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IA4096_cvEERKT_mmRKS3_:
.LFB2254:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E@PLT
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2254:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IA4096_cvEERKT_mmRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IA4096_cvEERKT_mmRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IA4096_cvEERKT_mmRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IA4096_cvEERKT_mmRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IA4096_cvEERKT_mmRKS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB2256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2256:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, @function
_ZNSt15__new_allocatorIcED2Ev:
.LFB2264:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2264:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB2292:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2292:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB2295:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2295
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L134:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2295:
	.section	.gcc_except_table
.LLSDA2295:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2295-.LLSDACSB2295
.LLSDACSB2295:
.LLSDACSE2295:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB2290:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	nop
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	nop
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L139
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
	jmp	.L140
.L139:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	nop
.L140:
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	$0, -48(%rbp)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L142
	call	__stack_chk_fail@PLT
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2290:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,"axG",@progbits,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC5EPKc,comdat
	.align 2
	.weak	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.type	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc, @function
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc:
.LFB2359:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2359
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2359:
	.section	.gcc_except_table
.LLSDA2359:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2359-.LLSDACSB2359
.LLSDACSB2359:
.LLSDACSE2359:
	.section	.text._ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,"axG",@progbits,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC5EPKc,comdat
	.size	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc, .-_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.weak	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	.set	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB2362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L145
	movq	-16(%rbp), %rax
	jmp	.L146
.L145:
	movq	-8(%rbp), %rax
.L146:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2362:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.rodata
.LC17:
	.string	"basic_string_view::substr"
	.section	.text._ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm,"axG",@progbits,_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm,comdat
	.align 2
	.weak	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm
	.type	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm, @function
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm:
.LFB2361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZSt10__sv_checkmmPKc
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKcm
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2361:
	.size	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm, .-_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ISt17basic_string_viewIcS2_EvEERKT_RKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_:
.LFB2364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC1ESt17basic_string_viewIcS2_E@PLT
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ENS4_12__sv_wrapperERKS3_@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L151
	call	__stack_chk_fail@PLT
.L151:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2364:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt17basic_string_viewIcS2_EvEERKT_RKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.section	.text._ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv,"axG",@progbits,_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
	.type	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv, @function
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv:
.LFB2438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2438:
	.size	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv, .-_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
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
