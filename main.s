	.text
	.def	 __cxx_global_var_init;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
__cxx_global_var_init:                  # @__cxx_global_var_init
.Lcfi0:
.seh_proc __cxx_global_var_init
# BB#0:
	subq	$40, %rsp
.Lcfi1:
	.seh_stackalloc 40
.Lcfi2:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	callq	_ZNSt8ios_base4InitC1Ev
	leaq	__dtor__ZStL8__ioinit(%rip), %rcx
	callq	atexit
	movl	%eax, 36(%rsp)          # 4-byte Spill
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi3:
	.seh_endproc

	.def	 __dtor__ZStL8__ioinit;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
__dtor__ZStL8__ioinit:                  # @__dtor__ZStL8__ioinit
.Lcfi4:
.seh_proc __dtor__ZStL8__ioinit
# BB#0:
	subq	$40, %rsp
.Lcfi5:
	.seh_stackalloc 40
.Lcfi6:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	callq	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi7:
	.seh_endproc

	.def	 _Z18getPerformanceTimev;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z18getPerformanceTimev
	.p2align	4, 0x90
_Z18getPerformanceTimev:                # @_Z18getPerformanceTimev
.Lcfi8:
.seh_proc _Z18getPerformanceTimev
# BB#0:
	subq	$72, %rsp
.Lcfi9:
	.seh_stackalloc 72
.Lcfi10:
	.seh_endprologue
	leaq	_ZL5nFreq(%rip), %rax
	leaq	_ZL5nFreq(%rip), %rcx
	movq	__imp_QueryPerformanceFrequency(%rip), %rdx
	movq	%rax, 48(%rsp)          # 8-byte Spill
	callq	*%rdx
	leaq	64(%rsp), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rdx
	leaq	64(%rsp), %r8
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r8, %rcx
	movl	%eax, 36(%rsp)          # 4-byte Spill
	callq	*%rdx
	cvtsi2sdq	64(%rsp), %xmm0
	cvtsi2sdq	_ZL5nFreq(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, 32(%rsp)          # 4-byte Spill
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi11:
	.seh_endproc

	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:                                   # @main
.Lfunc_begin0:
.Lcfi12:
.seh_proc main
	.seh_handler __gxx_personality_seh0, @unwind, @except
# BB#0:
	pushq	%rbp
.Lcfi13:
	.seh_pushreg 5
	movl	$24432, %eax            # imm = 0x5F70
	callq	___chkstk_ms
	subq	%rax, %rsp
.Lcfi14:
	.seh_stackalloc 24432
	leaq	128(%rsp), %rbp
.Lcfi15:
	.seh_setframe 5, 128
.Lcfi16:
	.seh_endprologue
	callq	__main
	movl	$0, 24300(%rbp)
	movq	%rsp, %rax
	movl	$1, 32(%rax)
	leaq	.L.str(%rip), %r9
	leaq	24040(%rbp), %rcx
	movl	$512, %edx              # imm = 0x200
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	_ZN7CWindowC1EiiPKc6RENDER
.Ltmp0:
	leaq	-8(%rbp), %rcx
	callq	_ZN4TestC2Ev
.Ltmp1:
	jmp	.LBB3_1
.LBB3_1:
	movl	$0, -24(%rbp)
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
.Ltmp2:
	leaq	24040(%rbp), %rcx
	callq	_ZN7CWindow10runMessageEv
.Ltmp3:
	movb	%al, -45(%rbp)          # 1-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_2 Depth=1
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_13
.LBB3_4:                                #   in Loop: Header=BB3_2 Depth=1
.Ltmp7:
	callq	_Z18getPerformanceTimev
.Ltmp8:
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	24200(%rbp), %rdx
	movl	24276(%rbp), %r8d
	movl	24272(%rbp), %r9d
.Ltmp9:
	movq	%rsp, %rax
	movl	$3, 32(%rax)
	leaq	-8(%rbp), %rcx
	callq	_ZN4Test5PaintEPhiii
.Ltmp10:
	jmp	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_2 Depth=1
.Ltmp11:
	callq	_Z18getPerformanceTimev
.Ltmp12:
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_2 Depth=1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$3, %eax
	jge	.LBB3_12
# BB#8:                                 #   in Loop: Header=BB3_2 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
.Ltmp13:
	leaq	.L.str.1(%rip), %rcx
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	callq	_ZL6printfPKcz
.Ltmp14:
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_9
.LBB3_9:                                #   in Loop: Header=BB3_2 Depth=1
	jmp	.LBB3_12
.LBB3_10:
.Ltmp6:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	jmp	.LBB3_16
.LBB3_11:
.Ltmp15:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
.Ltmp16:
	leaq	-8(%rbp), %rcx
	callq	_ZN4TestD2Ev
.Ltmp17:
	jmp	.LBB3_15
.LBB3_12:                               #   in Loop: Header=BB3_2 Depth=1
	jmp	.LBB3_2
.LBB3_13:
	movl	$0, 24300(%rbp)
.Ltmp4:
	leaq	-8(%rbp), %rcx
	callq	_ZN4TestD2Ev
.Ltmp5:
	jmp	.LBB3_14
.LBB3_14:
	leaq	24040(%rbp), %rcx
	callq	_ZN7CWindowD1Ev
	movl	24300(%rbp), %eax
	addq	$24432, %rsp            # imm = 0x5F70
	popq	%rbp
	retq
.LBB3_15:
	jmp	.LBB3_16
.LBB3_16:
.Ltmp18:
	leaq	24040(%rbp), %rcx
	callq	_ZN7CWindowD1Ev
.Ltmp19:
	jmp	.LBB3_17
.LBB3_17:
	jmp	.LBB3_18
.LBB3_18:
	movq	-16(%rbp), %rcx
	callq	_Unwind_Resume
	ud2
.LBB3_19:
.Ltmp20:
	movq	%rax, %rcx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	__clang_call_terminate
	ud2
.Lfunc_end0:
	.seh_handlerdata
	.text
.Lcfi17:
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2
GCC_except_table3:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	0                       # @TType Encoding = absptr
	.asciz	"\364"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	104                     # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp6-.Lfunc_begin0    #     jumps to .Ltmp6
	.byte	0                       #   On action: cleanup
	.long	.Ltmp2-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp14-.Ltmp2          #   Call between .Ltmp2 and .Ltmp14
	.long	.Ltmp15-.Lfunc_begin0   #     jumps to .Ltmp15
	.byte	0                       #   On action: cleanup
	.long	.Ltmp16-.Lfunc_begin0   # >> Call Site 4 <<
	.long	.Ltmp17-.Ltmp16         #   Call between .Ltmp16 and .Ltmp17
	.long	.Ltmp20-.Lfunc_begin0   #     jumps to .Ltmp20
	.byte	1                       #   On action: 1
	.long	.Ltmp4-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Ltmp5-.Ltmp4           #   Call between .Ltmp4 and .Ltmp5
	.long	.Ltmp6-.Lfunc_begin0    #     jumps to .Ltmp6
	.byte	0                       #   On action: cleanup
	.long	.Ltmp5-.Lfunc_begin0    # >> Call Site 6 <<
	.long	.Ltmp18-.Ltmp5          #   Call between .Ltmp5 and .Ltmp18
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp18-.Lfunc_begin0   # >> Call Site 7 <<
	.long	.Ltmp19-.Ltmp18         #   Call between .Ltmp18 and .Ltmp19
	.long	.Ltmp20-.Lfunc_begin0   #     jumps to .Ltmp20
	.byte	1                       #   On action: 1
	.long	.Ltmp19-.Lfunc_begin0   # >> Call Site 8 <<
	.long	.Lfunc_end0-.Ltmp19     #   Call between .Ltmp19 and .Lfunc_end0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.quad	0                       # TypeInfo 1
	.p2align	2
	.text

	.def	 _ZN4TestC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI4_2:
	.quad	4602678819172646912     # double 0.5
.LCPI4_3:
	.quad	4629137466983448576     # double 30
.LCPI4_4:
	.quad	4655631299166339072     # double 1800
.LCPI4_5:
	.quad	-4594234569871327232    # double -30
.LCPI4_6:
	.quad	4633641066610819072     # double 60
.LCPI4_7:
	.quad	4635329916471083008     # double 80
.LCPI4_8:
	.quad	4661999670514417664     # double 4800
.LCPI4_9:
	.quad	-4589730970243956736    # double -60
.LCPI4_10:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI4_11:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI4_12:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI4_13:
	.quad	4576184190849162553     # double 0.0087266462599716477
.LCPI4_14:
	.quad	4625196817309499392     # double 16
.LCPI4_15:
	.quad	4613937818241073152     # double 3
.LCPI4_16:
	.quad	4608083138725491507     # double 1.2
.LCPI4_17:
	.quad	4596373779801702400     # double 0.20000000298023224
	.section	.text,"xr",discard,_ZN4TestC2Ev
	.globl	_ZN4TestC2Ev
	.p2align	4, 0x90
_ZN4TestC2Ev:                           # @_ZN4TestC2Ev
.Lfunc_begin1:
.Lcfi18:
.seh_proc _ZN4TestC2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# BB#0:
	subq	$968, %rsp              # imm = 0x3C8
.Lcfi19:
	.seh_stackalloc 968
.Lcfi20:
	.seh_endprologue
	movq	%rcx, 960(%rsp)
	movq	960(%rsp), %rcx
	movq	%rcx, %rax
	addq	$24024, %rax            # imm = 0x5DD8
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	_ZN4vec3C2Ev
	movl	$24048, %edx            # imm = 0x5DF0
	movl	%edx, %r8d
	xorl	%edx, %edx
	movq	192(%rsp), %rcx         # 8-byte Reload
	callq	memset
	leaq	896(%rsp), %rcx
	movq	%rax, 184(%rsp)         # 8-byte Spill
	callq	_ZN4vec3C2Ev
	leaq	864(%rsp), %rcx
	callq	_ZN4vec3C2Ev
	leaq	832(%rsp), %rcx
	callq	_ZN4vec3C2Ev
	movl	$112, %edx
	movl	%edx, %ecx
	callq	_Znwy
	movq	%rax, %rcx
.Ltmp21:
	leaq	808(%rsp), %r8
	xorps	%xmm0, %xmm0
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	%r8, %rcx
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	movq	%rax, 168(%rsp)         # 8-byte Spill
	callq	_ZN4vec3C2Eddd
.Ltmp22:
	jmp	.LBB4_1
.LBB4_1:
	movq	824(%rsp), %rax
	movq	%rax, 912(%rsp)
	movups	808(%rsp), %xmm0
	movaps	%xmm0, 896(%rsp)
.Ltmp23:
	leaq	768(%rsp), %rcx
	movsd	.LCPI4_0(%rip), %xmm2   # xmm2 = mem[0],zero
	xorps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm3
	callq	_ZN4vec3C2Eddd
.Ltmp24:
	jmp	.LBB4_2
.LBB4_2:
	movq	784(%rsp), %rax
	movq	%rax, 848(%rsp)
	movups	768(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
.Ltmp25:
	leaq	712(%rsp), %rcx
	movsd	.LCPI4_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	callq	_ZN4vec3C2Eddd
.Ltmp26:
	jmp	.LBB4_3
.LBB4_3:
	movq	728(%rsp), %rax
	movq	%rax, 880(%rsp)
	movups	712(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movq	880(%rsp), %rax
	movq	%rax, 752(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 736(%rsp)
	movl	$1056964608, 936(%rsp)  # imm = 0x3F000000
	movl	$1065353216, 932(%rsp)  # imm = 0x3F800000
	movl	$1101004800, 948(%rsp)  # imm = 0x41A00000
	movl	$0, 944(%rsp)
	movl	$0, 940(%rsp)
.Ltmp27:
	movq	%rsp, %rax
	movabsq	$4626322717216342016, %rcx # imm = 0x4034000000000000
	movq	%rcx, 48(%rax)
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
	movq	%rcx, 40(%rax)
	movabsq	$4602678819172646912, %rcx # imm = 0x3FE0000000000000
	movq	%rcx, 32(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	leaq	896(%rsp), %rdx
	leaq	832(%rsp), %r8
	leaq	736(%rsp), %r9
	movq	168(%rsp), %rcx         # 8-byte Reload
	callq	_ZN5PLATEC2ERK4vec3S2_S0_ddddd
.Ltmp28:
	jmp	.LBB4_4
.LBB4_4:
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	168(%rsp), %rdx         # 8-byte Reload
	callq	_ZN4Test5EntryEP5PLATE
	movl	$96, %eax
	movl	%eax, %ecx
	callq	_Znwy
	movq	%rax, %rcx
.Ltmp30:
	leaq	688(%rsp), %rdx
	movsd	.LCPI4_0(%rip), %xmm2   # xmm2 = mem[0],zero
	xorps	%xmm0, %xmm0
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	%rdx, %rcx
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm3
	movq	%rax, 152(%rsp)         # 8-byte Spill
	callq	_ZN4vec3C2Eddd
.Ltmp31:
	jmp	.LBB4_5
.LBB4_5:
.Ltmp32:
	leaq	664(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	callq	_ZN4vec3C2Eddd
.Ltmp33:
	jmp	.LBB4_6
.LBB4_6:
.Ltmp34:
	movq	%rsp, %rax
	movabsq	$4636737291354636288, %rcx # imm = 0x4059000000000000
	movq	%rcx, 48(%rax)
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
	movq	%rcx, 40(%rax)
	movabsq	$4602678819172646912, %rcx # imm = 0x3FE0000000000000
	movq	%rcx, 32(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	leaq	688(%rsp), %rdx
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	leaq	664(%rsp), %r9
	movq	152(%rsp), %rcx         # 8-byte Reload
	callq	_ZN6SPHEREC2ERK4vec3dS0_ddddd
.Ltmp35:
	jmp	.LBB4_7
.LBB4_7:
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	callq	_ZN4Test5EntryEP6SPHERE
	movl	$48, 660(%rsp)
	movl	$0, 656(%rsp)
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	movl	656(%rsp), %eax
	cmpl	660(%rsp), %eax
	jge	.LBB4_17
# BB#9:                                 #   in Loop: Header=BB4_8 Depth=1
	cvtsi2sdl	656(%rsp), %xmm0
	movsd	.LCPI4_13(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI4_14(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	.LCPI4_15(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, 648(%rsp)
	cvtsi2sdl	656(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 640(%rsp)
	movsd	648(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, 632(%rsp)
	movsd	648(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 624(%rsp)
	movsd	640(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	.LCPI4_16(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 616(%rsp)
	movl	$96, %eax
	movl	%eax, %ecx
	callq	_Znwy
	movq	%rax, %rcx
	movsd	632(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	616(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	624(%rsp), %xmm3        # xmm3 = mem[0],zero
.Ltmp73:
	leaq	592(%rsp), %rdx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	%rdx, %rcx
	movq	%rax, 136(%rsp)         # 8-byte Spill
	callq	_ZN4vec3C2Eddd
.Ltmp74:
	jmp	.LBB4_10
.LBB4_10:                               #   in Loop: Header=BB4_8 Depth=1
	movq	608(%rsp), %rax
	movq	%rax, 912(%rsp)
	movups	592(%rsp), %xmm0
	movaps	%xmm0, 896(%rsp)
	movl	$1045220557, 956(%rsp)  # imm = 0x3E4CCCCD
	movsd	632(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	616(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	624(%rsp), %xmm3        # xmm3 = mem[0],zero
.Ltmp75:
	leaq	536(%rsp), %rcx
	callq	_ZN4vec3C2Eddd
.Ltmp76:
	jmp	.LBB4_11
.LBB4_11:                               #   in Loop: Header=BB4_8 Depth=1
	movq	552(%rsp), %rax
	movq	%rax, 880(%rsp)
	movups	536(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movq	880(%rsp), %rax
	movq	%rax, 576(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 560(%rsp)
	movl	$1045220557, 936(%rsp)  # imm = 0x3E4CCCCD
	movl	$0, 932(%rsp)
	movl	$1120403456, 948(%rsp)  # imm = 0x42C80000
	movl	$0, 944(%rsp)
	movl	$0, 940(%rsp)
.Ltmp77:
	movq	%rsp, %rax
	movabsq	$4636737291354636288, %rcx # imm = 0x4059000000000000
	movq	%rcx, 48(%rax)
	movabsq	$4596373779801702400, %rcx # imm = 0x3FC99999A0000000
	movq	%rcx, 32(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	movq	$0, 40(%rax)
	leaq	896(%rsp), %rdx
	movsd	.LCPI4_17(%rip), %xmm2  # xmm2 = mem[0],zero
	leaq	560(%rsp), %r9
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	_ZN6SPHEREC2ERK4vec3dS0_ddddd
.Ltmp78:
	jmp	.LBB4_12
.LBB4_12:                               #   in Loop: Header=BB4_8 Depth=1
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	callq	_ZN4Test5EntryEP6SPHERE
# BB#13:                                #   in Loop: Header=BB4_8 Depth=1
	movl	656(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 656(%rsp)
	jmp	.LBB4_8
.LBB4_14:
.Ltmp29:
	movl	%edx, %ecx
	movq	%rax, 800(%rsp)
	movl	%ecx, 796(%rsp)
	movq	176(%rsp), %rcx         # 8-byte Reload
	callq	_ZdlPv
	jmp	.LBB4_38
.LBB4_15:
.Ltmp36:
	movl	%edx, %ecx
	movq	%rax, 800(%rsp)
	movl	%ecx, 796(%rsp)
	movq	160(%rsp), %rcx         # 8-byte Reload
	callq	_ZdlPv
	jmp	.LBB4_38
.LBB4_16:
.Ltmp79:
	movl	%edx, %ecx
	movq	%rax, 800(%rsp)
	movl	%ecx, 796(%rsp)
	movq	144(%rsp), %rcx         # 8-byte Reload
	callq	_ZdlPv
	jmp	.LBB4_38
.LBB4_17:
	movl	$48, %eax
	movl	%eax, %ecx
	callq	_Znwy
	movq	%rax, %rcx
.Ltmp37:
	leaq	512(%rsp), %rdx
	movsd	.LCPI4_3(%rip), %xmm2   # xmm2 = mem[0],zero
	xorps	%xmm0, %xmm0
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rdx, %rcx
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm3
	movq	%rax, 120(%rsp)         # 8-byte Spill
	callq	_ZN4vec3C2Eddd
.Ltmp38:
	jmp	.LBB4_18
.LBB4_18:
.Ltmp39:
	leaq	464(%rsp), %rcx
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	callq	_ZN4vec3C2Eddd
.Ltmp40:
	jmp	.LBB4_19
.LBB4_19:
.Ltmp41:
	leaq	488(%rsp), %rcx
	leaq	464(%rsp), %rdx
	movsd	.LCPI4_4(%rip), %xmm2   # xmm2 = mem[0],zero
	callq	_ZNK4vec3mlEd
.Ltmp42:
	jmp	.LBB4_20
.LBB4_20:
.Ltmp43:
	leaq	512(%rsp), %rdx
	leaq	488(%rsp), %r8
	movq	120(%rsp), %rcx         # 8-byte Reload
	callq	_ZN5LIGHTC2ERK4vec3S2_
.Ltmp44:
	jmp	.LBB4_21
.LBB4_21:
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	callq	_ZN4Test5EntryEP5LIGHT
	movl	$48, %eax
	movl	%eax, %ecx
	callq	_Znwy
	movq	%rax, %rcx
.Ltmp46:
	leaq	440(%rsp), %rdx
	movsd	.LCPI4_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_3(%rip), %xmm2   # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	%rdx, %rcx
	movq	%rax, 104(%rsp)         # 8-byte Spill
	callq	_ZN4vec3C2Eddd
.Ltmp47:
	jmp	.LBB4_22
.LBB4_22:
.Ltmp48:
	leaq	392(%rsp), %rcx
	movsd	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	callq	_ZN4vec3C2Eddd
.Ltmp49:
	jmp	.LBB4_23
.LBB4_23:
.Ltmp50:
	leaq	416(%rsp), %rcx
	leaq	392(%rsp), %rdx
	movsd	.LCPI4_4(%rip), %xmm2   # xmm2 = mem[0],zero
	callq	_ZNK4vec3mlEd
.Ltmp51:
	jmp	.LBB4_24
.LBB4_24:
.Ltmp52:
	leaq	440(%rsp), %rdx
	leaq	416(%rsp), %r8
	movq	104(%rsp), %rcx         # 8-byte Reload
	callq	_ZN5LIGHTC2ERK4vec3S2_
.Ltmp53:
	jmp	.LBB4_25
.LBB4_25:
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	callq	_ZN4Test5EntryEP5LIGHT
	movl	$48, %eax
	movl	%eax, %ecx
	callq	_Znwy
	movq	%rax, %rcx
.Ltmp55:
	leaq	368(%rsp), %rdx
	movsd	.LCPI4_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_7(%rip), %xmm2   # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	%rax, 88(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Eddd
.Ltmp56:
	jmp	.LBB4_26
.LBB4_26:
.Ltmp57:
	leaq	320(%rsp), %rcx
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	callq	_ZN4vec3C2Eddd
.Ltmp58:
	jmp	.LBB4_27
.LBB4_27:
.Ltmp59:
	leaq	344(%rsp), %rcx
	leaq	320(%rsp), %rdx
	movsd	.LCPI4_8(%rip), %xmm2   # xmm2 = mem[0],zero
	callq	_ZNK4vec3mlEd
.Ltmp60:
	jmp	.LBB4_28
.LBB4_28:
.Ltmp61:
	leaq	368(%rsp), %rdx
	leaq	344(%rsp), %r8
	movq	88(%rsp), %rcx          # 8-byte Reload
	callq	_ZN5LIGHTC2ERK4vec3S2_
.Ltmp62:
	jmp	.LBB4_29
.LBB4_29:
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	_ZN4Test5EntryEP5LIGHT
	movl	$48, %eax
	movl	%eax, %ecx
	callq	_Znwy
	movq	%rax, %rcx
.Ltmp64:
	leaq	296(%rsp), %rdx
	movsd	.LCPI4_9(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_7(%rip), %xmm2   # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	%rax, 72(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Eddd
.Ltmp65:
	jmp	.LBB4_30
.LBB4_30:
.Ltmp66:
	leaq	248(%rsp), %rcx
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm3
	callq	_ZN4vec3C2Eddd
.Ltmp67:
	jmp	.LBB4_31
.LBB4_31:
.Ltmp68:
	leaq	272(%rsp), %rcx
	leaq	248(%rsp), %rdx
	movsd	.LCPI4_8(%rip), %xmm2   # xmm2 = mem[0],zero
	callq	_ZNK4vec3mlEd
.Ltmp69:
	jmp	.LBB4_32
.LBB4_32:
.Ltmp70:
	leaq	296(%rsp), %rdx
	leaq	272(%rsp), %r8
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	_ZN5LIGHTC2ERK4vec3S2_
.Ltmp71:
	jmp	.LBB4_33
.LBB4_33:
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	_ZN4Test5EntryEP5LIGHT
	leaq	200(%rsp), %rcx
	movsd	.LCPI4_10(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI4_11(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI4_12(%rip), %xmm3  # xmm3 = mem[0],zero
	callq	_ZN4vec3C2Eddd
	leaq	224(%rsp), %rcx
	leaq	200(%rsp), %rdx
	xorps	%xmm2, %xmm2
	callq	_ZNK4vec3mlEd
	movq	224(%rsp), %rcx
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%rcx, 24024(%rdx)
	movq	232(%rsp), %rcx
	movq	%rcx, 24032(%rdx)
	movq	240(%rsp), %rcx
	movq	%rcx, 24040(%rdx)
	addq	$968, %rsp              # imm = 0x3C8
	retq
.LBB4_34:
.Ltmp45:
	movl	%edx, %ecx
	movq	%rax, 800(%rsp)
	movl	%ecx, 796(%rsp)
	movq	128(%rsp), %rcx         # 8-byte Reload
	callq	_ZdlPv
	jmp	.LBB4_38
.LBB4_35:
.Ltmp54:
	movl	%edx, %ecx
	movq	%rax, 800(%rsp)
	movl	%ecx, 796(%rsp)
	movq	112(%rsp), %rcx         # 8-byte Reload
	callq	_ZdlPv
	jmp	.LBB4_38
.LBB4_36:
.Ltmp63:
	movl	%edx, %ecx
	movq	%rax, 800(%rsp)
	movl	%ecx, 796(%rsp)
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	_ZdlPv
	jmp	.LBB4_38
.LBB4_37:
.Ltmp72:
	movl	%edx, %ecx
	movq	%rax, 800(%rsp)
	movl	%ecx, 796(%rsp)
	movq	80(%rsp), %rcx          # 8-byte Reload
	callq	_ZdlPv
.LBB4_38:
	movq	800(%rsp), %rcx
	callq	_Unwind_Resume
	ud2
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4TestC2Ev
.Lcfi21:
	.seh_endproc
	.section	.xdata,"dr",associative,_ZN4TestC2Ev
	.p2align	2
GCC_except_table4:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	0                       # @TType Encoding = absptr
	.asciz	"\306\201\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\303\001"              # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp21-.Lfunc_begin1   #   Call between .Lfunc_begin1 and .Ltmp21
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp21-.Lfunc_begin1   # >> Call Site 2 <<
	.long	.Ltmp28-.Ltmp21         #   Call between .Ltmp21 and .Ltmp28
	.long	.Ltmp29-.Lfunc_begin1   #     jumps to .Ltmp29
	.byte	0                       #   On action: cleanup
	.long	.Ltmp28-.Lfunc_begin1   # >> Call Site 3 <<
	.long	.Ltmp30-.Ltmp28         #   Call between .Ltmp28 and .Ltmp30
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp30-.Lfunc_begin1   # >> Call Site 4 <<
	.long	.Ltmp35-.Ltmp30         #   Call between .Ltmp30 and .Ltmp35
	.long	.Ltmp36-.Lfunc_begin1   #     jumps to .Ltmp36
	.byte	0                       #   On action: cleanup
	.long	.Ltmp35-.Lfunc_begin1   # >> Call Site 5 <<
	.long	.Ltmp73-.Ltmp35         #   Call between .Ltmp35 and .Ltmp73
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp73-.Lfunc_begin1   # >> Call Site 6 <<
	.long	.Ltmp78-.Ltmp73         #   Call between .Ltmp73 and .Ltmp78
	.long	.Ltmp79-.Lfunc_begin1   #     jumps to .Ltmp79
	.byte	0                       #   On action: cleanup
	.long	.Ltmp78-.Lfunc_begin1   # >> Call Site 7 <<
	.long	.Ltmp37-.Ltmp78         #   Call between .Ltmp78 and .Ltmp37
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp37-.Lfunc_begin1   # >> Call Site 8 <<
	.long	.Ltmp44-.Ltmp37         #   Call between .Ltmp37 and .Ltmp44
	.long	.Ltmp45-.Lfunc_begin1   #     jumps to .Ltmp45
	.byte	0                       #   On action: cleanup
	.long	.Ltmp44-.Lfunc_begin1   # >> Call Site 9 <<
	.long	.Ltmp46-.Ltmp44         #   Call between .Ltmp44 and .Ltmp46
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp46-.Lfunc_begin1   # >> Call Site 10 <<
	.long	.Ltmp53-.Ltmp46         #   Call between .Ltmp46 and .Ltmp53
	.long	.Ltmp54-.Lfunc_begin1   #     jumps to .Ltmp54
	.byte	0                       #   On action: cleanup
	.long	.Ltmp53-.Lfunc_begin1   # >> Call Site 11 <<
	.long	.Ltmp55-.Ltmp53         #   Call between .Ltmp53 and .Ltmp55
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp55-.Lfunc_begin1   # >> Call Site 12 <<
	.long	.Ltmp62-.Ltmp55         #   Call between .Ltmp55 and .Ltmp62
	.long	.Ltmp63-.Lfunc_begin1   #     jumps to .Ltmp63
	.byte	0                       #   On action: cleanup
	.long	.Ltmp62-.Lfunc_begin1   # >> Call Site 13 <<
	.long	.Ltmp64-.Ltmp62         #   Call between .Ltmp62 and .Ltmp64
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp64-.Lfunc_begin1   # >> Call Site 14 <<
	.long	.Ltmp71-.Ltmp64         #   Call between .Ltmp64 and .Ltmp71
	.long	.Ltmp72-.Lfunc_begin1   #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp71-.Lfunc_begin1   # >> Call Site 15 <<
	.long	.Lfunc_end1-.Ltmp71     #   Call between .Ltmp71 and .Lfunc_end1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
	.section	.text,"xr",discard,_ZN4TestC2Ev

	.def	 _ZN4Test5PaintEPhiii;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	-4602115869219225600    # double -9
.LCPI5_2:
	.quad	-4607182418800017408    # double -4
.LCPI5_3:
	.quad	4611686018427387904     # double 2
.LCPI5_4:
	.quad	4643176031446892544     # double 255
	.section	.text,"xr",discard,_ZN4Test5PaintEPhiii
	.globl	_ZN4Test5PaintEPhiii
	.p2align	4, 0x90
_ZN4Test5PaintEPhiii:                   # @_ZN4Test5PaintEPhiii
.Lcfi22:
.seh_proc _ZN4Test5PaintEPhiii
# BB#0:
	subq	$440, %rsp              # imm = 0x1B8
.Lcfi23:
	.seh_stackalloc 440
.Lcfi24:
	.seh_endprologue
	movl	480(%rsp), %eax
	leaq	384(%rsp), %r10
	xorps	%xmm1, %xmm1
	movsd	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI5_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	%rcx, 432(%rsp)
	movq	%rdx, 424(%rsp)
	movl	%r8d, 420(%rsp)
	movl	%r9d, 416(%rsp)
	movl	%eax, 412(%rsp)
	movq	432(%rsp), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r10, %rcx
	callq	_ZN4vec3C2Eddd
	leaq	360(%rsp), %rcx
	xorps	%xmm1, %xmm1
	movsd	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI5_1(%rip), %xmm3   # xmm3 = mem[0],zero
	callq	_ZN4vec3C2Eddd
	leaq	304(%rsp), %rcx
	callq	_ZN4vec3C2Ev
	movl	$0, 300(%rsp)
	movl	$0, 296(%rsp)
	movl	$0, 292(%rsp)
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	292(%rsp), %eax
	cmpl	420(%rsp), %eax
	jge	.LBB5_10
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	$0, 288(%rsp)
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	288(%rsp), %eax
	cmpl	416(%rsp), %eax
	jge	.LBB5_8
# BB#4:                                 #   in Loop: Header=BB5_3 Depth=2
	leaq	224(%rsp), %rcx
	xorps	%xmm3, %xmm3
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI5_3(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sdl	288(%rsp), %xmm2
	cvtsi2sdl	416(%rsp), %xmm4
	divsd	%xmm4, %xmm2
	mulsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 280(%rsp)
	cvtsi2sdl	292(%rsp), %xmm2
	cvtsi2sdl	420(%rsp), %xmm4
	divsd	%xmm4, %xmm2
	mulsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 272(%rsp)
	movsd	280(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	272(%rsp), %xmm2        # xmm2 = mem[0],zero
	callq	_ZN4vec3C2Eddd
	leaq	248(%rsp), %rcx
	leaq	224(%rsp), %rdx
	leaq	384(%rsp), %r8
	callq	_ZNK4vec3plERKS_
	leaq	176(%rsp), %rcx
	leaq	248(%rsp), %rdx
	leaq	360(%rsp), %r8
	callq	_ZNK4vec3miERKS_
	leaq	200(%rsp), %rcx
	leaq	176(%rsp), %rdx
	callq	_Z9normalizeRK4vec3
	leaq	136(%rsp), %rcx
	leaq	112(%rsp), %r8
	leaq	88(%rsp), %r9
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, 168(%rsp)
	movl	$0, 164(%rsp)
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	$0, (%rdx)
	movl	$0, 160(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 104(%rsp)
	callq	_ZN4Test8RaytrackE4vec3S0_
	movq	136(%rsp), %rax
	movq	%rax, 304(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 312(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 320(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r10d
	cmpl	300(%rsp), %r10d
	jle	.LBB5_6
# BB#5:                                 #   in Loop: Header=BB5_3 Depth=2
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, 300(%rsp)
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=2
	leaq	80(%rsp), %rcx
	leaq	76(%rsp), %rdx
	movsd	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r8d
	addl	296(%rsp), %r8d
	movl	%r8d, 296(%rsp)
	movl	$255, 80(%rsp)
	mulsd	304(%rsp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, 76(%rsp)
	callq	_ZSt3minIiERKT_S2_S2_
	leaq	68(%rsp), %rcx
	leaq	64(%rsp), %rdx
	movsd	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	(%rax), %r8d
	movl	%r8d, 84(%rsp)
	movl	$255, 68(%rsp)
	mulsd	312(%rsp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, 64(%rsp)
	callq	_ZSt3minIiERKT_S2_S2_
	leaq	56(%rsp), %rcx
	leaq	52(%rsp), %rdx
	movsd	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	(%rax), %r8d
	movl	%r8d, 72(%rsp)
	movl	$255, 56(%rsp)
	mulsd	320(%rsp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, 52(%rsp)
	callq	_ZSt3minIiERKT_S2_S2_
	movl	(%rax), %r8d
	movl	%r8d, 60(%rsp)
	movl	60(%rsp), %r8d
	movb	%r8b, %r9b
	movq	424(%rsp), %rax
	movl	292(%rsp), %r8d
	imull	416(%rsp), %r8d
	imull	$3, %r8d, %r8d
	imull	$3, 288(%rsp), %r10d
	addl	%r10d, %r8d
	addl	$0, %r8d
	movslq	%r8d, %rcx
	movb	%r9b, (%rax,%rcx)
	movl	84(%rsp), %r8d
	movb	%r8b, %r9b
	movq	424(%rsp), %rax
	movl	292(%rsp), %r8d
	imull	416(%rsp), %r8d
	imull	$3, %r8d, %r8d
	imull	$3, 288(%rsp), %r10d
	addl	%r10d, %r8d
	addl	$1, %r8d
	movslq	%r8d, %rcx
	movb	%r9b, (%rax,%rcx)
	movl	72(%rsp), %r8d
	movb	%r8b, %r9b
	movq	424(%rsp), %rax
	movl	292(%rsp), %r8d
	imull	416(%rsp), %r8d
	imull	$3, %r8d, %r8d
	imull	$3, 288(%rsp), %r10d
	addl	%r10d, %r8d
	addl	$2, %r8d
	movslq	%r8d, %rcx
	movb	%r9b, (%rax,%rcx)
# BB#7:                                 #   in Loop: Header=BB5_3 Depth=2
	movl	288(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 288(%rsp)
	jmp	.LBB5_3
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_9
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	movl	292(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 292(%rsp)
	jmp	.LBB5_1
.LBB5_10:
	addq	$440, %rsp              # imm = 0x1B8
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4Test5PaintEPhiii
.Lcfi25:
	.seh_endproc

	.def	 _ZL6printfPKcz;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4, 0x90
_ZL6printfPKcz:                         # @_ZL6printfPKcz
.Lcfi26:
.seh_proc _ZL6printfPKcz
# BB#0:
	subq	$56, %rsp
.Lcfi27:
	.seh_stackalloc 56
.Lcfi28:
	.seh_endprologue
	movq	%r9, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	72(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movq	48(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	__mingw_vprintf
	movl	%eax, 44(%rsp)
	movl	44(%rsp), %eax
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi29:
	.seh_endproc

	.def	 _ZN4TestD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4TestD2Ev
	.globl	_ZN4TestD2Ev
	.p2align	4, 0x90
_ZN4TestD2Ev:                           # @_ZN4TestD2Ev
.Lcfi30:
.seh_proc _ZN4TestD2Ev
# BB#0:
	subq	$88, %rsp
.Lcfi31:
	.seh_stackalloc 88
.Lcfi32:
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rcx
	movl	$0, 76(%rsp)
	movq	%rcx, 56(%rsp)          # 8-byte Spill
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	76(%rsp), %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	24008(%rcx), %eax
	jge	.LBB7_6
# BB#2:                                 #   in Loop: Header=BB7_1 Depth=1
	movslq	76(%rsp), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	8(%rcx,%rax,8), %rax
	cmpq	$0, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	je	.LBB7_4
# BB#3:                                 #   in Loop: Header=BB7_1 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZdlPv
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                #   in Loop: Header=BB7_1 Depth=1
	movl	76(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 76(%rsp)
	jmp	.LBB7_1
.LBB7_6:
	movl	$0, 72(%rsp)
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	movl	72(%rsp), %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	24012(%rcx), %eax
	jge	.LBB7_12
# BB#8:                                 #   in Loop: Header=BB7_7 Depth=1
	movslq	72(%rsp), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	8008(%rcx,%rax,8), %rax
	cmpq	$0, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	je	.LBB7_10
# BB#9:                                 #   in Loop: Header=BB7_7 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZdlPv
.LBB7_10:                               #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_11
.LBB7_11:                               #   in Loop: Header=BB7_7 Depth=1
	movl	72(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 72(%rsp)
	jmp	.LBB7_7
.LBB7_12:
	movl	$0, 68(%rsp)
.LBB7_13:                               # =>This Inner Loop Header: Depth=1
	movl	68(%rsp), %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	24016(%rcx), %eax
	jge	.LBB7_18
# BB#14:                                #   in Loop: Header=BB7_13 Depth=1
	movslq	68(%rsp), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	16008(%rcx,%rax,8), %rax
	cmpq	$0, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	je	.LBB7_16
# BB#15:                                #   in Loop: Header=BB7_13 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZdlPv
.LBB7_16:                               #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_17
.LBB7_17:                               #   in Loop: Header=BB7_13 Depth=1
	movl	68(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 68(%rsp)
	jmp	.LBB7_13
.LBB7_18:
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4TestD2Ev
.Lcfi33:
	.seh_endproc

	.def	 __clang_call_terminate;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__clang_call_terminate
	.globl	__clang_call_terminate
	.p2align	4, 0x90
__clang_call_terminate:                 # @__clang_call_terminate
# BB#0:
	subq	$40, %rsp
	movq	__imp___cxa_begin_catch(%rip), %rax
	callq	*%rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	callq	_ZSt9terminatev
	ud2

	.def	 _ZN4vec3C2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4vec3C2Ev
	.globl	_ZN4vec3C2Ev
	.p2align	4, 0x90
_ZN4vec3C2Ev:                           # @_ZN4vec3C2Ev
.Lcfi34:
.seh_proc _ZN4vec3C2Ev
# BB#0:
	subq	$40, %rsp
.Lcfi35:
	.seh_stackalloc 40
.Lcfi36:
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4vec2C2Ev
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4vec3C2Ev
.Lcfi37:
	.seh_endproc

	.def	 _ZN4Test5EntryEP5PLATE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4Test5EntryEP5PLATE
	.globl	_ZN4Test5EntryEP5PLATE
	.p2align	4, 0x90
_ZN4Test5EntryEP5PLATE:                 # @_ZN4Test5EntryEP5PLATE
.Lcfi38:
.seh_proc _ZN4Test5EntryEP5PLATE
# BB#0:
	subq	$16, %rsp
.Lcfi39:
	.seh_stackalloc 16
.Lcfi40:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
	movl	24012(%rcx), %eax
	movl	%eax, %r8d
	addl	$1, %r8d
	movl	%r8d, 24012(%rcx)
	movslq	%eax, %r9
	movq	%rdx, 8008(%rcx,%r9,8)
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4Test5EntryEP5PLATE
.Lcfi41:
	.seh_endproc

	.def	 _ZN4vec3C2Eddd;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4vec3C2Eddd
	.globl	_ZN4vec3C2Eddd
	.p2align	4, 0x90
_ZN4vec3C2Eddd:                         # @_ZN4vec3C2Eddd
.Lcfi42:
.seh_proc _ZN4vec3C2Eddd
# BB#0:
	subq	$72, %rsp
.Lcfi43:
	.seh_stackalloc 72
.Lcfi44:
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movsd	%xmm1, 56(%rsp)
	movsd	%xmm2, 48(%rsp)
	movsd	%xmm3, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, %rax
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	callq	_ZN4vec2C2Ev
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	32(%rsp), %rax          # 8-byte Reload
	movsd	%xmm1, (%rax)
	movsd	48(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rax)
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%rax)
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4vec3C2Eddd
.Lcfi45:
	.seh_endproc

	.def	 _ZN5PLATEC2ERK4vec3S2_S0_ddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN5PLATEC2ERK4vec3S2_S0_ddddd
	.globl	_ZN5PLATEC2ERK4vec3S2_S0_ddddd
	.p2align	4, 0x90
_ZN5PLATEC2ERK4vec3S2_S0_ddddd:         # @_ZN5PLATEC2ERK4vec3S2_S0_ddddd
.Lcfi46:
.seh_proc _ZN5PLATEC2ERK4vec3S2_S0_ddddd
# BB#0:
	subq	$120, %rsp
.Lcfi47:
	.seh_stackalloc 120
.Lcfi48:
	.seh_endprologue
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	184(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	176(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	168(%rsp), %xmm3        # xmm3 = mem[0],zero
	movsd	160(%rsp), %xmm4        # xmm4 = mem[0],zero
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movsd	%xmm4, 88(%rsp)
	movsd	%xmm3, 80(%rsp)
	movsd	%xmm2, 72(%rsp)
	movsd	%xmm1, 64(%rsp)
	movsd	%xmm0, 56(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	%r9, 40(%rsp)           # 8-byte Spill
	callq	_ZN6COMMONC2Ev
	movq	48(%rsp), %rcx          # 8-byte Reload
	addq	$64, %rcx
	callq	_ZN4vec3C2Ev
	movq	48(%rsp), %rcx          # 8-byte Reload
	addq	$88, %rcx
	callq	_ZN4vec3C2Ev
	xorl	%edx, %edx
	movl	$112, %eax
	movl	%eax, %r8d
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	memset
	movq	104(%rsp), %rcx
	movq	(%rcx), %r8
	movq	48(%rsp), %r9           # 8-byte Reload
	movq	%r8, 64(%r9)
	movq	8(%rcx), %r8
	movq	%r8, 72(%r9)
	movq	16(%rcx), %rcx
	movq	%rcx, 80(%r9)
	movq	96(%rsp), %rcx
	movq	(%rcx), %r8
	movq	%r8, 88(%r9)
	movq	8(%rcx), %r8
	movq	%r8, 96(%r9)
	movq	16(%rcx), %rcx
	movq	%rcx, 104(%r9)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %r8
	movq	%r8, (%r9)
	movq	8(%rcx), %r8
	movq	%r8, 8(%r9)
	movq	16(%rcx), %r8
	movq	%r8, 16(%r9)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%r9)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%r9)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%r9)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%r9)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%r9)
	addq	$120, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN5PLATEC2ERK4vec3S2_S0_ddddd
.Lcfi49:
	.seh_endproc

	.def	 _ZN4Test5EntryEP6SPHERE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4Test5EntryEP6SPHERE
	.globl	_ZN4Test5EntryEP6SPHERE
	.p2align	4, 0x90
_ZN4Test5EntryEP6SPHERE:                # @_ZN4Test5EntryEP6SPHERE
.Lcfi50:
.seh_proc _ZN4Test5EntryEP6SPHERE
# BB#0:
	subq	$16, %rsp
.Lcfi51:
	.seh_stackalloc 16
.Lcfi52:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
	movl	24008(%rcx), %eax
	movl	%eax, %r8d
	addl	$1, %r8d
	movl	%r8d, 24008(%rcx)
	movslq	%eax, %r9
	movq	%rdx, 8(%rcx,%r9,8)
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4Test5EntryEP6SPHERE
.Lcfi53:
	.seh_endproc

	.def	 _ZN6SPHEREC2ERK4vec3dS0_ddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.section	.text,"xr",discard,_ZN6SPHEREC2ERK4vec3dS0_ddddd
	.globl	_ZN6SPHEREC2ERK4vec3dS0_ddddd
	.p2align	4, 0x90
_ZN6SPHEREC2ERK4vec3dS0_ddddd:          # @_ZN6SPHEREC2ERK4vec3dS0_ddddd
.Lcfi54:
.seh_proc _ZN6SPHEREC2ERK4vec3dS0_ddddd
# BB#0:
	subq	$184, %rsp
.Lcfi55:
	.seh_stackalloc 184
.Lcfi56:
	.seh_endprologue
	movsd	256(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	248(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	240(%rsp), %xmm3        # xmm3 = mem[0],zero
	movsd	232(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	224(%rsp), %xmm5        # xmm5 = mem[0],zero
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movsd	%xmm2, 160(%rsp)
	movsd	%xmm5, 152(%rsp)
	movsd	%xmm4, 144(%rsp)
	movsd	%xmm3, 136(%rsp)
	movsd	%xmm1, 128(%rsp)
	movsd	%xmm0, 120(%rsp)
	movq	176(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	%r9, 56(%rsp)           # 8-byte Spill
	callq	_ZN6COMMONC2Ev
	movq	64(%rsp), %rcx          # 8-byte Reload
	addq	$64, %rcx
	callq	_ZN4vec3C2Ev
	leaq	72(%rsp), %rcx
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorl	%edx, %edx
	movl	$96, %eax
	movl	%eax, %r8d
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%r9, %rcx
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	callq	memset
	movq	168(%rsp), %rcx
	movq	(%rcx), %r8
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	%r8, 64(%r9)
	movq	8(%rcx), %r8
	movq	%r8, 72(%r9)
	movq	16(%rcx), %rcx
	movq	%rcx, 80(%r9)
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%r9)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	_Z3mindRK4vec3
	leaq	96(%rsp), %rcx
	xorps	%xmm1, %xmm1
	leaq	72(%rsp), %r8
	callq	_Z3maxdRK4vec3
	movq	96(%rsp), %rcx
	movq	64(%rsp), %r8           # 8-byte Reload
	movq	%rcx, (%r8)
	movq	104(%rsp), %rcx
	movq	%rcx, 8(%r8)
	movq	112(%rsp), %rcx
	movq	%rcx, 16(%r8)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%r8)
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%r8)
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%r8)
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%r8)
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%r8)
	addq	$184, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN6SPHEREC2ERK4vec3dS0_ddddd
.Lcfi57:
	.seh_endproc

	.def	 _ZN4Test5EntryEP5LIGHT;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4Test5EntryEP5LIGHT
	.globl	_ZN4Test5EntryEP5LIGHT
	.p2align	4, 0x90
_ZN4Test5EntryEP5LIGHT:                 # @_ZN4Test5EntryEP5LIGHT
.Lcfi58:
.seh_proc _ZN4Test5EntryEP5LIGHT
# BB#0:
	subq	$16, %rsp
.Lcfi59:
	.seh_stackalloc 16
.Lcfi60:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
	movl	24016(%rcx), %eax
	movl	%eax, %r8d
	addl	$1, %r8d
	movl	%r8d, 24016(%rcx)
	movslq	%eax, %r9
	movq	%rdx, 16008(%rcx,%r9,8)
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4Test5EntryEP5LIGHT
.Lcfi61:
	.seh_endproc

	.def	 _ZNK4vec3mlEd;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3mlEd
	.globl	_ZNK4vec3mlEd
	.p2align	4, 0x90
_ZNK4vec3mlEd:                          # @_ZNK4vec3mlEd
.Lcfi62:
.seh_proc _ZNK4vec3mlEd
# BB#0:
	subq	$72, %rsp
.Lcfi63:
	.seh_stackalloc 72
.Lcfi64:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movsd	%xmm2, 56(%rsp)
	movq	64(%rsp), %rdx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	32(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	mulsd	56(%rsp), %xmm2
	movq	48(%rsp), %rcx          # 8-byte Reload
	movsd	%xmm2, (%rcx)
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	mulsd	56(%rsp), %xmm2
	movsd	%xmm2, 8(%rcx)
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	56(%rsp), %xmm2
	movsd	%xmm2, 16(%rcx)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZNK4vec3mlEd
.Lcfi65:
	.seh_endproc

	.def	 _ZN5LIGHTC2ERK4vec3S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN5LIGHTC2ERK4vec3S2_
	.globl	_ZN5LIGHTC2ERK4vec3S2_
	.p2align	4, 0x90
_ZN5LIGHTC2ERK4vec3S2_:                 # @_ZN5LIGHTC2ERK4vec3S2_
.Lcfi66:
.seh_proc _ZN5LIGHTC2ERK4vec3S2_
# BB#0:
	subq	$72, %rsp
.Lcfi67:
	.seh_stackalloc 72
.Lcfi68:
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	$24, %rcx
	callq	_ZN4vec3C2Ev
	movq	56(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%rdx, (%r8)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%r8)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%r8)
	movq	48(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 24(%r8)
	movq	8(%rcx), %rdx
	movq	%rdx, 32(%r8)
	movq	16(%rcx), %rcx
	movq	%rcx, 40(%r8)
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN5LIGHTC2ERK4vec3S2_
.Lcfi69:
	.seh_endproc

	.def	 _ZN4vec2C2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4vec2C2Ev
	.globl	_ZN4vec2C2Ev
	.p2align	4, 0x90
_ZN4vec2C2Ev:                           # @_ZN4vec2C2Ev
.Lcfi70:
.seh_proc _ZN4vec2C2Ev
# BB#0:
	pushq	%rax
.Lcfi71:
	.seh_stackalloc 8
.Lcfi72:
	.seh_endprologue
	movq	%rcx, (%rsp)
	popq	%rax
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4vec2C2Ev
.Lcfi73:
	.seh_endproc

	.def	 _ZN6COMMONC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN6COMMONC2Ev
	.globl	_ZN6COMMONC2Ev
	.p2align	4, 0x90
_ZN6COMMONC2Ev:                         # @_ZN6COMMONC2Ev
.Lcfi74:
.seh_proc _ZN6COMMONC2Ev
# BB#0:
	subq	$40, %rsp
.Lcfi75:
	.seh_stackalloc 40
.Lcfi76:
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4vec3C2Ev
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN6COMMONC2Ev
.Lcfi77:
	.seh_endproc

	.def	 _ZNK4vec3plERKS_;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3plERKS_
	.globl	_ZNK4vec3plERKS_
	.p2align	4, 0x90
_ZNK4vec3plERKS_:                       # @_ZNK4vec3plERKS_
.Lcfi78:
.seh_proc _ZNK4vec3plERKS_
# BB#0:
	subq	$72, %rsp
.Lcfi79:
	.seh_stackalloc 72
.Lcfi80:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	64(%rsp), %rdx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	32(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	56(%rsp), %rcx
	addsd	(%rcx), %xmm0
	movq	48(%rsp), %rcx          # 8-byte Reload
	movsd	%xmm0, (%rcx)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	56(%rsp), %rdx
	addsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rcx)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rdx
	addsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rcx)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZNK4vec3plERKS_
.Lcfi81:
	.seh_endproc

	.def	 _ZNK4vec3miERKS_;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3miERKS_
	.globl	_ZNK4vec3miERKS_
	.p2align	4, 0x90
_ZNK4vec3miERKS_:                       # @_ZNK4vec3miERKS_
.Lcfi82:
.seh_proc _ZNK4vec3miERKS_
# BB#0:
	subq	$72, %rsp
.Lcfi83:
	.seh_stackalloc 72
.Lcfi84:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	64(%rsp), %rdx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	32(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	56(%rsp), %rcx
	subsd	(%rcx), %xmm0
	movq	48(%rsp), %rcx          # 8-byte Reload
	movsd	%xmm0, (%rcx)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	56(%rsp), %rdx
	subsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rcx)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rdx
	subsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rcx)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZNK4vec3miERKS_
.Lcfi85:
	.seh_endproc

	.def	 _ZN4Test8RaytrackE4vec3S0_;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI22_0:
	.quad	4627767455434157336     # double 25.132741228718345
.LCPI22_1:
	.quad	4611686018427387904     # double 2
.LCPI22_2:
	.long	1065353216              # float 1
	.zero	4
.LCPI22_3:
	.quad	4607182418800017408     # double 1
	.section	.text,"xr",discard,_ZN4Test8RaytrackE4vec3S0_
	.globl	_ZN4Test8RaytrackE4vec3S0_
	.p2align	4, 0x90
_ZN4Test8RaytrackE4vec3S0_:             # @_ZN4Test8RaytrackE4vec3S0_
.Lcfi86:
.seh_proc _ZN4Test8RaytrackE4vec3S0_
# BB#0:
	subq	$1528, %rsp             # imm = 0x5F8
.Lcfi87:
	.seh_stackalloc 1528
.Lcfi88:
	.seh_endprologue
	movq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movq	%rdx, 1520(%rsp)
	movq	1520(%rsp), %rdx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	%r9, 192(%rsp)          # 8-byte Spill
	movq	%r8, 184(%rsp)          # 8-byte Spill
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	callq	_ZN4vec3C2Eddd
	movq	176(%rsp), %rax         # 8-byte Reload
	cmpl	$5, (%rax)
	jle	.LBB22_2
# BB#1:
	jmp	.LBB22_9
.LBB22_2:
	leaq	1344(%rsp), %rcx
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	callq	_ZN7SURFACEC2Ev
	leaq	1312(%rsp), %rcx
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	16008(%rax), %r8
	movq	%r8, 1336(%rsp)
	callq	_ZN4vec3C2Ev
	leaq	1288(%rsp), %rcx
	callq	_ZN4vec3C2Ev
	leaq	1096(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, 1280(%rsp)
	movss	%xmm0, 1276(%rsp)
	movss	%xmm0, 1272(%rsp)
	movq	176(%rsp), %rdx         # 8-byte Reload
	movq	184(%rsp), %r8          # 8-byte Reload
	movq	192(%rsp), %r9          # 8-byte Reload
	callq	_ZN4Test6raygunER4vec3RKS0_
	movl	$176, %r10d
	movl	%r10d, %r8d
	leaq	1096(%rsp), %rax
	leaq	1344(%rsp), %rcx
	movq	%rax, %rdx
	callq	memcpy
	testb	$1, 1352(%rsp)
	je	.LBB22_7
# BB#3:
	leaq	1048(%rsp), %rcx
	leaq	1344(%rsp), %rax
	addq	$40, %rax
	movq	1336(%rsp), %r8
	movq	%rax, %rdx
	callq	_ZNK4vec3miERKS_
	leaq	1072(%rsp), %rcx
	leaq	1048(%rsp), %rdx
	callq	_Z9normalizeRK4vec3
	leaq	1000(%rsp), %rcx
	leaq	1344(%rsp), %rax
	movq	1072(%rsp), %rdx
	movq	%rdx, 1288(%rsp)
	movq	1080(%rsp), %rdx
	movq	%rdx, 1296(%rsp)
	movq	1088(%rsp), %rdx
	movq	%rdx, 1304(%rsp)
	movq	1336(%rsp), %rdx
	addq	$24, %rdx
	addq	$40, %rax
	movq	1336(%rsp), %r8
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	_ZNK4vec3miERKS_
	leaq	976(%rsp), %rcx
	leaq	1344(%rsp), %rax
	addq	$40, %rax
	movq	1336(%rsp), %r8
	movq	%rax, %rdx
	callq	_ZNK4vec3miERKS_
	leaq	1000(%rsp), %rcx
	leaq	976(%rsp), %rdx
	callq	_Z3dotRK4vec3S1_
	leaq	1024(%rsp), %rcx
	movq	168(%rsp), %rdx         # 8-byte Reload
	movaps	%xmm0, %xmm2
	callq	_ZNK4vec3dvEd
	leaq	952(%rsp), %rcx
	leaq	1288(%rsp), %rdx
	leaq	1344(%rsp), %rax
	movq	1024(%rsp), %r8
	movq	%r8, 1312(%rsp)
	movq	1032(%rsp), %r8
	movq	%r8, 1320(%rsp)
	movq	1040(%rsp), %r8
	movq	%r8, 1328(%rsp)
	addq	$64, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	callq	_ZNK4vec3ngEv
	leaq	952(%rsp), %rdx
	movq	160(%rsp), %rcx         # 8-byte Reload
	callq	_Z3dotRK4vec3S1_
	xorps	%xmm2, %xmm2
	movsd	%xmm0, 152(%rsp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	152(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_Z3maxdd
	leaq	928(%rsp), %rcx
	leaq	1288(%rsp), %rdx
	leaq	1344(%rsp), %rax
	movsd	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI22_1(%rip), %xmm2  # xmm2 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 1284(%rsp)
	addsd	1496(%rsp), %xmm2
	divsd	%xmm1, %xmm2
	addq	$88, %rax
	movsd	%xmm2, 144(%rsp)        # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	callq	_ZNK4vec3ngEv
	leaq	928(%rsp), %rdx
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	_Z3dotRK4vec3S1_
	xorps	%xmm1, %xmm1
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_Z3maxdd
	movsd	1496(%rsp), %xmm1       # xmm1 = mem[0],zero
	callq	pow
	leaq	808(%rsp), %rcx
	leaq	856(%rsp), %r8
	leaq	832(%rsp), %r9
	movsd	144(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 1280(%rsp)
	cvtsd2ss	1480(%rsp), %xmm0
	movss	%xmm0, 1276(%rsp)
	cvtss2sd	1276(%rsp), %xmm1
	movq	1384(%rsp), %rax
	movq	%rax, 856(%rsp)
	movq	1392(%rsp), %rax
	movq	%rax, 864(%rsp)
	movq	1400(%rsp), %rax
	movq	%rax, 872(%rsp)
	movq	1432(%rsp), %rax
	movq	%rax, 832(%rsp)
	movq	1440(%rsp), %rax
	movq	%rax, 840(%rsp)
	movq	1448(%rsp), %rax
	movq	%rax, 848(%rsp)
	movq	176(%rsp), %rdx         # 8-byte Reload
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	callq	_ZN4Test8RaytrackE4vec3S0_
	leaq	784(%rsp), %rcx
	cvtss2sd	1280(%rsp), %xmm1
	callq	_ZN4vec3C2Ed
	leaq	880(%rsp), %rcx
	leaq	808(%rsp), %rdx
	leaq	784(%rsp), %r8
	callq	_ZNK4vec3plERKS_
	leaq	760(%rsp), %rcx
	leaq	880(%rsp), %r8
	movsd	120(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_ZmldRK4vec3
	leaq	904(%rsp), %rcx
	leaq	760(%rsp), %rdx
	leaq	1312(%rsp), %r8
	callq	_ZNK4vec3mlERKS_
	leaq	904(%rsp), %rdx
	movq	208(%rsp), %rcx         # 8-byte Reload
	callq	_ZN4vec3pLERKS_
	xorps	%xmm0, %xmm0
	movsd	1512(%rsp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, 112(%rsp)         # 8-byte Spill
	jne	.LBB22_5
	jp	.LBB22_5
# BB#4:
	leaq	712(%rsp), %rcx
	leaq	1344(%rsp), %rax
	movss	.LCPI22_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	1276(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	cvtss2sd	1284(%rsp), %xmm0
	addq	$16, %rax
	movsd	%xmm1, 104(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm1
	movq	%rax, %r8
	callq	_ZmldRK4vec3
	leaq	688(%rsp), %rcx
	leaq	712(%rsp), %r8
	movsd	104(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_ZmldRK4vec3
	leaq	736(%rsp), %rcx
	leaq	688(%rsp), %rdx
	leaq	1312(%rsp), %r8
	callq	_ZNK4vec3mlERKS_
	leaq	736(%rsp), %rdx
	movq	208(%rsp), %rcx         # 8-byte Reload
	callq	_ZN4vec3pLERKS_
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB22_6
.LBB22_5:
	leaq	664(%rsp), %rcx
	movsd	.LCPI22_3(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	1344(%rsp), %rax
	addq	$64, %rax
	movsd	1488(%rsp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movaps	%xmm1, %xmm3
	callq	_Z7refractRK4vec3S1_d
	leaq	488(%rsp), %rcx
	leaq	1344(%rsp), %rax
	movq	664(%rsp), %rdx
	movq	192(%rsp), %r8          # 8-byte Reload
	movq	%rdx, (%r8)
	movq	672(%rsp), %rdx
	movq	%rdx, 8(%r8)
	movq	680(%rsp), %rdx
	movq	%rdx, 16(%r8)
	addq	$40, %rax
	movq	176(%rsp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movq	192(%rsp), %r9          # 8-byte Reload
	callq	_ZN4Test6raygunER4vec3RKS0_
	leaq	464(%rsp), %rcx
	movsd	.LCPI22_3(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	1344(%rsp), %rax
	movl	$176, %r10d
	movl	%r10d, %r8d
	leaq	488(%rsp), %rdx
	movq	%rax, %r9
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%r9, %rcx
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	callq	memcpy
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	$64, %rax
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	1488(%rsp), %xmm0
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movaps	%xmm0, %xmm3
	callq	_Z7refractRK4vec3S1_d
	leaq	416(%rsp), %rcx
	leaq	392(%rsp), %r8
	leaq	368(%rsp), %r9
	movss	.LCPI22_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	464(%rsp), %rax
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	472(%rsp), %rax
	movq	%rax, 8(%rdx)
	movq	480(%rsp), %rax
	movq	%rax, 16(%rdx)
	subss	1276(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	1384(%rsp), %rax
	movq	%rax, 392(%rsp)
	movq	1392(%rsp), %rax
	movq	%rax, 400(%rsp)
	movq	1400(%rsp), %rax
	movq	%rax, 408(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 368(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 376(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 384(%rsp)
	movq	176(%rsp), %rdx         # 8-byte Reload
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	callq	_ZN4Test8RaytrackE4vec3S0_
	leaq	440(%rsp), %rcx
	leaq	416(%rsp), %r8
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_ZmldRK4vec3
	leaq	440(%rsp), %rdx
	movq	208(%rsp), %rcx         # 8-byte Reload
	callq	_ZN4vec3pLERKS_
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB22_6:
	jmp	.LBB22_8
.LBB22_7:
	leaq	320(%rsp), %rcx
	leaq	1344(%rsp), %rax
	addq	$40, %rax
	movq	1336(%rsp), %r8
	movq	%rax, %rdx
	callq	_ZNK4vec3miERKS_
	leaq	344(%rsp), %rcx
	leaq	320(%rsp), %rdx
	callq	_Z9normalizeRK4vec3
	leaq	272(%rsp), %rcx
	leaq	1344(%rsp), %rax
	movq	344(%rsp), %rdx
	movq	%rdx, 1288(%rsp)
	movq	352(%rsp), %rdx
	movq	%rdx, 1296(%rsp)
	movq	360(%rsp), %rdx
	movq	%rdx, 1304(%rsp)
	movq	1336(%rsp), %rdx
	addq	$24, %rdx
	addq	$40, %rax
	movq	1336(%rsp), %r8
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	callq	_ZNK4vec3miERKS_
	leaq	248(%rsp), %rcx
	leaq	1344(%rsp), %rax
	addq	$40, %rax
	movq	1336(%rsp), %r8
	movq	%rax, %rdx
	callq	_ZNK4vec3miERKS_
	leaq	272(%rsp), %rcx
	leaq	248(%rsp), %rdx
	callq	_Z3dotRK4vec3S1_
	leaq	296(%rsp), %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movaps	%xmm0, %xmm2
	callq	_ZNK4vec3dvEd
	leaq	216(%rsp), %rcx
	movq	296(%rsp), %rax
	movq	%rax, 1312(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 1320(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 1328(%rsp)
	movl	$20, 244(%rsp)
	cvtss2sd	1280(%rsp), %xmm1
	callq	_ZN4vec3C2Ed
	leaq	216(%rsp), %rdx
	movq	208(%rsp), %rcx         # 8-byte Reload
	callq	_ZN4vec3pLERKS_
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB22_8:
	jmp	.LBB22_9
.LBB22_9:
	movq	200(%rsp), %rax         # 8-byte Reload
	addq	$1528, %rsp             # imm = 0x5F8
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4Test8RaytrackE4vec3S0_
.Lcfi89:
	.seh_endproc

	.def	 _ZSt3minIiERKT_S2_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZSt3minIiERKT_S2_S2_
	.globl	_ZSt3minIiERKT_S2_S2_
	.p2align	4, 0x90
_ZSt3minIiERKT_S2_S2_:                  # @_ZSt3minIiERKT_S2_S2_
.Lcfi90:
.seh_proc _ZSt3minIiERKT_S2_S2_
# BB#0:
	subq	$24, %rsp
.Lcfi91:
	.seh_stackalloc 24
.Lcfi92:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	(%rsp), %rcx
	movl	(%rcx), %eax
	movq	8(%rsp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB23_2
# BB#1:
	movq	(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB23_3
.LBB23_2:
	movq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
.LBB23_3:
	movq	16(%rsp), %rax
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZSt3minIiERKT_S2_S2_
.Lcfi93:
	.seh_endproc

	.def	 _ZN7SURFACEC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI24_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.section	.text,"xr",discard,_ZN7SURFACEC2Ev
	.globl	_ZN7SURFACEC2Ev
	.p2align	4, 0x90
_ZN7SURFACEC2Ev:                        # @_ZN7SURFACEC2Ev
.Lcfi94:
.seh_proc _ZN7SURFACEC2Ev
# BB#0:
	subq	$56, %rsp
.Lcfi95:
	.seh_stackalloc 56
.Lcfi96:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	callq	_ZN4vec3C2Ev
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$40, %rax
	movq	%rax, %rcx
	callq	_ZN4vec3C2Ev
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$64, %rax
	movq	%rax, %rcx
	callq	_ZN4vec3C2Ev
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$88, %rax
	movq	%rax, %rcx
	callq	_ZN4vec3C2Ev
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$112, %rax
	movq	%rax, %rcx
	callq	_ZN4vec3C2Ev
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edx, %edx
	movl	$176, %r8d
                                        # kill: %R8<def> %R8D<kill>
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	memset
	movq	40(%rsp), %rax          # 8-byte Reload
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN7SURFACEC2Ev
.Lcfi97:
	.seh_endproc

	.def	 _ZN4Test6raygunER4vec3RKS0_;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI25_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI25_1:
	.quad	4461797156714954171     # double 2.0000000000000001E-10
.LCPI25_2:
	.quad	4602678819172646912     # double 0.5
.LCPI25_3:
	.quad	4607182418800017408     # double 1
.LCPI25_4:
	.quad	4666723172467343360     # double 1.0E+4
	.section	.text,"xr",discard,_ZN4Test6raygunER4vec3RKS0_
	.globl	_ZN4Test6raygunER4vec3RKS0_
	.p2align	4, 0x90
_ZN4Test6raygunER4vec3RKS0_:            # @_ZN4Test6raygunER4vec3RKS0_
.Lcfi98:
.seh_proc _ZN4Test6raygunER4vec3RKS0_
# BB#0:
	subq	$600, %rsp              # imm = 0x258
.Lcfi99:
	.seh_stackalloc 600
.Lcfi100:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 592(%rsp)
	movq	%r8, 584(%rsp)
	movq	%r9, 576(%rsp)
	movq	592(%rsp), %rdx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	callq	_ZN7SURFACEC2Ev
	leaq	552(%rsp), %rcx
	movsd	.LCPI25_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movq	576(%rsp), %rdx
	callq	_ZNK4vec3mlEd
	leaq	552(%rsp), %rdx
	movq	584(%rsp), %rcx
	callq	_ZN4vec3pLERKS_
	movsd	.LCPI25_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movq	96(%rsp), %rcx          # 8-byte Reload
	movb	$0, 8(%rcx)
	movsd	%xmm2, (%rcx)
	movl	$0, 12(%rcx)
	movl	$0, 548(%rsp)
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movl	548(%rsp), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	24008(%rcx), %eax
	jge	.LBB25_14
# BB#2:                                 #   in Loop: Header=BB25_1 Depth=1
	leaq	480(%rsp), %rcx
	leaq	512(%rsp), %r8
	movslq	548(%rsp), %rax
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	8(%rdx,%rax,8), %rax
	movq	%rax, 536(%rsp)
	movq	536(%rsp), %rax
	movq	64(%rax), %r9
	movq	%r9, 512(%rsp)
	movq	72(%rax), %r9
	movq	%r9, 520(%rsp)
	movq	80(%rax), %rax
	movq	%rax, 528(%rsp)
	movq	536(%rsp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movq	584(%rsp), %rdx
	callq	_ZNK4vec3miERKS_
	leaq	480(%rsp), %rdx
	movq	576(%rsp), %rcx
	callq	_Z3dotRK4vec3S1_
	leaq	480(%rsp), %rax
	movsd	%xmm0, 472(%rsp)
	movsd	504(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	504(%rsp), %xmm0
	movq	%rax, %rcx
	movq	%rax, %rdx
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	_Z3dotRK4vec3S1_
	xorps	%xmm1, %xmm1
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	472(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	472(%rsp), %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 464(%rsp)
	movl	$0, 460(%rsp)
	movsd	464(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB25_12
# BB#3:                                 #   in Loop: Header=BB25_1 Depth=1
	xorps	%xmm0, %xmm0
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	464(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, 48(%rsp)          # 8-byte Spill
	callq	sqrt
	movd	%xmm0, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	subsd	472(%rsp), %xmm0
	movsd	%xmm0, 448(%rsp)
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	448(%rsp), %xmm0
	jbe	.LBB25_5
# BB#4:                                 #   in Loop: Header=BB25_1 Depth=1
	movsd	464(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	sqrt
	subsd	472(%rsp), %xmm0
	movsd	%xmm0, 448(%rsp)
	movl	460(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 460(%rsp)
.LBB25_5:                               #   in Loop: Header=BB25_1 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	448(%rsp), %xmm0
	jb	.LBB25_11
# BB#6:                                 #   in Loop: Header=BB25_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	448(%rsp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB25_11
# BB#7:                                 #   in Loop: Header=BB25_1 Depth=1
	leaq	400(%rsp), %rcx
	movl	460(%rsp), %eax
	addl	$2, %eax
	movl	%eax, 460(%rsp)
	movl	460(%rsp), %eax
	movq	96(%rsp), %rdx          # 8-byte Reload
	movl	%eax, 12(%rdx)
	movsd	448(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rdx)
	movq	576(%rsp), %rdx
	movsd	448(%rsp), %xmm2        # xmm2 = mem[0],zero
	callq	_ZNK4vec3mlEd
	leaq	424(%rsp), %rcx
	leaq	400(%rsp), %rdx
	movq	584(%rsp), %r8
	callq	_ZNK4vec3plERKS_
	movq	424(%rsp), %rcx
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, 40(%rdx)
	movq	432(%rsp), %rcx
	movq	%rcx, 48(%rdx)
	movq	440(%rsp), %rcx
	movq	%rcx, 56(%rdx)
	cmpl	$3, 460(%rsp)
	jne	.LBB25_9
# BB#8:                                 #   in Loop: Header=BB25_1 Depth=1
	leaq	352(%rsp), %rcx
	leaq	512(%rsp), %r8
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	$40, %rax
	movq	%rax, %rdx
	callq	_ZNK4vec3miERKS_
	leaq	328(%rsp), %rcx
	leaq	352(%rsp), %rdx
	callq	_Z9normalizeRK4vec3
	leaq	376(%rsp), %rcx
	leaq	328(%rsp), %rdx
	callq	_ZNK4vec3ngEv
	movq	376(%rsp), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 64(%rcx)
	movq	384(%rsp), %rax
	movq	%rax, 72(%rcx)
	movq	392(%rsp), %rax
	movq	%rax, 80(%rcx)
	jmp	.LBB25_10
.LBB25_9:                               #   in Loop: Header=BB25_1 Depth=1
	leaq	280(%rsp), %rcx
	leaq	512(%rsp), %r8
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	$40, %rax
	movq	%rax, %rdx
	callq	_ZNK4vec3miERKS_
	leaq	304(%rsp), %rcx
	leaq	280(%rsp), %rdx
	callq	_Z9normalizeRK4vec3
	movq	304(%rsp), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 64(%rcx)
	movq	312(%rsp), %rax
	movq	%rax, 72(%rcx)
	movq	320(%rsp), %rax
	movq	%rax, 80(%rcx)
.LBB25_10:                              #   in Loop: Header=BB25_1 Depth=1
	leaq	256(%rsp), %rcx
	movq	536(%rsp), %rax
	movq	(%rax), %rdx
	movq	96(%rsp), %r8           # 8-byte Reload
	movq	%rdx, 16(%r8)
	movq	8(%rax), %rdx
	movq	%rdx, 24(%r8)
	movq	16(%rax), %rax
	movq	%rax, 32(%r8)
	movq	576(%rsp), %rdx
	addq	$64, %r8
	callq	_Z7reflectRK4vec3S1_
	movq	256(%rsp), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 88(%rcx)
	movq	264(%rsp), %rax
	movq	%rax, 96(%rcx)
	movq	272(%rsp), %rax
	movq	%rax, 104(%rcx)
	movq	536(%rsp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rcx)
	movq	536(%rsp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rcx)
	movq	536(%rsp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rcx)
	movq	536(%rsp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 160(%rcx)
	movq	536(%rsp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 168(%rcx)
	movb	$1, 8(%rcx)
.LBB25_11:                              #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_12
.LBB25_12:                              #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_13
.LBB25_13:                              #   in Loop: Header=BB25_1 Depth=1
	movl	548(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 548(%rsp)
	jmp	.LBB25_1
.LBB25_14:
	movl	$0, 252(%rsp)
.LBB25_15:                              # =>This Inner Loop Header: Depth=1
	movl	252(%rsp), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	24012(%rcx), %eax
	jge	.LBB25_29
# BB#16:                                #   in Loop: Header=BB25_15 Depth=1
	leaq	208(%rsp), %rcx
	movslq	252(%rsp), %rax
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	8008(%rdx,%rax,8), %rax
	movq	%rax, 240(%rsp)
	movq	240(%rsp), %rax
	addq	$88, %rax
	movq	584(%rsp), %rdx
	movq	240(%rsp), %r8
	addq	$64, %r8
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZNK4vec3miERKS_
	leaq	208(%rsp), %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	_Z3dotRK4vec3S1_
	xorps	%xmm1, %xmm1
	movsd	%xmm0, 232(%rsp)
	movsd	232(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_27
# BB#17:                                #   in Loop: Header=BB25_15 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	232(%rsp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	movq	240(%rsp), %rax
	addq	$88, %rax
	movq	576(%rsp), %rdx
	movq	%rax, %rcx
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	_Z3dotRK4vec3S1_
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 200(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	200(%rsp), %xmm0
	jb	.LBB25_26
# BB#18:                                #   in Loop: Header=BB25_15 Depth=1
	xorps	%xmm0, %xmm0
	movsd	200(%rsp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB25_26
# BB#19:                                #   in Loop: Header=BB25_15 Depth=1
	leaq	152(%rsp), %rcx
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	$2, 12(%rax)
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	576(%rsp), %rdx
	movsd	200(%rsp), %xmm2        # xmm2 = mem[0],zero
	callq	_ZNK4vec3mlEd
	leaq	176(%rsp), %rcx
	leaq	152(%rsp), %rdx
	movq	584(%rsp), %r8
	callq	_ZNK4vec3plERKS_
	movsd	.LCPI25_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI25_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	176(%rsp), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 40(%rcx)
	movq	184(%rsp), %rax
	movq	%rax, 48(%rcx)
	movq	192(%rsp), %rax
	movq	%rax, 56(%rcx)
	movq	240(%rsp), %rax
	movq	88(%rax), %rdx
	movq	%rdx, 64(%rcx)
	movq	96(%rax), %rdx
	movq	%rdx, 72(%rcx)
	movq	104(%rax), %rax
	movq	%rax, 80(%rcx)
	addsd	40(%rcx), %xmm0
	callq	fmod
	movsd	.LCPI25_2(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_21
# BB#20:                                #   in Loop: Header=BB25_15 Depth=1
	movsd	.LCPI25_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI25_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	96(%rsp), %rax          # 8-byte Reload
	addsd	56(%rax), %xmm0
	callq	fmod
	movsd	.LCPI25_2(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB25_23
.LBB25_21:                              #   in Loop: Header=BB25_15 Depth=1
	movsd	.LCPI25_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI25_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	96(%rsp), %rax          # 8-byte Reload
	addsd	40(%rax), %xmm0
	callq	fmod
	movsd	.LCPI25_2(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_24
# BB#22:                                #   in Loop: Header=BB25_15 Depth=1
	movsd	.LCPI25_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI25_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	96(%rsp), %rax          # 8-byte Reload
	addsd	56(%rax), %xmm0
	callq	fmod
	movsd	.LCPI25_2(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_24
.LBB25_23:                              #   in Loop: Header=BB25_15 Depth=1
	movq	240(%rsp), %rax
	movq	(%rax), %rcx
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 24(%rdx)
	movq	16(%rax), %rax
	movq	%rax, 32(%rdx)
	jmp	.LBB25_25
.LBB25_24:                              #   in Loop: Header=BB25_15 Depth=1
	leaq	128(%rsp), %rcx
	movsd	.LCPI25_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movq	240(%rsp), %rax
	movq	%rax, %rdx
	callq	_ZNK4vec3mlEd
	movq	128(%rsp), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	136(%rsp), %rax
	movq	%rax, 24(%rcx)
	movq	144(%rsp), %rax
	movq	%rax, 32(%rcx)
.LBB25_25:                              #   in Loop: Header=BB25_15 Depth=1
	leaq	104(%rsp), %rcx
	movq	576(%rsp), %rdx
	movq	240(%rsp), %rax
	addq	$88, %rax
	movq	%rax, %r8
	callq	_Z7reflectRK4vec3S1_
	movq	104(%rsp), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 88(%rcx)
	movq	112(%rsp), %rax
	movq	%rax, 96(%rcx)
	movq	120(%rsp), %rax
	movq	%rax, 104(%rcx)
	movq	240(%rsp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rcx)
	movq	240(%rsp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rcx)
	movq	240(%rsp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rcx)
	movq	240(%rsp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 160(%rcx)
	movq	240(%rsp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 168(%rcx)
	movb	$1, 8(%rcx)
.LBB25_26:                              #   in Loop: Header=BB25_15 Depth=1
	jmp	.LBB25_27
.LBB25_27:                              #   in Loop: Header=BB25_15 Depth=1
	jmp	.LBB25_28
.LBB25_28:                              #   in Loop: Header=BB25_15 Depth=1
	movl	252(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 252(%rsp)
	jmp	.LBB25_15
.LBB25_29:
	movq	88(%rsp), %rax          # 8-byte Reload
	addq	$600, %rsp              # imm = 0x258
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4Test6raygunER4vec3RKS0_
.Lcfi101:
	.seh_endproc

	.def	 _ZNK4vec3dvEd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI26_0:
	.quad	4607182418800017408     # double 1
	.section	.text,"xr",discard,_ZNK4vec3dvEd
	.globl	_ZNK4vec3dvEd
	.p2align	4, 0x90
_ZNK4vec3dvEd:                          # @_ZNK4vec3dvEd
.Lcfi102:
.seh_proc _ZNK4vec3dvEd
# BB#0:
	subq	$88, %rsp
.Lcfi103:
	.seh_stackalloc 88
.Lcfi104:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rdx, 80(%rsp)
	movsd	%xmm2, 72(%rsp)
	movq	80(%rsp), %rdx
	divsd	72(%rsp), %xmm0
	movsd	%xmm0, 64(%rsp)
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	40(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	64(%rsp), %xmm0
	movq	56(%rsp), %rcx          # 8-byte Reload
	movsd	%xmm0, (%rcx)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	64(%rsp), %xmm0
	movsd	%xmm0, 8(%rcx)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	64(%rsp), %xmm0
	movsd	%xmm0, 16(%rcx)
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZNK4vec3dvEd
.Lcfi105:
	.seh_endproc

	.def	 _ZNK4vec3ngEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3ngEv
	.globl	_ZNK4vec3ngEv
	.p2align	4, 0x90
_ZNK4vec3ngEv:                          # @_ZNK4vec3ngEv
.Lcfi106:
.seh_proc _ZNK4vec3ngEv
# BB#0:
	subq	$72, %rsp
.Lcfi107:
	.seh_stackalloc 72
.Lcfi108:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movq	64(%rsp), %rdx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	40(%rsp), %rcx          # 8-byte Reload
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	xorq	%rax, %rdx
	movd	%rdx, %xmm0
	movq	56(%rsp), %rdx          # 8-byte Reload
	movsd	%xmm0, (%rdx)
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %r8
	xorq	%rax, %r8
	movd	%r8, %xmm0
	movsd	%xmm0, 8(%rdx)
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %r8
	xorq	%rax, %r8
	movd	%r8, %xmm0
	movsd	%xmm0, 16(%rdx)
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZNK4vec3ngEv
.Lcfi109:
	.seh_endproc

	.def	 _ZmldRK4vec3;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZmldRK4vec3
	.globl	_ZmldRK4vec3
	.p2align	4, 0x90
_ZmldRK4vec3:                           # @_ZmldRK4vec3
.Lcfi110:
.seh_proc _ZmldRK4vec3
# BB#0:
	subq	$72, %rsp
.Lcfi111:
	.seh_stackalloc 72
.Lcfi112:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	%xmm1, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	56(%rsp), %rax
	mulsd	(%rax), %xmm1
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm1, (%rax)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	56(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	movsd	%xmm1, 8(%rax)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	56(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	movsd	%xmm1, 16(%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZmldRK4vec3
.Lcfi113:
	.seh_endproc

	.def	 _ZN4vec3C2Ed;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4vec3C2Ed
	.globl	_ZN4vec3C2Ed
	.p2align	4, 0x90
_ZN4vec3C2Ed:                           # @_ZN4vec3C2Ed
.Lcfi114:
.seh_proc _ZN4vec3C2Ed
# BB#0:
	subq	$56, %rsp
.Lcfi115:
	.seh_stackalloc 56
.Lcfi116:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, %rax
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	callq	_ZN4vec2C2Ev
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	32(%rsp), %rax          # 8-byte Reload
	movsd	%xmm1, (%rax)
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rax)
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%rax)
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4vec3C2Ed
.Lcfi117:
	.seh_endproc

	.def	 _ZNK4vec3mlERKS_;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3mlERKS_
	.globl	_ZNK4vec3mlERKS_
	.p2align	4, 0x90
_ZNK4vec3mlERKS_:                       # @_ZNK4vec3mlERKS_
.Lcfi118:
.seh_proc _ZNK4vec3mlERKS_
# BB#0:
	subq	$72, %rsp
.Lcfi119:
	.seh_stackalloc 72
.Lcfi120:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	64(%rsp), %rdx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	32(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	56(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movq	48(%rsp), %rcx          # 8-byte Reload
	movsd	%xmm0, (%rcx)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	56(%rsp), %rdx
	mulsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rcx)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rdx
	mulsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rcx)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZNK4vec3mlERKS_
.Lcfi121:
	.seh_endproc

	.def	 _ZN4vec3pLERKS_;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4vec3pLERKS_
	.globl	_ZN4vec3pLERKS_
	.p2align	4, 0x90
_ZN4vec3pLERKS_:                        # @_ZN4vec3pLERKS_
.Lcfi122:
.seh_proc _ZN4vec3pLERKS_
# BB#0:
	subq	$16, %rsp
.Lcfi123:
	.seh_stackalloc 16
.Lcfi124:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movq	(%rsp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	addsd	8(%rcx), %xmm0
	movsd	%xmm0, 8(%rcx)
	movq	(%rsp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	addsd	16(%rcx), %xmm0
	movsd	%xmm0, 16(%rcx)
	movq	%rcx, %rax
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4vec3pLERKS_
.Lcfi125:
	.seh_endproc

	.def	 _GLOBAL__sub_I_main.cpp;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4, 0x90
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
.Lcfi126:
.seh_proc _GLOBAL__sub_I_main.cpp
# BB#0:
	subq	$40, %rsp
.Lcfi127:
	.seh_stackalloc 40
.Lcfi128:
	.seh_endprologue
	callq	__cxx_global_var_init
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi129:
	.seh_endproc

	.lcomm	_ZStL8__ioinit,1        # @_ZStL8__ioinit
	.lcomm	_ZL5nFreq,8,8           # @_ZL5nFreq
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"Voxel Metaball   Jul 11 2017"

.L.str.1:                               # @.str.1
	.asciz	"time %fsec\n"

	.section	.ctors,"dw"
	.p2align	3
	.quad	_GLOBAL__sub_I_main.cpp

