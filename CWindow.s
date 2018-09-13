	.text
	.def	 _ZN7CWindow8GDI_drawEv;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN7CWindow8GDI_drawEv
	.p2align	4, 0x90
_ZN7CWindow8GDI_drawEv:                 # @_ZN7CWindow8GDI_drawEv
.Lcfi0:
.seh_proc _ZN7CWindow8GDI_drawEv
# BB#0:
	pushq	%r14
.Lcfi1:
	.seh_pushreg 14
	pushq	%rsi
.Lcfi2:
	.seh_pushreg 6
	pushq	%rdi
.Lcfi3:
	.seh_pushreg 7
	pushq	%rbx
.Lcfi4:
	.seh_pushreg 3
	subq	$184, %rsp
.Lcfi5:
	.seh_stackalloc 184
.Lcfi6:
	.seh_endprologue
	movq	%rcx, 176(%rsp)
	movq	176(%rsp), %rcx
	movq	248(%rcx), %rax
	movq	__imp_GetDC(%rip), %rdx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	*%rdx
	leaq	152(%rsp), %rcx
	movq	%rax, 168(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	248(%rax), %rdx
	movq	__imp_GetClientRect(%rip), %r8
	leaq	152(%rsp), %r9
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movq	%rdx, %rcx
	movq	%r9, %rdx
	callq	*%r8
	xorl	%r10d, %r10d
	movl	$13369376, %r11d        # imm = 0xCC0020
	movq	168(%rsp), %rcx
	movl	160(%rsp), %r9d
	movl	164(%rsp), %esi
	movq	144(%rsp), %rdx         # 8-byte Reload
	movl	232(%rdx), %edi
	movl	236(%rdx), %ebx
	movq	160(%rdx), %r8
	addq	$168, %rdx
	movq	%rsp, %r14
	movq	%rdx, 80(%r14)
	movq	%r8, 72(%r14)
	movl	%ebx, 64(%r14)
	movl	%edi, 56(%r14)
	movl	%esi, 32(%r14)
	movl	$13369376, 96(%r14)     # imm = 0xCC0020
	movl	$0, 88(%r14)
	movl	$0, 48(%r14)
	movl	$0, 40(%r14)
	movq	__imp_StretchDIBits(%rip), %rdx
	xorl	%esi, %esi
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movl	%esi, %edx
	movl	%esi, %r8d
	movq	128(%rsp), %r14         # 8-byte Reload
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	%r10d, 120(%rsp)        # 4-byte Spill
	movl	%r11d, 116(%rsp)        # 4-byte Spill
	callq	*%r14
	movq	144(%rsp), %rcx         # 8-byte Reload
	movq	248(%rcx), %rcx
	movq	168(%rsp), %rdx
	movq	__imp_ReleaseDC(%rip), %r14
	movl	%eax, 112(%rsp)         # 4-byte Spill
	callq	*%r14
	movl	%eax, 108(%rsp)         # 4-byte Spill
	addq	$184, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.seh_handlerdata
	.text
.Lcfi7:
	.seh_endproc

	.def	 _ZN7CWindow10GDI_createEi;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN7CWindow10GDI_createEi
	.p2align	4, 0x90
_ZN7CWindow10GDI_createEi:              # @_ZN7CWindow10GDI_createEi
.Lcfi8:
.seh_proc _ZN7CWindow10GDI_createEi
# BB#0:
	subq	$120, %rsp
.Lcfi9:
	.seh_stackalloc 120
.Lcfi10:
	.seh_endprologue
	movl	$8, %eax
	movq	%rcx, 112(%rsp)
	movl	%edx, 108(%rsp)
	movq	112(%rsp), %rcx
	movl	232(%rcx), %edx
	imull	236(%rcx), %edx
	imull	108(%rsp), %edx
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	52(%rsp), %r8d          # 4-byte Reload
	idivl	%r8d
	movslq	%eax, %r9
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r9, %rcx
	callq	malloc
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 160(%rcx)
	movl	108(%rsp), %r8d
	movl	%r8d, 228(%rcx)
	addq	$168, %rcx
	movq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movl	$40, (%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	232(%rax), %r8d
	movq	56(%rsp), %rcx
	movl	%r8d, 4(%rcx)
	movl	236(%rax), %r8d
	movq	56(%rsp), %rcx
	movl	%r8d, 8(%rcx)
	movq	56(%rsp), %rcx
	movw	$1, 12(%rcx)
	movl	228(%rax), %r8d
	movw	%r8w, %r10w
	movq	56(%rsp), %rcx
	movw	%r10w, 14(%rcx)
	movq	56(%rsp), %rcx
	movl	$0, 16(%rcx)
	movq	56(%rsp), %rcx
	movl	$0, 20(%rcx)
	movq	56(%rsp), %rcx
	movl	$0, 24(%rcx)
	movq	56(%rsp), %rcx
	movl	$0, 28(%rcx)
	movq	56(%rsp), %rcx
	movl	$0, 32(%rcx)
	movq	56(%rsp), %rcx
	movl	$0, 36(%rcx)
	addq	$120, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi11:
	.seh_endproc

	.def	 _ZN7CWindow10runMessageEv;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN7CWindow10runMessageEv
	.p2align	4, 0x90
_ZN7CWindow10runMessageEv:              # @_ZN7CWindow10runMessageEv
.Lcfi12:
.seh_proc _ZN7CWindow10runMessageEv
# BB#0:
	subq	$136, %rsp
.Lcfi13:
	.seh_stackalloc 136
.Lcfi14:
	.seh_endprologue
	movq	%rcx, 120(%rsp)
	movq	120(%rsp), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
# BB#1:
	jmp	.LBB2_2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	movq	112(%rsp), %r8          # 8-byte Reload
	addq	$112, %r8
	movq	%rsp, %r9
	movl	$1, 32(%r9)
	movq	__imp_PeekMessageA(%rip), %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%r8, %rcx
	movl	%edx, 100(%rsp)         # 4-byte Spill
	movq	%r11, %rdx
	movl	%r10d, %r8d
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movl	%r10d, %r9d
	movq	88(%rsp), %r11          # 8-byte Reload
	movl	%eax, 84(%rsp)          # 4-byte Spill
	callq	*%r11
	cmpl	$0, %eax
	je	.LBB2_6
# BB#3:                                 #   in Loop: Header=BB2_2 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	addq	$112, %rax
	movq	__imp_DispatchMessageA(%rip), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	movq	72(%rsp), %rax          # 8-byte Reload
	callq	*%rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	addq	$112, %rcx
	movq	__imp_TranslateMessage(%rip), %rdx
	movq	%rax, 64(%rsp)          # 8-byte Spill
	callq	*%rdx
	movq	112(%rsp), %rcx         # 8-byte Reload
	cmpl	$18, 120(%rcx)
	movl	%eax, 60(%rsp)          # 4-byte Spill
	jne	.LBB2_5
# BB#4:
	jmp	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_2 Depth=1
	jmp	.LBB2_2
.LBB2_6:
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	$18, 120(%rax)
	jne	.LBB2_8
# BB#7:
	jmp	.LBB2_13
.LBB2_8:
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	240(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	je	.LBB2_9
	jmp	.LBB2_15
.LBB2_15:
	movl	56(%rsp), %eax          # 4-byte Reload
	subl	$1, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	je	.LBB2_10
	jmp	.LBB2_16
.LBB2_16:
	movl	56(%rsp), %eax          # 4-byte Reload
	subl	$2, %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	je	.LBB2_11
	jmp	.LBB2_12
.LBB2_9:
	jmp	.LBB2_12
.LBB2_10:
	movq	112(%rsp), %rcx         # 8-byte Reload
	callq	_ZN7CWindow8GDI_drawEv
	jmp	.LBB2_12
.LBB2_11:
	movq	112(%rsp), %rcx         # 8-byte Reload
	callq	_ZN7CWindow8GDI_drawEv
.LBB2_12:
	movb	$1, 135(%rsp)
	jmp	.LBB2_14
.LBB2_13:
	movb	$0, 135(%rsp)
.LBB2_14:
	movb	135(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$136, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi15:
	.seh_endproc

	.def	 _ZN7CWindowD2Ev;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN7CWindowD2Ev
	.p2align	4, 0x90
_ZN7CWindowD2Ev:                        # @_ZN7CWindowD2Ev
.Lcfi16:
.seh_proc _ZN7CWindowD2Ev
# BB#0:
	pushq	%rax
.Lcfi17:
	.seh_stackalloc 8
.Lcfi18:
	.seh_endprologue
	movq	%rcx, (%rsp)
	popq	%rax
	retq
	.seh_handlerdata
	.text
.Lcfi19:
	.seh_endproc

	.def	 _ZN7CWindowC2EiiPKc6RENDER;
	.scl	2;
	.type	32;
	.endef
	.globl	_ZN7CWindowC2EiiPKc6RENDER
	.p2align	4, 0x90
_ZN7CWindowC2EiiPKc6RENDER:             # @_ZN7CWindowC2EiiPKc6RENDER
.Lcfi20:
.seh_proc _ZN7CWindowC2EiiPKc6RENDER
# BB#0:
	pushq	%r14
.Lcfi21:
	.seh_pushreg 14
	pushq	%rsi
.Lcfi22:
	.seh_pushreg 6
	pushq	%rdi
.Lcfi23:
	.seh_pushreg 7
	pushq	%rbp
.Lcfi24:
	.seh_pushreg 5
	pushq	%rbx
.Lcfi25:
	.seh_pushreg 3
	subq	$256, %rsp              # imm = 0x100
.Lcfi26:
	.seh_stackalloc 256
.Lcfi27:
	.seh_endprologue
	movl	336(%rsp), %eax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rcx, 248(%rsp)
	movl	%edx, 244(%rsp)
	movl	%r8d, 240(%rsp)
	movq	%r9, 232(%rsp)
	movl	%eax, 228(%rsp)
	movq	248(%rsp), %rcx
	movl	228(%rsp), %eax
	movl	%eax, 240(%rcx)
	movl	244(%rsp), %eax
	movl	%eax, 232(%rcx)
	movl	240(%rsp), %eax
	movl	%eax, 236(%rcx)
	movq	__imp_GetModuleHandleA(%rip), %r9
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movq	%rsi, %rcx
	movq	%r11, 184(%rsp)         # 8-byte Spill
	callq	*%r9
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$32512, %edx            # imm = 0x7F00
	movl	%edx, %r9d
	leaq	_ZL7WinProcP6HWND__jyx(%rip), %r11
	leaq	.L.str(%rip), %rsi
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	%rax, 80(%rdi)
	movq	%rsi, 88(%rdi)
	movq	$0, 104(%rdi)
	movq	232(%rsp), %rax
	movq	%rax, 96(%rdi)
	movl	$80, (%rdi)
	movl	$3, 4(%rdi)
	movq	%r11, 8(%rdi)
	movl	$0, 16(%rdi)
	movl	$0, 20(%rdi)
	movq	80(%rdi), %rax
	movq	%rax, 24(%rdi)
	movq	__imp_LoadIconA(%rip), %rax
	xorl	%edx, %edx
	movl	%edx, %r11d
	movl	$32512, %edx            # imm = 0x7F00
                                        # kill: %RDX<def> %EDX<kill>
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	%r11, %rcx
	movq	%r9, 168(%rsp)          # 8-byte Spill
	callq	*%rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$32512, %r8d            # imm = 0x7F00
	movl	%r8d, %edx
	movq	192(%rsp), %r9          # 8-byte Reload
	movq	%rax, 32(%r9)
	movq	__imp_LoadCursorA(%rip), %rax
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movl	$32512, %r8d            # imm = 0x7F00
	movl	%r8d, %esi
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	%r11, %rcx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	callq	*%rax
	movl	$6, %r8d
	movl	%r8d, %ecx
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%rax, 40(%rdx)
	movq	%rcx, 48(%rdx)
	movq	104(%rdx), %rax
	movq	%rax, 56(%rdx)
	movq	88(%rdx), %rax
	movq	%rax, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	__imp_RegisterClassExA(%rip), %rax
	movq	%rdx, %rcx
	callq	*%rax
	xorl	%r8d, %r8d
	movzwl	%ax, %r10d
	cmpl	%r10d, %r8d
	jne	.LBB4_2
# BB#1:
	jmp	.LBB4_2
.LBB4_2:
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	232(%rax), %r9d
	movl	236(%rax), %ecx
	movq	%rsp, %rdx
	movl	%ecx, 32(%rdx)
	movq	__imp_SetRect(%rip), %rdx
	leaq	208(%rsp), %r8
	xorl	%ecx, %ecx
	movl	%ecx, 148(%rsp)         # 4-byte Spill
	movq	%r8, %rcx
	movl	148(%rsp), %r10d        # 4-byte Reload
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movl	%r10d, %edx
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	%r10d, %r8d
	movq	136(%rsp), %r11         # 8-byte Reload
	callq	*%r11
	movl	$13565952, 204(%rsp)    # imm = 0xCF0000
	movl	204(%rsp), %edx
	movq	__imp_AdjustWindowRectEx(%rip), %rcx
	movq	128(%rsp), %r11         # 8-byte Reload
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	%r11, %rcx
	movl	148(%rsp), %r8d         # 4-byte Reload
	movl	148(%rsp), %r9d         # 4-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	movl	%eax, 116(%rsp)         # 4-byte Spill
	callq	*%rsi
	movq	232(%rsp), %r8
	movl	204(%rsp), %r9d
	movl	208(%rsp), %edx
	movl	212(%rsp), %r10d
	movl	%edx, %edi
	addl	$800, %edi              # imm = 0x320
	movl	%r10d, %ebx
	addl	$100, %ebx
	movl	216(%rsp), %ebp
	subl	%edx, %ebp
	movl	220(%rsp), %edx
	subl	%r10d, %edx
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	64(%rcx), %r11
	movq	80(%rcx), %rsi
	movq	%rsp, %r14
	movq	%rsi, 80(%r14)
	movl	%edx, 56(%r14)
	movl	%ebp, 48(%r14)
	movl	%ebx, 40(%r14)
	movl	%edi, 32(%r14)
	movq	$0, 88(%r14)
	movq	$0, 72(%r14)
	movq	$0, 64(%r14)
	movq	__imp_CreateWindowExA(%rip), %rsi
	movl	148(%rsp), %ecx         # 4-byte Reload
	movq	%r11, %rdx
	movl	%eax, 112(%rsp)         # 4-byte Spill
	callq	*%rsi
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%rax, 248(%rdx)
	movl	240(%rdx), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_7
.LBB4_7:
	movl	108(%rsp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	je	.LBB4_4
	jmp	.LBB4_8
.LBB4_8:
	movl	108(%rsp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	je	.LBB4_5
	jmp	.LBB4_6
.LBB4_3:
	jmp	.LBB4_6
.LBB4_4:
	movl	$24, %edx
	movq	192(%rsp), %rcx         # 8-byte Reload
	callq	_ZN7CWindow10GDI_createEi
	jmp	.LBB4_6
.LBB4_5:
	movl	$32, %edx
	movq	192(%rsp), %rcx         # 8-byte Reload
	callq	_ZN7CWindow10GDI_createEi
.LBB4_6:
	nop
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.seh_handlerdata
	.text
.Lcfi28:
	.seh_endproc

	.def	 _ZL7WinProcP6HWND__jyx;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
_ZL7WinProcP6HWND__jyx:                 # @_ZL7WinProcP6HWND__jyx
.Lcfi29:
.seh_proc _ZL7WinProcP6HWND__jyx
# BB#0:
	subq	$312, %rsp              # imm = 0x138
.Lcfi30:
	.seh_stackalloc 312
.Lcfi31:
	.seh_endprologue
	movq	%rcx, 296(%rsp)
	movl	%edx, 292(%rsp)
	movq	%r8, 280(%rsp)
	movq	%r9, 272(%rsp)
	movl	292(%rsp), %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%edx, 180(%rsp)         # 4-byte Spill
	movl	%eax, 176(%rsp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_9
.LBB5_9:
	movl	180(%rsp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, 172(%rsp)         # 4-byte Spill
	je	.LBB5_6
	jmp	.LBB5_10
.LBB5_10:
	movl	180(%rsp), %eax         # 4-byte Reload
	subl	$15, %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_11
.LBB5_11:
	movl	180(%rsp), %eax         # 4-byte Reload
	subl	$256, %eax              # imm = 0x100
	movl	%eax, 164(%rsp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_7
.LBB5_1:
	movl	$5, %eax
	movq	296(%rsp), %rcx
	movq	__imp_ShowWindow(%rip), %rdx
	movl	$5, %r8d
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	152(%rsp), %r9          # 8-byte Reload
	movl	%eax, 148(%rsp)         # 4-byte Spill
	callq	*%r9
	movl	%eax, 144(%rsp)         # 4-byte Spill
	jmp	.LBB5_7
.LBB5_2:
	leaq	_ZZL7WinProcP6HWND__jyxE5nFreq(%rip), %rax
	leaq	_ZZL7WinProcP6HWND__jyxE5nFreq(%rip), %rcx
	movq	__imp_QueryPerformanceFrequency(%rip), %rdx
	movq	%rax, 136(%rsp)         # 8-byte Spill
	callq	*%rdx
	leaq	200(%rsp), %rcx
	movq	296(%rsp), %rdx
	movq	__imp_BeginPaint(%rip), %r8
	leaq	200(%rsp), %r9
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rdx, %rcx
	movq	%r9, %rdx
	movl	%eax, 124(%rsp)         # 4-byte Spill
	callq	*%r8
	leaq	200(%rsp), %rcx
	movq	%rax, 192(%rsp)
	movq	296(%rsp), %rax
	movq	__imp_EndPaint(%rip), %rdx
	leaq	200(%rsp), %r8
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	104(%rsp), %rax         # 8-byte Reload
	callq	*%rax
	leaq	_ZZL7WinProcP6HWND__jyxE5time2(%rip), %rcx
	leaq	_ZZL7WinProcP6HWND__jyxE5time2(%rip), %rdx
	movq	__imp_QueryPerformanceCounter(%rip), %r8
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movl	%eax, 92(%rsp)          # 4-byte Spill
	callq	*%r8
	leaq	_ZZL7WinProcP6HWND__jyxE5time1(%rip), %rcx
	movq	_ZZL7WinProcP6HWND__jyxE5time2(%rip), %rdx
	subq	_ZZL7WinProcP6HWND__jyxE5time1(%rip), %rdx
	cvtsi2sdq	%rdx, %xmm0
	cvtsi2sdq	_ZZL7WinProcP6HWND__jyxE5nFreq(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 184(%rsp)
	leaq	_ZZL7WinProcP6HWND__jyxE5time1(%rip), %rdx
	movq	__imp_QueryPerformanceCounter(%rip), %r8
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movl	%eax, 76(%rsp)          # 4-byte Spill
	callq	*%r8
	movq	296(%rsp), %rcx
	movq	__imp_UpdateWindow(%rip), %rdx
	movl	%eax, 72(%rsp)          # 4-byte Spill
	callq	*%rdx
	movq	$0, 304(%rsp)
	movl	%eax, 68(%rsp)          # 4-byte Spill
	jmp	.LBB5_8
.LBB5_3:
	cmpq	$27, 280(%rsp)
	jne	.LBB5_5
# BB#4:
	xorl	%eax, %eax
	movq	__imp_PostQuitMessage(%rip), %rcx
	xorl	%edx, %edx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	%edx, %ecx
	movq	56(%rsp), %r8           # 8-byte Reload
	movl	%eax, 52(%rsp)          # 4-byte Spill
	callq	*%r8
.LBB5_5:
	jmp	.LBB5_7
.LBB5_6:
	xorl	%eax, %eax
	movq	__imp_PostQuitMessage(%rip), %rcx
	xorl	%edx, %edx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%edx, %ecx
	movq	40(%rsp), %r8           # 8-byte Reload
	movl	%eax, 36(%rsp)          # 4-byte Spill
	callq	*%r8
.LBB5_7:
	movq	296(%rsp), %rcx
	movl	292(%rsp), %edx
	movq	280(%rsp), %r8
	movq	272(%rsp), %r9
	movq	__imp_DefWindowProcA(%rip), %rax
	callq	*%rax
	movq	%rax, 304(%rsp)
.LBB5_8:
	movq	304(%rsp), %rax
	addq	$312, %rsp              # imm = 0x138
	retq
	.seh_handlerdata
	.text
.Lcfi32:
	.seh_endproc

	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"MainWindowClass"

	.lcomm	_ZZL7WinProcP6HWND__jyxE5nFreq,8,8 # @_ZZL7WinProcP6HWND__jyxE5nFreq
	.lcomm	_ZZL7WinProcP6HWND__jyxE5time1,8,8 # @_ZZL7WinProcP6HWND__jyxE5time1
	.lcomm	_ZZL7WinProcP6HWND__jyxE5time2,8,8 # @_ZZL7WinProcP6HWND__jyxE5time2

	.globl	_ZN7CWindowD1Ev
_ZN7CWindowD1Ev = _ZN7CWindowD2Ev
	.globl	_ZN7CWindowC1EiiPKc6RENDER
_ZN7CWindowC1EiiPKc6RENDER = _ZN7CWindowC2EiiPKc6RENDER
