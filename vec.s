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

	.def	 _Z3moddd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3moddd
	.p2align	4, 0x90
_Z3moddd:                               # @_Z3moddd
.Lcfi8:
.seh_proc _Z3moddd
# BB#0:
	subq	$56, %rsp
.Lcfi9:
	.seh_stackalloc 56
.Lcfi10:
	.seh_endprologue
	movsd	%xmm0, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	callq	fmod
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi11:
	.seh_endproc

	.def	 _Z3mindd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3mindd
	.p2align	4, 0x90
_Z3mindd:                               # @_Z3mindd
.Lcfi12:
.seh_proc _Z3mindd
# BB#0:
	subq	$24, %rsp
.Lcfi13:
	.seh_stackalloc 24
.Lcfi14:
	.seh_endprologue
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, (%rsp)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_2
# BB#1:
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)
	jmp	.LBB3_3
.LBB3_2:
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)
.LBB3_3:
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi15:
	.seh_endproc

	.def	 _Z3maxdd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3maxdd
	.p2align	4, 0x90
_Z3maxdd:                               # @_Z3maxdd
.Lcfi16:
.seh_proc _Z3maxdd
# BB#0:
	subq	$24, %rsp
.Lcfi17:
	.seh_stackalloc 24
.Lcfi18:
	.seh_endprologue
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, (%rsp)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	ucomisd	(%rsp), %xmm0
	jbe	.LBB4_2
# BB#1:
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)
	jmp	.LBB4_3
.LBB4_2:
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)
.LBB4_3:
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi19:
	.seh_endproc

	.def	 _Z3maxdRK4vec2;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3maxdRK4vec2
	.p2align	4, 0x90
_Z3maxdRK4vec2:                         # @_Z3maxdRK4vec2
.Lcfi20:
.seh_proc _Z3maxdRK4vec2
# BB#0:
	subq	$72, %rsp
.Lcfi21:
	.seh_stackalloc 72
.Lcfi22:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	%xmm1, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec2C2Ev
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%rcx, (%r8)
	movq	8(%rax), %rax
	movq	%rax, 8(%r8)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	56(%rsp), %rax
	ucomisd	(%rax), %xmm1
	jbe	.LBB5_2
# BB#1:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB5_2:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB5_4
# BB#3:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 8(%rax)
.LBB5_4:
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi23:
	.seh_endproc

	.def	 _ZN4vec2C2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4vec2C2Ev
	.globl	_ZN4vec2C2Ev
	.p2align	4, 0x90
_ZN4vec2C2Ev:                           # @_ZN4vec2C2Ev
.Lcfi24:
.seh_proc _ZN4vec2C2Ev
# BB#0:
	pushq	%rax
.Lcfi25:
	.seh_stackalloc 8
.Lcfi26:
	.seh_endprologue
	movq	%rcx, (%rsp)
	popq	%rax
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4vec2C2Ev
.Lcfi27:
	.seh_endproc

	.def	 _Z3maxRK4vec2d;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z3maxRK4vec2d
	.p2align	4, 0x90
_Z3maxRK4vec2d:                         # @_Z3maxRK4vec2d
.Lcfi28:
.seh_proc _Z3maxRK4vec2d
# BB#0:
	subq	$72, %rsp
.Lcfi29:
	.seh_stackalloc 72
.Lcfi30:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movsd	%xmm2, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec2C2Ev
	movq	64(%rsp), %rax
	movq	(%rax), %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
	movsd	56(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	64(%rsp), %rax
	ucomisd	(%rax), %xmm2
	jbe	.LBB7_2
# BB#1:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB7_2:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	64(%rsp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB7_4
# BB#3:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 8(%rax)
.LBB7_4:
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi31:
	.seh_endproc

	.def	 _Z3maxdRK4vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3maxdRK4vec3
	.p2align	4, 0x90
_Z3maxdRK4vec3:                         # @_Z3maxdRK4vec3
.Lcfi32:
.seh_proc _Z3maxdRK4vec3
# BB#0:
	subq	$72, %rsp
.Lcfi33:
	.seh_stackalloc 72
.Lcfi34:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	%xmm1, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%rcx, (%r8)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%r8)
	movq	16(%rax), %rax
	movq	%rax, 16(%r8)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	56(%rsp), %rax
	ucomisd	(%rax), %xmm1
	jbe	.LBB8_2
# BB#1:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB8_2:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB8_4
# BB#3:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 8(%rax)
.LBB8_4:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB8_6
# BB#5:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 16(%rax)
.LBB8_6:
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi35:
	.seh_endproc

	.def	 _ZN4vec3C2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4vec3C2Ev
	.globl	_ZN4vec3C2Ev
	.p2align	4, 0x90
_ZN4vec3C2Ev:                           # @_ZN4vec3C2Ev
.Lcfi36:
.seh_proc _ZN4vec3C2Ev
# BB#0:
	subq	$40, %rsp
.Lcfi37:
	.seh_stackalloc 40
.Lcfi38:
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4vec2C2Ev
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4vec3C2Ev
.Lcfi39:
	.seh_endproc

	.def	 _Z3maxRK4vec3d;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z3maxRK4vec3d
	.p2align	4, 0x90
_Z3maxRK4vec3d:                         # @_Z3maxRK4vec3d
.Lcfi40:
.seh_proc _Z3maxRK4vec3d
# BB#0:
	subq	$72, %rsp
.Lcfi41:
	.seh_stackalloc 72
.Lcfi42:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movsd	%xmm2, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	64(%rsp), %rax
	movq	(%rax), %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	movsd	56(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	64(%rsp), %rax
	ucomisd	(%rax), %xmm2
	jbe	.LBB10_2
# BB#1:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB10_2:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	64(%rsp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB10_4
# BB#3:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 8(%rax)
.LBB10_4:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	64(%rsp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB10_6
# BB#5:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 16(%rax)
.LBB10_6:
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi43:
	.seh_endproc

	.def	 _Z3mindRK4vec2;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3mindRK4vec2
	.p2align	4, 0x90
_Z3mindRK4vec2:                         # @_Z3mindRK4vec2
.Lcfi44:
.seh_proc _Z3mindRK4vec2
# BB#0:
	subq	$72, %rsp
.Lcfi45:
	.seh_stackalloc 72
.Lcfi46:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	%xmm1, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec2C2Ev
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%rcx, (%r8)
	movq	8(%rax), %rax
	movq	%rax, 8(%r8)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	56(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_2
# BB#1:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB11_2:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_4
# BB#3:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 8(%rax)
.LBB11_4:
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi47:
	.seh_endproc

	.def	 _Z3minRK4vec2d;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3minRK4vec2d
	.p2align	4, 0x90
_Z3minRK4vec2d:                         # @_Z3minRK4vec2d
.Lcfi48:
.seh_proc _Z3minRK4vec2d
# BB#0:
	subq	$72, %rsp
.Lcfi49:
	.seh_stackalloc 72
.Lcfi50:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movsd	%xmm2, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec2C2Ev
	movq	64(%rsp), %rax
	movq	(%rax), %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
	movsd	56(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	64(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB12_2
# BB#1:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB12_2:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	64(%rsp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_4
# BB#3:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 8(%rax)
.LBB12_4:
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi51:
	.seh_endproc

	.def	 _Z3mindRK4vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3mindRK4vec3
	.p2align	4, 0x90
_Z3mindRK4vec3:                         # @_Z3mindRK4vec3
.Lcfi52:
.seh_proc _Z3mindRK4vec3
# BB#0:
	subq	$72, %rsp
.Lcfi53:
	.seh_stackalloc 72
.Lcfi54:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	%xmm1, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%rcx, (%r8)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%r8)
	movq	16(%rax), %rax
	movq	%rax, 16(%r8)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	56(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_2
# BB#1:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB13_2:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_4
# BB#3:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 8(%rax)
.LBB13_4:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_6
# BB#5:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 16(%rax)
.LBB13_6:
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi55:
	.seh_endproc

	.def	 _Z3minRK4vec3d;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3minRK4vec3d
	.p2align	4, 0x90
_Z3minRK4vec3d:                         # @_Z3minRK4vec3d
.Lcfi56:
.seh_proc _Z3minRK4vec3d
# BB#0:
	subq	$72, %rsp
.Lcfi57:
	.seh_stackalloc 72
.Lcfi58:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movsd	%xmm2, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	64(%rsp), %rax
	movq	(%rax), %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	movsd	56(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	64(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB14_2
# BB#1:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB14_2:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	64(%rsp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_4
# BB#3:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 8(%rax)
.LBB14_4:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	64(%rsp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_6
# BB#5:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, 16(%rax)
.LBB14_6:
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi59:
	.seh_endproc

	.def	 _Z3mixdRK4vec3S1_;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z3mixdRK4vec3S1_
	.p2align	4, 0x90
_Z3mixdRK4vec3S1_:                      # @_Z3mixdRK4vec3S1_
.Lcfi60:
.seh_proc _Z3mixdRK4vec3S1_
# BB#0:
	subq	$152, %rsp
.Lcfi61:
	.seh_stackalloc 152
.Lcfi62:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	%xmm1, 144(%rsp)
	movq	%r8, 136(%rsp)
	movq	%r9, 128(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	leaq	80(%rsp), %rcx
	movq	136(%rsp), %rdx
	movsd	144(%rsp), %xmm2        # xmm2 = mem[0],zero
	callq	_ZNK4vec3mlEd
	leaq	56(%rsp), %rcx
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	128(%rsp), %rdx
	subsd	144(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	callq	_ZNK4vec3mlEd
	leaq	104(%rsp), %rcx
	leaq	80(%rsp), %rdx
	leaq	56(%rsp), %r8
	callq	_ZNK4vec3plERKS_
	movq	104(%rsp), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movq	112(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$152, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi63:
	.seh_endproc

	.def	 _ZNK4vec3mlEd;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3mlEd
	.globl	_ZNK4vec3mlEd
	.p2align	4, 0x90
_ZNK4vec3mlEd:                          # @_ZNK4vec3mlEd
.Lcfi64:
.seh_proc _ZNK4vec3mlEd
# BB#0:
	subq	$72, %rsp
.Lcfi65:
	.seh_stackalloc 72
.Lcfi66:
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
.Lcfi67:
	.seh_endproc

	.def	 _ZNK4vec3plERKS_;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3plERKS_
	.globl	_ZNK4vec3plERKS_
	.p2align	4, 0x90
_ZNK4vec3plERKS_:                       # @_ZNK4vec3plERKS_
.Lcfi68:
.seh_proc _ZNK4vec3plERKS_
# BB#0:
	subq	$72, %rsp
.Lcfi69:
	.seh_stackalloc 72
.Lcfi70:
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
.Lcfi71:
	.seh_endproc

	.def	 _Z7reflectRK4vec3S1_;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI18_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	_Z7reflectRK4vec3S1_
	.p2align	4, 0x90
_Z7reflectRK4vec3S1_:                   # @_Z7reflectRK4vec3S1_
.Lcfi72:
.seh_proc _Z7reflectRK4vec3S1_
# BB#0:
	subq	$120, %rsp
.Lcfi73:
	.seh_stackalloc 120
.Lcfi74:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 112(%rsp)
	movq	%r8, 104(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	112(%rsp), %rdx
	movq	112(%rsp), %rcx
	movq	104(%rsp), %rax
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	callq	_Z3dotRK4vec3S1_
	leaq	56(%rsp), %rcx
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	104(%rsp), %r8
	callq	_ZmldRK4vec3
	leaq	80(%rsp), %rcx
	leaq	56(%rsp), %r8
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	_ZNK4vec3miERKS_
	movq	80(%rsp), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movq	88(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	96(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$120, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi75:
	.seh_endproc

	.def	 _ZNK4vec3miERKS_;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3miERKS_
	.globl	_ZNK4vec3miERKS_
	.p2align	4, 0x90
_ZNK4vec3miERKS_:                       # @_ZNK4vec3miERKS_
.Lcfi76:
.seh_proc _ZNK4vec3miERKS_
# BB#0:
	subq	$72, %rsp
.Lcfi77:
	.seh_stackalloc 72
.Lcfi78:
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
.Lcfi79:
	.seh_endproc

	.def	 _ZmldRK4vec3;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZmldRK4vec3
	.globl	_ZmldRK4vec3
	.p2align	4, 0x90
_ZmldRK4vec3:                           # @_ZmldRK4vec3
.Lcfi80:
.seh_proc _ZmldRK4vec3
# BB#0:
	subq	$72, %rsp
.Lcfi81:
	.seh_stackalloc 72
.Lcfi82:
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
.Lcfi83:
	.seh_endproc

	.def	 _Z3dotRK4vec3S1_;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z3dotRK4vec3S1_
	.p2align	4, 0x90
_Z3dotRK4vec3S1_:                       # @_Z3dotRK4vec3S1_
.Lcfi84:
.seh_proc _Z3dotRK4vec3S1_
# BB#0:
	subq	$16, %rsp
.Lcfi85:
	.seh_stackalloc 16
.Lcfi86:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movq	8(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	8(%rsp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi87:
	.seh_endproc

	.def	 _Z7refractRK4vec3S1_d;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI22_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z7refractRK4vec3S1_d
	.p2align	4, 0x90
_Z7refractRK4vec3S1_d:                  # @_Z7refractRK4vec3S1_d
.Lcfi88:
.seh_proc _Z7refractRK4vec3S1_d
# BB#0:
	subq	$232, %rsp
.Lcfi89:
	.seh_stackalloc 232
.Lcfi90:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 224(%rsp)
	movq	%r8, 216(%rsp)
	movsd	%xmm3, 208(%rsp)
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rax, 72(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	leaq	160(%rsp), %rcx
	movsd	.LCPI22_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm3, 200(%rsp)
	movsd	208(%rsp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm3, 192(%rsp)
	movq	224(%rsp), %rdx
	callq	_ZNK4vec3ngEv
	leaq	160(%rsp), %rcx
	movq	216(%rsp), %rdx
	callq	_Z3dotRK4vec3S1_
	leaq	88(%rsp), %rcx
	movsd	.LCPI22_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm0, 184(%rsp)
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
	divsd	192(%rsp), %xmm0
	movq	224(%rsp), %rdx
	movq	216(%rsp), %rax
	movsd	192(%rsp), %xmm1        # xmm1 = mem[0],zero
	divsd	200(%rsp), %xmm1
	movsd	192(%rsp), %xmm2        # xmm2 = mem[0],zero
	divsd	200(%rsp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm3, %xmm1
	movsd	184(%rsp), %xmm2        # xmm2 = mem[0],zero
	mulsd	184(%rsp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	callq	sqrt
	subsd	184(%rsp), %xmm0
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	movaps	%xmm0, %xmm2
	callq	_ZNK4vec3mlEd
	leaq	112(%rsp), %rcx
	leaq	88(%rsp), %r8
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	_ZNK4vec3miERKS_
	leaq	136(%rsp), %rcx
	leaq	112(%rsp), %r8
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_ZmldRK4vec3
	movq	136(%rsp), %rax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movq	144(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	152(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	72(%rsp), %rax          # 8-byte Reload
	addq	$232, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi91:
	.seh_endproc

	.def	 _ZNK4vec3ngEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZNK4vec3ngEv
	.globl	_ZNK4vec3ngEv
	.p2align	4, 0x90
_ZNK4vec3ngEv:                          # @_ZNK4vec3ngEv
.Lcfi92:
.seh_proc _ZNK4vec3ngEv
# BB#0:
	subq	$72, %rsp
.Lcfi93:
	.seh_stackalloc 72
.Lcfi94:
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
.Lcfi95:
	.seh_endproc

	.def	 _Z15vec3_dotproductPdS_;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z15vec3_dotproductPdS_
	.p2align	4, 0x90
_Z15vec3_dotproductPdS_:                # @_Z15vec3_dotproductPdS_
.Lcfi96:
.seh_proc _Z15vec3_dotproductPdS_
# BB#0:
	subq	$16, %rsp
.Lcfi97:
	.seh_stackalloc 16
.Lcfi98:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movq	8(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	8(%rsp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi99:
	.seh_endproc

	.def	 _Z5crossRK4vec3S1_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z5crossRK4vec3S1_
	.p2align	4, 0x90
_Z5crossRK4vec3S1_:                     # @_Z5crossRK4vec3S1_
.Lcfi100:
.seh_proc _Z5crossRK4vec3S1_
# BB#0:
	subq	$72, %rsp
.Lcfi101:
	.seh_stackalloc 72
.Lcfi102:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movq	64(%rsp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	56(%rsp), %rax
	mulsd	16(%rax), %xmm0
	movq	64(%rsp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	56(%rsp), %rax
	mulsd	8(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	64(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	56(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movq	64(%rsp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	56(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rax)
	movq	64(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	56(%rsp), %rcx
	mulsd	8(%rcx), %xmm0
	movq	64(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	56(%rsp), %rcx
	mulsd	(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi103:
	.seh_endproc

	.def	 _Z6lengthRK4vec2;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z6lengthRK4vec2
	.p2align	4, 0x90
_Z6lengthRK4vec2:                       # @_Z6lengthRK4vec2
.Lcfi104:
.seh_proc _Z6lengthRK4vec2
# BB#0:
	subq	$56, %rsp
.Lcfi105:
	.seh_stackalloc 56
.Lcfi106:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movq	48(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, 40(%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi107:
	.seh_endproc

	.def	 _Z6length4vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z6length4vec3
	.p2align	4, 0x90
_Z6length4vec3:                         # @_Z6length4vec3
.Lcfi108:
.seh_proc _Z6length4vec3
# BB#0:
	subq	$40, %rsp
.Lcfi109:
	.seh_stackalloc 40
.Lcfi110:
	.seh_endprologue
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	_Z3dotRK4vec3S1_
	callq	sqrt
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi111:
	.seh_endproc

	.def	 _Z6lengthRK4vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z6lengthRK4vec3
	.p2align	4, 0x90
_Z6lengthRK4vec3:                       # @_Z6lengthRK4vec3
.Lcfi112:
.seh_proc _Z6lengthRK4vec3
# BB#0:
	subq	$56, %rsp
.Lcfi113:
	.seh_stackalloc 56
.Lcfi114:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_Z3dotRK4vec3S1_
	callq	sqrt
	movsd	%xmm0, 40(%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi115:
	.seh_endproc

	.def	 _Z9normalizeRK4vec2;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI29_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z9normalizeRK4vec2
	.p2align	4, 0x90
_Z9normalizeRK4vec2:                    # @_Z9normalizeRK4vec2
.Lcfi116:
.seh_proc _Z9normalizeRK4vec2
# BB#0:
	subq	$104, %rsp
.Lcfi117:
	.seh_stackalloc 104
.Lcfi118:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	72(%rsp), %r8
	movq	%rdx, 96(%rsp)
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, 48(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movsd	.LCPI29_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	96(%rsp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	96(%rsp), %rax
	mulsd	(%rax), %xmm1
	movq	96(%rsp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	96(%rsp), %rax
	mulsd	8(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rsp)
	movq	96(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	64(%rsp), %xmm0
	movsd	%xmm0, 72(%rsp)
	movq	96(%rsp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	64(%rsp), %xmm0
	movsd	%xmm0, 80(%rsp)
	movq	72(%rsp), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movq	80(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	$104, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi119:
	.seh_endproc

	.def	 _Z9normalizeRK4vec3;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI30_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z9normalizeRK4vec3
	.p2align	4, 0x90
_Z9normalizeRK4vec3:                    # @_Z9normalizeRK4vec3
.Lcfi120:
.seh_proc _Z9normalizeRK4vec3
# BB#0:
	subq	$72, %rsp
.Lcfi121:
	.seh_stackalloc 72
.Lcfi122:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec3C2Ev
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	64(%rsp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	64(%rsp), %rax
	mulsd	(%rax), %xmm1
	movq	64(%rsp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	64(%rsp), %rax
	mulsd	8(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movq	64(%rsp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	64(%rsp), %rax
	mulsd	16(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rsp)
	movq	64(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	56(%rsp), %xmm0
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	64(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	mulsd	56(%rsp), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	64(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	mulsd	56(%rsp), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi123:
	.seh_endproc

	.def	 _Z17vec3_crossproductPdS_S_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z17vec3_crossproductPdS_S_
	.p2align	4, 0x90
_Z17vec3_crossproductPdS_S_:            # @_Z17vec3_crossproductPdS_S_
.Lcfi124:
.seh_proc _Z17vec3_crossproductPdS_S_
# BB#0:
	subq	$24, %rsp
.Lcfi125:
	.seh_stackalloc 24
.Lcfi126:
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	8(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	16(%rcx), %xmm0
	movq	8(%rsp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	8(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movq	8(%rsp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	8(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	8(%rcx), %xmm0
	movq	8(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	(%rsp), %rcx
	mulsd	(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 16(%rcx)
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi127:
	.seh_endproc

	.def	 _Z11vec3_lengthPd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z11vec3_lengthPd
	.p2align	4, 0x90
_Z11vec3_lengthPd:                      # @_Z11vec3_lengthPd
.Lcfi128:
.seh_proc _Z11vec3_lengthPd
# BB#0:
	subq	$40, %rsp
.Lcfi129:
	.seh_stackalloc 40
.Lcfi130:
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	32(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movq	32(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	32(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	32(%rsp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	32(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi131:
	.seh_endproc

	.def	 _Z11vec3_lengthR4vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z11vec3_lengthR4vec3
	.p2align	4, 0x90
_Z11vec3_lengthR4vec3:                  # @_Z11vec3_lengthR4vec3
.Lcfi132:
.seh_proc _Z11vec3_lengthR4vec3
# BB#0:
	subq	$40, %rsp
.Lcfi133:
	.seh_stackalloc 40
.Lcfi134:
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	32(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movq	32(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	32(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	32(%rsp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	32(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi135:
	.seh_endproc

	.def	 _Z14vec3_normalizeP4vec3;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI34_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z14vec3_normalizeP4vec3
	.p2align	4, 0x90
_Z14vec3_normalizeP4vec3:               # @_Z14vec3_normalizeP4vec3
.Lcfi136:
.seh_proc _Z14vec3_normalizeP4vec3
# BB#0:
	subq	$56, %rsp
.Lcfi137:
	.seh_stackalloc 56
.Lcfi138:
	.seh_endprologue
	movsd	.LCPI34_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	(%rcx), %xmm1
	movq	48(%rsp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movq	48(%rsp), %rcx
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	8(%rcx), %xmm0
	movsd	%xmm0, 8(%rcx)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	16(%rcx), %xmm0
	movsd	%xmm0, 16(%rcx)
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi139:
	.seh_endproc

	.def	 _Z14vec3_normalizePd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI35_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z14vec3_normalizePd
	.p2align	4, 0x90
_Z14vec3_normalizePd:                   # @_Z14vec3_normalizePd
.Lcfi140:
.seh_proc _Z14vec3_normalizePd
# BB#0:
	subq	$56, %rsp
.Lcfi141:
	.seh_stackalloc 56
.Lcfi142:
	.seh_endprologue
	movsd	.LCPI35_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	(%rcx), %xmm1
	movq	48(%rsp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movq	48(%rsp), %rcx
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	8(%rcx), %xmm0
	movsd	%xmm0, 8(%rcx)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	mulsd	16(%rcx), %xmm0
	movsd	%xmm0, 16(%rcx)
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi143:
	.seh_endproc

	.def	 _Z19vec4_multiplyMatrixPdS_S_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z19vec4_multiplyMatrixPdS_S_
	.p2align	4, 0x90
_Z19vec4_multiplyMatrixPdS_S_:          # @_Z19vec4_multiplyMatrixPdS_S_
.Lcfi144:
.seh_proc _Z19vec4_multiplyMatrixPdS_S_
# BB#0:
	subq	$184, %rsp
.Lcfi145:
	.seh_stackalloc 184
.Lcfi146:
	.seh_endprologue
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%r8, 160(%rsp)
	movq	168(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movq	168(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rsp)
	movq	168(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movq	168(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 128(%rsp)
	movq	168(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rsp)
	movq	168(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	168(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 104(%rsp)
	movq	168(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 96(%rsp)
	movq	168(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)
	movq	168(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	168(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rsp)
	movq	168(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	168(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)
	movq	168(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)
	movq	168(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rsp)
	movq	168(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	160(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	160(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)
	movq	160(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)
	movq	160(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	24(%rsp), %xmm0
	movsd	144(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	136(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	128(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	176(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	24(%rsp), %xmm0
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	104(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	96(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	176(%rsp), %rcx
	movsd	%xmm0, 8(%rcx)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	24(%rsp), %xmm0
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	176(%rsp), %rcx
	movsd	%xmm0, 16(%rcx)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	24(%rsp), %xmm0
	movsd	48(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	176(%rsp), %rcx
	movsd	%xmm0, 24(%rcx)
	addq	$184, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi147:
	.seh_endproc

	.def	 _Z10mat4_printPd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z10mat4_printPd
	.p2align	4, 0x90
_Z10mat4_printPd:                       # @_Z10mat4_printPd
.Lcfi148:
.seh_proc _Z10mat4_printPd
# BB#0:
	subq	$152, %rsp
.Lcfi149:
	.seh_stackalloc 152
.Lcfi150:
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	leaq	.L.str(%rip), %rcx
	callq	_ZL6printfPKcz
	movq	144(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	24(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	%rsp, %rcx
	movsd	%xmm3, 32(%rcx)
	leaq	.L.str.1(%rip), %rcx
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	movsd	136(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, 128(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm2
	movd	%xmm0, %r8
	movsd	128(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	128(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movd	%xmm4, %r9
	movl	%eax, 124(%rsp)         # 4-byte Spill
	callq	_ZL6printfPKcz
	movq	144(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	48(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	56(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	%rsp, %rcx
	movsd	%xmm3, 32(%rcx)
	leaq	.L.str.1(%rip), %rcx
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, 104(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm2
	movd	%xmm0, %r8
	movsd	104(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	104(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movd	%xmm4, %r9
	movl	%eax, 100(%rsp)         # 4-byte Spill
	callq	_ZL6printfPKcz
	movq	144(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	72(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	80(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	88(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	%rsp, %rcx
	movsd	%xmm3, 32(%rcx)
	leaq	.L.str.1(%rip), %rcx
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm2
	movd	%xmm0, %r8
	movsd	80(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	80(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movd	%xmm4, %r9
	movl	%eax, 76(%rsp)          # 4-byte Spill
	callq	_ZL6printfPKcz
	movq	144(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	104(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	112(%rcx), %xmm2        # xmm2 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	120(%rcx), %xmm3        # xmm3 = mem[0],zero
	movq	%rsp, %rcx
	movsd	%xmm3, 32(%rcx)
	leaq	.L.str.1(%rip), %rcx
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm2
	movd	%xmm0, %r8
	movsd	56(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	56(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movd	%xmm4, %r9
	movl	%eax, 52(%rsp)          # 4-byte Spill
	callq	_ZL6printfPKcz
	movl	$1, %r10d
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	%r10d, %eax
	addq	$152, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi151:
	.seh_endproc

	.def	 _ZL6printfPKcz;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
_ZL6printfPKcz:                         # @_ZL6printfPKcz
.Lcfi152:
.seh_proc _ZL6printfPKcz
# BB#0:
	subq	$56, %rsp
.Lcfi153:
	.seh_stackalloc 56
.Lcfi154:
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
.Lcfi155:
	.seh_endproc

	.def	 _Z10mat4_printR4mat4;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z10mat4_printR4mat4
	.p2align	4, 0x90
_Z10mat4_printR4mat4:                   # @_Z10mat4_printR4mat4
.Lcfi156:
.seh_proc _Z10mat4_printR4mat4
# BB#0:
	subq	$152, %rsp
.Lcfi157:
	.seh_stackalloc 152
.Lcfi158:
	.seh_endprologue
	movq	%rcx, 144(%rsp)
	leaq	.L.str(%rip), %rcx
	callq	_ZL6printfPKcz
	movq	144(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	24(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	%rsp, %rcx
	movsd	%xmm3, 32(%rcx)
	leaq	.L.str.1(%rip), %rcx
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	movsd	136(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, 128(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm2
	movd	%xmm0, %r8
	movsd	128(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	128(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movd	%xmm4, %r9
	movl	%eax, 124(%rsp)         # 4-byte Spill
	callq	_ZL6printfPKcz
	movq	144(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	48(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	56(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	%rsp, %rcx
	movsd	%xmm3, 32(%rcx)
	leaq	.L.str.1(%rip), %rcx
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, 104(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm2
	movd	%xmm0, %r8
	movsd	104(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	104(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movd	%xmm4, %r9
	movl	%eax, 100(%rsp)         # 4-byte Spill
	callq	_ZL6printfPKcz
	movq	144(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	72(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	80(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	88(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	%rsp, %rcx
	movsd	%xmm3, 32(%rcx)
	leaq	.L.str.1(%rip), %rcx
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm2
	movd	%xmm0, %r8
	movsd	80(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	80(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movd	%xmm4, %r9
	movl	%eax, 76(%rsp)          # 4-byte Spill
	callq	_ZL6printfPKcz
	movq	144(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	104(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	112(%rcx), %xmm2        # xmm2 = mem[0],zero
	movq	144(%rsp), %rcx
	movsd	120(%rcx), %xmm3        # xmm3 = mem[0],zero
	movq	%rsp, %rcx
	movsd	%xmm3, 32(%rcx)
	leaq	.L.str.1(%rip), %rcx
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm1
	movd	%xmm0, %rdx
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movaps	%xmm0, %xmm2
	movd	%xmm0, %r8
	movsd	56(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	56(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movd	%xmm4, %r9
	movl	%eax, 52(%rsp)          # 4-byte Spill
	callq	_ZL6printfPKcz
	movl	$1, %r10d
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	%r10d, %eax
	addq	$152, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi159:
	.seh_endproc

	.def	 _Z11mat4_inversR4mat4RKS_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z11mat4_inversR4mat4RKS_
	.p2align	4, 0x90
_Z11mat4_inversR4mat4RKS_:              # @_Z11mat4_inversR4mat4RKS_
.Lcfi160:
.seh_proc _Z11mat4_inversR4mat4RKS_
# BB#0:
	subq	$56, %rsp
.Lcfi161:
	.seh_stackalloc 56
.Lcfi162:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movq	48(%rsp), %rcx
	movq	%rax, 32(%rsp)          # 8-byte Spill
	callq	_ZN4mat48GetArrayEv
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, %rdx
	callq	_Z11mat4_inversPdPKd
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi163:
	.seh_endproc

	.def	 _Z11mat4_inversPdPKd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI41_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z11mat4_inversPdPKd
	.p2align	4, 0x90
_Z11mat4_inversPdPKd:                   # @_Z11mat4_inversPdPKd
.Lcfi164:
.seh_proc _Z11mat4_inversPdPKd
# BB#0:
	subq	$344, %rsp              # imm = 0x158
.Lcfi165:
	.seh_stackalloc 344
.Lcfi166:
	.seh_endprologue
	movq	%rcx, 336(%rsp)
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 192(%rsp)
	movq	328(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	movq	328(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 208(%rsp)
	movq	328(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movq	328(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 224(%rsp)
	movq	328(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 232(%rsp)
	movq	328(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 240(%rsp)
	movq	328(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 248(%rsp)
	movq	328(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 256(%rsp)
	movq	328(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 264(%rsp)
	movq	328(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 272(%rsp)
	movq	328(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 280(%rsp)
	movq	328(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 288(%rsp)
	movq	328(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 296(%rsp)
	movq	328(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 304(%rsp)
	movq	328(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 312(%rsp)
	movl	$4, 40(%rsp)
	movl	$0, 52(%rsp)
.LBB41_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_3 Depth 2
	movl	52(%rsp), %eax
	cmpl	40(%rsp), %eax
	jge	.LBB41_8
# BB#2:                                 #   in Loop: Header=BB41_1 Depth=1
	movl	$0, 48(%rsp)
.LBB41_3:                               #   Parent Loop BB41_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	48(%rsp), %eax
	cmpl	40(%rsp), %eax
	jge	.LBB41_6
# BB#4:                                 #   in Loop: Header=BB41_3 Depth=2
	leaq	64(%rsp), %rax
	movsd	.LCPI41_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movl	52(%rsp), %ecx
	cmpl	48(%rsp), %ecx
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	je	.LBB41_36
# BB#35:                                #   in Loop: Header=BB41_3 Depth=2
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
.LBB41_36:                              #   in Loop: Header=BB41_3 Depth=2
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	52(%rsp), %rax
	shlq	$5, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movslq	48(%rsp), %rax
	movsd	%xmm0, (%rcx,%rax,8)
# BB#5:                                 #   in Loop: Header=BB41_3 Depth=2
	movl	48(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 48(%rsp)
	jmp	.LBB41_3
.LBB41_6:                               #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_7
.LBB41_7:                               #   in Loop: Header=BB41_1 Depth=1
	movl	52(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 52(%rsp)
	jmp	.LBB41_1
.LBB41_8:
	movl	$0, 52(%rsp)
.LBB41_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_11 Depth 2
                                        #     Child Loop BB41_15 Depth 2
                                        #       Child Loop BB41_18 Depth 3
	movl	52(%rsp), %eax
	cmpl	40(%rsp), %eax
	jge	.LBB41_26
# BB#10:                                #   in Loop: Header=BB41_9 Depth=1
	movsd	.LCPI41_0(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	192(%rsp), %rax
	movslq	52(%rsp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	52(%rsp), %rcx
	divsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, 56(%rsp)
	movl	$0, 48(%rsp)
.LBB41_11:                              #   Parent Loop BB41_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	48(%rsp), %eax
	cmpl	40(%rsp), %eax
	jge	.LBB41_14
# BB#12:                                #   in Loop: Header=BB41_11 Depth=2
	leaq	64(%rsp), %rax
	leaq	192(%rsp), %rcx
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movslq	52(%rsp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	48(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm0
	movsd	%xmm0, (%rcx,%rdx,8)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movslq	52(%rsp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	48(%rsp), %rcx
	mulsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
# BB#13:                                #   in Loop: Header=BB41_11 Depth=2
	movl	48(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 48(%rsp)
	jmp	.LBB41_11
.LBB41_14:                              #   in Loop: Header=BB41_9 Depth=1
	movl	$0, 48(%rsp)
.LBB41_15:                              #   Parent Loop BB41_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB41_18 Depth 3
	movl	48(%rsp), %eax
	cmpl	40(%rsp), %eax
	jge	.LBB41_24
# BB#16:                                #   in Loop: Header=BB41_15 Depth=2
	movl	52(%rsp), %eax
	cmpl	48(%rsp), %eax
	je	.LBB41_22
# BB#17:                                #   in Loop: Header=BB41_15 Depth=2
	leaq	192(%rsp), %rax
	movslq	48(%rsp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	52(%rsp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)
	movl	$0, 44(%rsp)
.LBB41_18:                              #   Parent Loop BB41_9 Depth=1
                                        #     Parent Loop BB41_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	44(%rsp), %eax
	cmpl	40(%rsp), %eax
	jge	.LBB41_21
# BB#19:                                #   in Loop: Header=BB41_18 Depth=3
	leaq	64(%rsp), %rax
	leaq	192(%rsp), %rcx
	movslq	52(%rsp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %r8
	addq	%rdx, %r8
	movslq	44(%rsp), %rdx
	movsd	(%r8,%rdx,8), %xmm0     # xmm0 = mem[0],zero
	mulsd	56(%rsp), %xmm0
	movslq	48(%rsp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	44(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx,%rdx,8)
	movslq	52(%rsp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movslq	44(%rsp), %rcx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	56(%rsp), %xmm0
	movslq	48(%rsp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	44(%rsp), %rcx
	movsd	(%rax,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax,%rcx,8)
# BB#20:                                #   in Loop: Header=BB41_18 Depth=3
	movl	44(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 44(%rsp)
	jmp	.LBB41_18
.LBB41_21:                              #   in Loop: Header=BB41_15 Depth=2
	jmp	.LBB41_22
.LBB41_22:                              #   in Loop: Header=BB41_15 Depth=2
	jmp	.LBB41_23
.LBB41_23:                              #   in Loop: Header=BB41_15 Depth=2
	movl	48(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 48(%rsp)
	jmp	.LBB41_15
.LBB41_24:                              #   in Loop: Header=BB41_9 Depth=1
	jmp	.LBB41_25
.LBB41_25:                              #   in Loop: Header=BB41_9 Depth=1
	movl	52(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 52(%rsp)
	jmp	.LBB41_9
.LBB41_26:
	movl	$0, 36(%rsp)
	movl	$0, 52(%rsp)
.LBB41_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_29 Depth 2
	movl	52(%rsp), %eax
	cmpl	40(%rsp), %eax
	jge	.LBB41_34
# BB#28:                                #   in Loop: Header=BB41_27 Depth=1
	movl	$0, 48(%rsp)
.LBB41_29:                              #   Parent Loop BB41_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	48(%rsp), %eax
	cmpl	40(%rsp), %eax
	jge	.LBB41_32
# BB#30:                                #   in Loop: Header=BB41_29 Depth=2
	leaq	64(%rsp), %rax
	movslq	52(%rsp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	48(%rsp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	336(%rsp), %rax
	movslq	36(%rsp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movl	36(%rsp), %edx
	addl	$1, %edx
	movl	%edx, 36(%rsp)
# BB#31:                                #   in Loop: Header=BB41_29 Depth=2
	movl	48(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 48(%rsp)
	jmp	.LBB41_29
.LBB41_32:                              #   in Loop: Header=BB41_27 Depth=1
	jmp	.LBB41_33
.LBB41_33:                              #   in Loop: Header=BB41_27 Depth=1
	movl	52(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 52(%rsp)
	jmp	.LBB41_27
.LBB41_34:
	addq	$344, %rsp              # imm = 0x158
	retq
	.seh_handlerdata
	.text
.Lcfi167:
	.seh_endproc

	.def	 _ZN4mat48GetArrayEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4mat48GetArrayEv
	.globl	_ZN4mat48GetArrayEv
	.p2align	4, 0x90
_ZN4mat48GetArrayEv:                    # @_ZN4mat48GetArrayEv
.Lcfi168:
.seh_proc _ZN4mat48GetArrayEv
# BB#0:
	pushq	%rax
.Lcfi169:
	.seh_stackalloc 8
.Lcfi170:
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	%rcx, %rax
	popq	%rcx
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4mat48GetArrayEv
.Lcfi171:
	.seh_endproc

	.def	 _Z10mat4_orthoPddddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI43_0:
	.quad	4607182418800017408     # double 1
.LCPI43_1:
	.quad	-4611686018427387904    # double -2
.LCPI43_2:
	.quad	4611686018427387904     # double 2
	.text
	.globl	_Z10mat4_orthoPddddddd
	.p2align	4, 0x90
_Z10mat4_orthoPddddddd:                 # @_Z10mat4_orthoPddddddd
.Lcfi172:
.seh_proc _Z10mat4_orthoPddddddd
# BB#0:
	subq	$184, %rsp
.Lcfi173:
	.seh_stackalloc 184
	movaps	%xmm9, 160(%rsp)        # 16-byte Spill
.Lcfi174:
	.seh_savexmm 9, 160
	movaps	%xmm8, 144(%rsp)        # 16-byte Spill
.Lcfi175:
	.seh_savexmm 8, 144
	movaps	%xmm7, 128(%rsp)        # 16-byte Spill
.Lcfi176:
	.seh_savexmm 7, 128
	movaps	%xmm6, 112(%rsp)        # 16-byte Spill
.Lcfi177:
	.seh_savexmm 6, 112
.Lcfi178:
	.seh_endprologue
	movsd	240(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	232(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	224(%rsp), %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI43_0(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm7, %xmm7
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	.LCPI43_1(%rip), %xmm8  # xmm8 = mem[0],zero
	movsd	.LCPI43_2(%rip), %xmm9  # xmm9 = mem[0],zero
	movq	%rcx, 104(%rsp)
	movsd	%xmm1, 96(%rsp)
	movsd	%xmm2, 88(%rsp)
	movsd	%xmm3, 80(%rsp)
	movsd	%xmm5, 72(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm0, 56(%rsp)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	96(%rsp), %xmm0
	movaps	%xmm9, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	80(%rsp), %xmm0
	divsd	%xmm0, %xmm9
	movsd	%xmm9, 40(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	64(%rsp), %xmm0
	divsd	%xmm0, %xmm8
	movsd	%xmm8, 32(%rsp)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	96(%rsp), %xmm0
	movd	%xmm0, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	96(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	80(%rsp), %xmm0
	movd	%xmm0, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	80(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	64(%rsp), %xmm0
	movd	%xmm0, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	64(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 8(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 16(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 24(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 32(%rax)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 40(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 48(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 56(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 64(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 72(%rax)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 80(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 88(%rax)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 96(%rax)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 104(%rax)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 112(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 120(%rax)
	movaps	112(%rsp), %xmm6        # 16-byte Reload
	movaps	128(%rsp), %xmm7        # 16-byte Reload
	movaps	144(%rsp), %xmm8        # 16-byte Reload
	movaps	160(%rsp), %xmm9        # 16-byte Reload
	addq	$184, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi179:
	.seh_endproc

	.def	 _Z16mat4_perspectiveR4mat4dddd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z16mat4_perspectiveR4mat4dddd
	.p2align	4, 0x90
_Z16mat4_perspectiveR4mat4dddd:         # @_Z16mat4_perspectiveR4mat4dddd
.Lcfi180:
.seh_proc _Z16mat4_perspectiveR4mat4dddd
# BB#0:
	subq	$88, %rsp
.Lcfi181:
	.seh_stackalloc 88
.Lcfi182:
	.seh_endprologue
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, 80(%rsp)
	movsd	%xmm1, 72(%rsp)
	movsd	%xmm2, 64(%rsp)
	movsd	%xmm3, 56(%rsp)
	movsd	%xmm0, 48(%rsp)
	movq	80(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	64(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	56(%rsp), %xmm3         # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rcx
	movsd	%xmm0, 32(%rsp)
	callq	_Z16mat4_perspectivePddddd
	nop
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi183:
	.seh_endproc

	.def	 _Z16mat4_perspectivePddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI45_0:
	.quad	4611686018427387904     # double 2
.LCPI45_1:
	.quad	-4616189618054758400    # double -1
.LCPI45_2:
	.long	1065353216              # float 1
	.zero	4
.LCPI45_3:
	.quad	4576184190849162553     # double 0.0087266462599716477
	.text
	.globl	_Z16mat4_perspectivePddddd
	.p2align	4, 0x90
_Z16mat4_perspectivePddddd:             # @_Z16mat4_perspectivePddddd
.Lcfi184:
.seh_proc _Z16mat4_perspectivePddddd
# BB#0:
	subq	$104, %rsp
.Lcfi185:
	.seh_stackalloc 104
.Lcfi186:
	.seh_endprologue
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI45_3(%rip), %xmm4  # xmm4 = mem[0],zero
	movq	%rcx, 96(%rsp)
	movsd	%xmm1, 88(%rsp)
	movsd	%xmm2, 80(%rsp)
	movsd	%xmm3, 72(%rsp)
	movsd	%xmm0, 64(%rsp)
	mulsd	88(%rsp), %xmm4
	cvtsd2ss	%xmm4, %xmm0
	callq	tanf
	xorps	%xmm1, %xmm1
	movsd	.LCPI45_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI45_1(%rip), %xmm3  # xmm3 = mem[0],zero
	movss	.LCPI45_2(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm4
	cvtss2sd	%xmm4, %xmm0
	movsd	%xmm0, 56(%rsp)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	divsd	80(%rsp), %xmm0
	movq	96(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 8(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 16(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 24(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 32(%rcx)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	96(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 48(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 56(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 64(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 72(%rcx)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	40(%rsp), %xmm0
	movsd	40(%rsp), %xmm4         # xmm4 = mem[0],zero
	subsd	48(%rsp), %xmm4
	divsd	%xmm4, %xmm0
	movq	96(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm3, 88(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 96(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 104(%rcx)
	mulsd	48(%rsp), %xmm2
	mulsd	40(%rsp), %xmm2
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	48(%rsp), %xmm0
	divsd	%xmm0, %xmm2
	movq	96(%rsp), %rcx
	movsd	%xmm2, 112(%rcx)
	movq	96(%rsp), %rcx
	movsd	%xmm1, 120(%rcx)
	addq	$104, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi187:
	.seh_endproc

	.def	 _Z20mat4_ray_perspectivePddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI46_0:
	.quad	4607182418800017408     # double 1
.LCPI46_1:
	.long	1065353216              # float 1
	.zero	4
.LCPI46_2:
	.quad	4576184190849162553     # double 0.0087266462599716477
	.text
	.globl	_Z20mat4_ray_perspectivePddd
	.p2align	4, 0x90
_Z20mat4_ray_perspectivePddd:           # @_Z20mat4_ray_perspectivePddd
.Lcfi188:
.seh_proc _Z20mat4_ray_perspectivePddd
# BB#0:
	subq	$88, %rsp
.Lcfi189:
	.seh_stackalloc 88
.Lcfi190:
	.seh_endprologue
	movsd	.LCPI46_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rcx, 80(%rsp)
	movsd	%xmm1, 72(%rsp)
	movsd	%xmm2, 64(%rsp)
	mulsd	72(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	callq	tanf
	xorps	%xmm1, %xmm1
	movsd	.LCPI46_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	movss	.LCPI46_1(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm3
	cvtss2sd	%xmm3, %xmm0
	movsd	%xmm0, 56(%rsp)
	movsd	%xmm1, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, 32(%rsp)
	movaps	%xmm2, %xmm0
	mulsd	64(%rsp), %xmm0
	movq	80(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 8(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 16(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 24(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 32(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm2, 40(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 48(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 56(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 64(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 72(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm2, 80(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 88(%rax)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm0, 96(%rax)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm0, 104(%rax)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm0, 112(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 120(%rax)
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi191:
	.seh_endproc

	.def	 _Z15mat4_glFrustumfPddddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI47_0:
	.quad	4611686018427387904     # double 2
.LCPI47_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	_Z15mat4_glFrustumfPddddddd
	.p2align	4, 0x90
_Z15mat4_glFrustumfPddddddd:            # @_Z15mat4_glFrustumfPddddddd
.Lcfi192:
.seh_proc _Z15mat4_glFrustumfPddddddd
# BB#0:
	subq	$120, %rsp
.Lcfi193:
	.seh_stackalloc 120
	movaps	%xmm8, 96(%rsp)         # 16-byte Spill
.Lcfi194:
	.seh_savexmm 8, 96
	movaps	%xmm7, 80(%rsp)         # 16-byte Spill
.Lcfi195:
	.seh_savexmm 7, 80
	movaps	%xmm6, 64(%rsp)         # 16-byte Spill
.Lcfi196:
	.seh_savexmm 6, 64
.Lcfi197:
	.seh_endprologue
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	168(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	160(%rsp), %xmm5        # xmm5 = mem[0],zero
	xorps	%xmm6, %xmm6
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	.LCPI47_0(%rip), %xmm7  # xmm7 = mem[0],zero
	movsd	.LCPI47_1(%rip), %xmm8  # xmm8 = mem[0],zero
	movq	%rcx, 56(%rsp)
	movsd	%xmm1, 48(%rsp)
	movsd	%xmm2, 40(%rsp)
	movsd	%xmm3, 32(%rsp)
	movsd	%xmm5, 24(%rsp)
	movsd	%xmm4, 16(%rsp)
	movsd	%xmm0, 8(%rsp)
	movaps	%xmm7, %xmm0
	mulsd	16(%rsp), %xmm0
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	48(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm6, 8(%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm6, 16(%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm6, 24(%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm6, 32(%rcx)
	movaps	%xmm7, %xmm0
	mulsd	16(%rsp), %xmm0
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	32(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm6, 48(%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm6, 56(%rcx)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	48(%rsp), %xmm0
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	48(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	%xmm0, 64(%rcx)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	32(%rsp), %xmm0
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	32(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	%xmm0, 72(%rcx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	addsd	16(%rsp), %xmm0
	movd	%xmm0, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	subsd	16(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm8, 88(%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm6, 96(%rcx)
	movq	56(%rsp), %rcx
	movsd	%xmm6, 104(%rcx)
	mulsd	16(%rsp), %xmm7
	mulsd	8(%rsp), %xmm7
	movd	%xmm7, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	subsd	16(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movq	56(%rsp), %rax
	movsd	%xmm0, 112(%rax)
	movq	56(%rsp), %rax
	movsd	%xmm6, 120(%rax)
	movaps	64(%rsp), %xmm6         # 16-byte Reload
	movaps	80(%rsp), %xmm7         # 16-byte Reload
	movaps	96(%rsp), %xmm8         # 16-byte Reload
	addq	$120, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi198:
	.seh_endproc

	.def	 _Z12mat4_frustumPddddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI48_0:
	.quad	-4616189618054758400    # double -1
.LCPI48_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	_Z12mat4_frustumPddddddd
	.p2align	4, 0x90
_Z12mat4_frustumPddddddd:               # @_Z12mat4_frustumPddddddd
.Lcfi199:
.seh_proc _Z12mat4_frustumPddddddd
# BB#0:
	subq	$168, %rsp
.Lcfi200:
	.seh_stackalloc 168
	movaps	%xmm8, 144(%rsp)        # 16-byte Spill
.Lcfi201:
	.seh_savexmm 8, 144
	movaps	%xmm7, 128(%rsp)        # 16-byte Spill
.Lcfi202:
	.seh_savexmm 7, 128
	movaps	%xmm6, 112(%rsp)        # 16-byte Spill
.Lcfi203:
	.seh_savexmm 6, 112
.Lcfi204:
	.seh_endprologue
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	216(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	208(%rsp), %xmm5        # xmm5 = mem[0],zero
	xorps	%xmm6, %xmm6
	movsd	.LCPI48_0(%rip), %xmm7  # xmm7 = mem[0],zero
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	.LCPI48_1(%rip), %xmm8  # xmm8 = mem[0],zero
	movq	%rcx, 104(%rsp)
	movsd	%xmm1, 96(%rsp)
	movsd	%xmm2, 88(%rsp)
	movsd	%xmm3, 80(%rsp)
	movsd	%xmm5, 72(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm0, 56(%rsp)
	movaps	%xmm8, %xmm0
	mulsd	64(%rsp), %xmm0
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	96(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)
	movaps	%xmm8, %xmm0
	mulsd	64(%rsp), %xmm0
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	80(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rsp)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	96(%rsp), %xmm0
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	96(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	80(%rsp), %xmm0
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	80(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	64(%rsp), %xmm0
	movd	%xmm0, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	64(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)
	mulsd	56(%rsp), %xmm8
	mulsd	64(%rsp), %xmm8
	movd	%xmm8, %rcx
	xorq	%rax, %rcx
	movd	%rcx, %xmm0
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	64(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 8(%rax)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 16(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 24(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 32(%rax)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 40(%rax)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 48(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 56(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 64(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 72(%rax)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 80(%rax)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	104(%rsp), %rax
	movsd	%xmm0, 88(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 96(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 104(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm7, 112(%rax)
	movq	104(%rsp), %rax
	movsd	%xmm6, 120(%rax)
	movaps	112(%rsp), %xmm6        # 16-byte Reload
	movaps	128(%rsp), %xmm7        # 16-byte Reload
	movaps	144(%rsp), %xmm8        # 16-byte Reload
	addq	$168, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi205:
	.seh_endproc

	.def	 _Z12mat4_FrustumR4mat4dddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI49_0:
	.quad	4602678819172646912     # double 0.5
.LCPI49_1:
	.quad	4607182418800017408     # double 1
.LCPI49_2:
	.quad	4611686018427387904     # double 2
	.text
	.globl	_Z12mat4_FrustumR4mat4dddddd
	.p2align	4, 0x90
_Z12mat4_FrustumR4mat4dddddd:           # @_Z12mat4_FrustumR4mat4dddddd
.Lcfi206:
.seh_proc _Z12mat4_FrustumR4mat4dddddd
# BB#0:
	subq	$168, %rsp
.Lcfi207:
	.seh_stackalloc 168
	movaps	%xmm9, 144(%rsp)        # 16-byte Spill
.Lcfi208:
	.seh_savexmm 9, 144
	movaps	%xmm8, 128(%rsp)        # 16-byte Spill
.Lcfi209:
	.seh_savexmm 8, 128
	movaps	%xmm7, 112(%rsp)        # 16-byte Spill
.Lcfi210:
	.seh_savexmm 7, 112
	movaps	%xmm6, 96(%rsp)         # 16-byte Spill
.Lcfi211:
	.seh_savexmm 6, 96
.Lcfi212:
	.seh_endprologue
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	216(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	208(%rsp), %xmm5        # xmm5 = mem[0],zero
	xorps	%xmm6, %xmm6
	movsd	.LCPI49_0(%rip), %xmm7  # xmm7 = mem[0],zero
	movsd	.LCPI49_1(%rip), %xmm8  # xmm8 = mem[0],zero
	movsd	.LCPI49_2(%rip), %xmm9  # xmm9 = mem[0],zero
	movq	%rcx, 88(%rsp)
	movsd	%xmm1, 80(%rsp)
	movsd	%xmm2, 72(%rsp)
	movsd	%xmm3, 64(%rsp)
	movsd	%xmm5, 56(%rsp)
	movsd	%xmm4, 48(%rsp)
	movsd	%xmm0, 40(%rsp)
	movq	88(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	80(%rsp), %xmm0
	movaps	%xmm9, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	64(%rsp), %xmm0
	movaps	%xmm9, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	48(%rsp), %xmm0
	divsd	%xmm0, %xmm9
	movsd	%xmm9, 8(%rsp)
	movaps	%xmm8, %xmm0
	divsd	48(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	movsd	%xmm8, 24(%rsp)
	movsd	%xmm8, 16(%rsp)
	movsd	%xmm8, 8(%rsp)
	movsd	%xmm7, (%rsp)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	32(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 8(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 16(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 24(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 32(%rcx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	32(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 48(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 56(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 64(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 72(%rcx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	32(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	32(%rsp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 96(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 104(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 112(%rcx)
	movq	32(%rsp), %rcx
	movsd	%xmm6, 120(%rcx)
	movaps	96(%rsp), %xmm6         # 16-byte Reload
	movaps	112(%rsp), %xmm7        # 16-byte Reload
	movaps	128(%rsp), %xmm8        # 16-byte Reload
	movaps	144(%rsp), %xmm9        # 16-byte Reload
	addq	$168, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi213:
	.seh_endproc

	.def	 _Z10mat4_OrthoR4mat4dddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI50_0:
	.quad	4607182418800017408     # double 1
.LCPI50_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	_Z10mat4_OrthoR4mat4dddddd
	.p2align	4, 0x90
_Z10mat4_OrthoR4mat4dddddd:             # @_Z10mat4_OrthoR4mat4dddddd
.Lcfi214:
.seh_proc _Z10mat4_OrthoR4mat4dddddd
# BB#0:
	subq	$168, %rsp
.Lcfi215:
	.seh_stackalloc 168
	movaps	%xmm8, 144(%rsp)        # 16-byte Spill
.Lcfi216:
	.seh_savexmm 8, 144
	movaps	%xmm7, 128(%rsp)        # 16-byte Spill
.Lcfi217:
	.seh_savexmm 7, 128
	movaps	%xmm6, 112(%rsp)        # 16-byte Spill
.Lcfi218:
	.seh_savexmm 6, 112
.Lcfi219:
	.seh_endprologue
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	216(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	208(%rsp), %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI50_0(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm7, %xmm7
	movsd	.LCPI50_1(%rip), %xmm8  # xmm8 = mem[0],zero
	movq	%rcx, 104(%rsp)
	movsd	%xmm1, 96(%rsp)
	movsd	%xmm2, 88(%rsp)
	movsd	%xmm3, 80(%rsp)
	movsd	%xmm5, 72(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm0, 56(%rsp)
	movq	104(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	96(%rsp), %xmm0
	movaps	%xmm8, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	80(%rsp), %xmm0
	movaps	%xmm8, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	64(%rsp), %xmm0
	divsd	%xmm0, %xmm8
	movsd	%xmm8, 24(%rsp)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	96(%rsp), %xmm0
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	96(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	80(%rsp), %xmm0
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	80(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	64(%rsp), %xmm0
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	64(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 8(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 16(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 24(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 32(%rcx)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 48(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 56(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 64(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 72(%rcx)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm7, 88(%rcx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	movsd	%xmm0, 96(%rcx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	movsd	%xmm0, 104(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	48(%rsp), %rcx
	movsd	%xmm0, 112(%rcx)
	movq	48(%rsp), %rcx
	movsd	%xmm6, 120(%rcx)
	movaps	112(%rsp), %xmm6        # 16-byte Reload
	movaps	128(%rsp), %xmm7        # 16-byte Reload
	movaps	144(%rsp), %xmm8        # 16-byte Reload
	addq	$168, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi220:
	.seh_endproc

	.def	 _Z10mat4_OrthoPddddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI51_0:
	.quad	4607182418800017408     # double 1
.LCPI51_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	_Z10mat4_OrthoPddddddd
	.p2align	4, 0x90
_Z10mat4_OrthoPddddddd:                 # @_Z10mat4_OrthoPddddddd
.Lcfi221:
.seh_proc _Z10mat4_OrthoPddddddd
# BB#0:
	subq	$168, %rsp
.Lcfi222:
	.seh_stackalloc 168
	movaps	%xmm8, 144(%rsp)        # 16-byte Spill
.Lcfi223:
	.seh_savexmm 8, 144
	movaps	%xmm7, 128(%rsp)        # 16-byte Spill
.Lcfi224:
	.seh_savexmm 7, 128
	movaps	%xmm6, 112(%rsp)        # 16-byte Spill
.Lcfi225:
	.seh_savexmm 6, 112
.Lcfi226:
	.seh_endprologue
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	216(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	208(%rsp), %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI51_0(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm7, %xmm7
	movsd	.LCPI51_1(%rip), %xmm8  # xmm8 = mem[0],zero
	movq	%rcx, 104(%rsp)
	movsd	%xmm1, 96(%rsp)
	movsd	%xmm2, 88(%rsp)
	movsd	%xmm3, 80(%rsp)
	movsd	%xmm5, 72(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm0, 56(%rsp)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	96(%rsp), %xmm0
	movaps	%xmm8, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	80(%rsp), %xmm0
	movaps	%xmm8, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	64(%rsp), %xmm0
	divsd	%xmm0, %xmm8
	movsd	%xmm8, 32(%rsp)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	96(%rsp), %xmm0
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	96(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	80(%rsp), %xmm0
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	80(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	64(%rsp), %xmm0
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	64(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 8(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 16(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 24(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 32(%rcx)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 48(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 56(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 64(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 72(%rcx)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm7, 88(%rcx)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rcx
	movsd	%xmm0, 96(%rcx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	104(%rsp), %rcx
	movsd	%xmm0, 104(%rcx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	104(%rsp), %rcx
	movsd	%xmm0, 112(%rcx)
	movq	104(%rsp), %rcx
	movsd	%xmm6, 120(%rcx)
	movaps	112(%rsp), %xmm6        # 16-byte Reload
	movaps	128(%rsp), %xmm7        # 16-byte Reload
	movaps	144(%rsp), %xmm8        # 16-byte Reload
	addq	$168, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi227:
	.seh_endproc

	.def	 _Z13mat4_multiplyPdPKdS1_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z13mat4_multiplyPdPKdS1_
	.p2align	4, 0x90
_Z13mat4_multiplyPdPKdS1_:              # @_Z13mat4_multiplyPdPKdS1_
.Lcfi228:
.seh_proc _Z13mat4_multiplyPdPKdS1_
# BB#0:
	subq	$280, %rsp              # imm = 0x118
.Lcfi229:
	.seh_stackalloc 280
.Lcfi230:
	.seh_endprologue
	movq	%rcx, 272(%rsp)
	movq	%rdx, 264(%rsp)
	movq	%r8, 256(%rsp)
	movq	264(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 248(%rsp)
	movq	264(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 240(%rsp)
	movq	264(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 232(%rsp)
	movq	264(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 224(%rsp)
	movq	264(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movq	264(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 208(%rsp)
	movq	264(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	movq	264(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 192(%rsp)
	movq	264(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 184(%rsp)
	movq	264(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 176(%rsp)
	movq	264(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 168(%rsp)
	movq	264(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 160(%rsp)
	movq	264(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movq	264(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rsp)
	movq	264(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movq	264(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 128(%rsp)
	movq	256(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rsp)
	movq	256(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	256(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 104(%rsp)
	movq	256(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 96(%rsp)
	movq	256(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)
	movq	256(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	256(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rsp)
	movq	256(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	256(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)
	movq	256(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)
	movq	256(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rsp)
	movq	256(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	256(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	256(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)
	movq	256(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)
	movq	256(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	120(%rsp), %xmm0
	movsd	240(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	88(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	232(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	56(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	224(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	24(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	112(%rsp), %xmm0
	movsd	240(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	80(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	232(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	48(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	224(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 8(%rcx)
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	104(%rsp), %xmm0
	movsd	240(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	72(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	232(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	40(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	224(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 16(%rcx)
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	96(%rsp), %xmm0
	movsd	240(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	64(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	232(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	32(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	224(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 24(%rcx)
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	120(%rsp), %xmm0
	movsd	208(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	88(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	200(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	56(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	192(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	24(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 32(%rcx)
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	112(%rsp), %xmm0
	movsd	208(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	80(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	200(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	48(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	192(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	104(%rsp), %xmm0
	movsd	208(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	72(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	200(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	40(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	192(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 48(%rcx)
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	96(%rsp), %xmm0
	movsd	208(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	64(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	200(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	32(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	192(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 56(%rcx)
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	120(%rsp), %xmm0
	movsd	176(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	88(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	168(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	56(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	160(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	24(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 64(%rcx)
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	112(%rsp), %xmm0
	movsd	176(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	80(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	168(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	48(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	160(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 72(%rcx)
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	104(%rsp), %xmm0
	movsd	176(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	72(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	168(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	40(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	160(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	96(%rsp), %xmm0
	movsd	176(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	64(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	168(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	32(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	160(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 88(%rcx)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	120(%rsp), %xmm0
	movsd	144(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	88(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	136(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	56(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	128(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	24(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 96(%rcx)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	112(%rsp), %xmm0
	movsd	144(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	80(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	136(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	48(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	128(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 104(%rcx)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	104(%rsp), %xmm0
	movsd	144(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	72(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	136(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	40(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	128(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 112(%rcx)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	96(%rsp), %xmm0
	movsd	144(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	64(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	136(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	32(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	128(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	movq	272(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	addq	$280, %rsp              # imm = 0x118
	retq
	.seh_handlerdata
	.text
.Lcfi231:
	.seh_endproc

	.def	 _Z8mat4_subPdS_S_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z8mat4_subPdS_S_
	.p2align	4, 0x90
_Z8mat4_subPdS_S_:                      # @_Z8mat4_subPdS_S_
.Lcfi232:
.seh_proc _Z8mat4_subPdS_S_
# BB#0:
	subq	$24, %rsp
.Lcfi233:
	.seh_stackalloc 24
.Lcfi234:
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	8(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	8(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	8(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	8(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	16(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	8(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	24(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	8(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	32(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	8(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	40(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	8(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	48(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 48(%rcx)
	movq	8(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	56(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 56(%rcx)
	movq	8(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	64(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 64(%rcx)
	movq	8(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	72(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 72(%rcx)
	movq	8(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	80(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	8(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	88(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	8(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	96(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 96(%rcx)
	movq	8(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	104(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 104(%rcx)
	movq	8(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	112(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 112(%rcx)
	movq	8(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	subsd	120(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi235:
	.seh_endproc

	.def	 _Z8mat4_addPdS_S_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z8mat4_addPdS_S_
	.p2align	4, 0x90
_Z8mat4_addPdS_S_:                      # @_Z8mat4_addPdS_S_
.Lcfi236:
.seh_proc _Z8mat4_addPdS_S_
# BB#0:
	subq	$24, %rsp
.Lcfi237:
	.seh_stackalloc 24
.Lcfi238:
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	8(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	8(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	8(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	8(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	16(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	8(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	24(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	8(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	32(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	8(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	40(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	8(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	48(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 48(%rcx)
	movq	8(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	56(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 56(%rcx)
	movq	8(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	64(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 64(%rcx)
	movq	8(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	72(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 72(%rcx)
	movq	8(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	80(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	8(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	88(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	8(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	96(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 96(%rcx)
	movq	8(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	104(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 104(%rcx)
	movq	8(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	112(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 112(%rcx)
	movq	8(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	120(%rcx), %xmm0
	movq	16(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi239:
	.seh_endproc

	.def	 _Z8mat4_divPdd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z8mat4_divPdd
	.p2align	4, 0x90
_Z8mat4_divPdd:                         # @_Z8mat4_divPdd
.Lcfi240:
.seh_proc _Z8mat4_divPdd
# BB#0:
	subq	$16, %rsp
.Lcfi241:
	.seh_stackalloc 16
.Lcfi242:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movsd	%xmm1, (%rsp)
	movsd	(%rsp), %xmm1           # xmm1 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	56(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	64(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	72(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	80(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	88(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 88(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	96(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 96(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	104(%rcx), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 104(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	112(%rcx), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	120(%rcx), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 120(%rcx)
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi243:
	.seh_endproc

	.def	 _Z9mat4_copyPdS_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z9mat4_copyPdS_
	.p2align	4, 0x90
_Z9mat4_copyPdS_:                       # @_Z9mat4_copyPdS_
.Lcfi244:
.seh_proc _Z9mat4_copyPdS_
# BB#0:
	subq	$16, %rsp
.Lcfi245:
	.seh_stackalloc 16
.Lcfi246:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 48(%rcx)
	movq	(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 56(%rcx)
	movq	(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 64(%rcx)
	movq	(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 72(%rcx)
	movq	(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 96(%rcx)
	movq	(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 104(%rcx)
	movq	(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 112(%rcx)
	movq	(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi247:
	.seh_endproc

	.def	 _Z13mat4_identityR4mat4;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z13mat4_identityR4mat4
	.p2align	4, 0x90
_Z13mat4_identityR4mat4:                # @_Z13mat4_identityR4mat4
.Lcfi248:
.seh_proc _Z13mat4_identityR4mat4
# BB#0:
	subq	$40, %rsp
.Lcfi249:
	.seh_stackalloc 40
.Lcfi250:
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movq	%rax, %rcx
	callq	_Z13mat4_identityPd
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi251:
	.seh_endproc

	.def	 _Z13mat4_identityPd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI58_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z13mat4_identityPd
	.p2align	4, 0x90
_Z13mat4_identityPd:                    # @_Z13mat4_identityPd
.Lcfi252:
.seh_proc _Z13mat4_identityPd
# BB#0:
	pushq	%rax
.Lcfi253:
	.seh_stackalloc 8
.Lcfi254:
	.seh_endprologue
	movsd	.LCPI58_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 8(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 16(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 24(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 32(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 48(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 56(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 64(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 72(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 88(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 96(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 104(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm1, 112(%rcx)
	movq	(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	popq	%rax
	retq
	.seh_handlerdata
	.text
.Lcfi255:
	.seh_endproc

	.def	 _Z14mat4_transposePdS_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z14mat4_transposePdS_
	.p2align	4, 0x90
_Z14mat4_transposePdS_:                 # @_Z14mat4_transposePdS_
.Lcfi256:
.seh_proc _Z14mat4_transposePdS_
# BB#0:
	subq	$144, %rsp
.Lcfi257:
	.seh_stackalloc 144
.Lcfi258:
	.seh_endprologue
	movq	%rcx, 136(%rsp)
	movq	%rdx, 128(%rsp)
	movq	128(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rsp)
	movq	128(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	128(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 104(%rsp)
	movq	128(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 96(%rsp)
	movq	128(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)
	movq	128(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	128(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rsp)
	movq	128(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	128(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)
	movq	128(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)
	movq	128(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rsp)
	movq	128(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	128(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	128(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)
	movq	128(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)
	movq	128(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 8(%rcx)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 16(%rcx)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 24(%rcx)
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 32(%rcx)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 48(%rcx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 56(%rcx)
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 64(%rcx)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 72(%rcx)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 88(%rcx)
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 96(%rcx)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 104(%rcx)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 112(%rcx)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	136(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	addq	$144, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi259:
	.seh_endproc

	.def	 _Z13mat4_getScalePdddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI60_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z13mat4_getScalePdddd
	.p2align	4, 0x90
_Z13mat4_getScalePdddd:                 # @_Z13mat4_getScalePdddd
.Lcfi260:
.seh_proc _Z13mat4_getScalePdddd
# BB#0:
	subq	$32, %rsp
.Lcfi261:
	.seh_stackalloc 32
.Lcfi262:
	.seh_endprologue
	movsd	.LCPI60_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm4, %xmm4
	movq	%rcx, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm2, 8(%rsp)
	movsd	%xmm3, (%rsp)
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	movsd	%xmm1, (%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 8(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 16(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 24(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 32(%rcx)
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	movsd	%xmm1, 40(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 48(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 56(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 64(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 72(%rcx)
	movsd	(%rsp), %xmm1           # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	movsd	%xmm1, 80(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 88(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 96(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 104(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 112(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	addq	$32, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi263:
	.seh_endproc

	.def	 _Z17mat4_getTranslatePdddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI61_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z17mat4_getTranslatePdddd
	.p2align	4, 0x90
_Z17mat4_getTranslatePdddd:             # @_Z17mat4_getTranslatePdddd
.Lcfi264:
.seh_proc _Z17mat4_getTranslatePdddd
# BB#0:
	subq	$32, %rsp
.Lcfi265:
	.seh_stackalloc 32
.Lcfi266:
	.seh_endprologue
	movsd	.LCPI61_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm4, %xmm4
	movq	%rcx, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm2, 8(%rsp)
	movsd	%xmm3, (%rsp)
	movq	24(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 8(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 16(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 24(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 32(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 48(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 56(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 64(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 72(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm4, 88(%rcx)
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	movsd	%xmm1, 96(%rcx)
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	movsd	%xmm1, 104(%rcx)
	movsd	(%rsp), %xmm1           # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	movsd	%xmm1, 112(%rcx)
	movq	24(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	addq	$32, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi267:
	.seh_endproc

	.def	 _Z17mat4_GetTranslateddd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI62_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z17mat4_GetTranslateddd
	.p2align	4, 0x90
_Z17mat4_GetTranslateddd:               # @_Z17mat4_GetTranslateddd
.Lcfi268:
.seh_proc _Z17mat4_GetTranslateddd
# BB#0:
	subq	$200, %rsp
.Lcfi269:
	.seh_stackalloc 200
.Lcfi270:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	.LCPI62_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	%xmm1, 192(%rsp)
	movsd	%xmm2, 184(%rsp)
	movsd	%xmm3, 176(%rsp)
	movsd	192(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	184(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	176(%rsp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm1, 168(%rsp)        # 8-byte Spill
	movaps	%xmm0, %xmm1
	movsd	%xmm2, 160(%rsp)        # 8-byte Spill
	movaps	%xmm4, %xmm2
	movsd	%xmm3, 152(%rsp)        # 8-byte Spill
	movaps	%xmm4, %xmm3
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm0, 48(%rsp)
	movsd	%xmm4, 56(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm4, 72(%rsp)
	movsd	%xmm4, 80(%rsp)
	movsd	%xmm0, 88(%rsp)
	movsd	%xmm4, 96(%rsp)
	movsd	168(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm4, 104(%rsp)
	movsd	160(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm4, 112(%rsp)
	movsd	152(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm4, 120(%rsp)
	movsd	%xmm0, 128(%rsp)
	movq	%rax, 144(%rsp)         # 8-byte Spill
	callq	_ZN4mat4C2Edddddddddddddddd
	movq	144(%rsp), %rax         # 8-byte Reload
	addq	$200, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi271:
	.seh_endproc

	.def	 _ZN4mat4C2Edddddddddddddddd;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4mat4C2Edddddddddddddddd
	.globl	_ZN4mat4C2Edddddddddddddddd
	.p2align	4, 0x90
_ZN4mat4C2Edddddddddddddddd:            # @_ZN4mat4C2Edddddddddddddddd
.Lcfi272:
.seh_proc _ZN4mat4C2Edddddddddddddddd
# BB#0:
	subq	$312, %rsp              # imm = 0x138
.Lcfi273:
	.seh_stackalloc 312
	movaps	%xmm15, 288(%rsp)       # 16-byte Spill
.Lcfi274:
	.seh_savexmm 15, 288
	movaps	%xmm14, 272(%rsp)       # 16-byte Spill
.Lcfi275:
	.seh_savexmm 14, 272
	movaps	%xmm13, 256(%rsp)       # 16-byte Spill
.Lcfi276:
	.seh_savexmm 13, 256
	movaps	%xmm12, 240(%rsp)       # 16-byte Spill
.Lcfi277:
	.seh_savexmm 12, 240
	movaps	%xmm11, 224(%rsp)       # 16-byte Spill
.Lcfi278:
	.seh_savexmm 11, 224
	movaps	%xmm10, 208(%rsp)       # 16-byte Spill
.Lcfi279:
	.seh_savexmm 10, 208
	movaps	%xmm9, 192(%rsp)        # 16-byte Spill
.Lcfi280:
	.seh_savexmm 9, 192
	movaps	%xmm8, 176(%rsp)        # 16-byte Spill
.Lcfi281:
	.seh_savexmm 8, 176
	movaps	%xmm7, 160(%rsp)        # 16-byte Spill
.Lcfi282:
	.seh_savexmm 7, 160
	movaps	%xmm6, 144(%rsp)        # 16-byte Spill
.Lcfi283:
	.seh_savexmm 6, 144
.Lcfi284:
	.seh_endprologue
	movsd	448(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	440(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	432(%rsp), %xmm5        # xmm5 = mem[0],zero
	movsd	424(%rsp), %xmm6        # xmm6 = mem[0],zero
	movsd	416(%rsp), %xmm7        # xmm7 = mem[0],zero
	movsd	408(%rsp), %xmm8        # xmm8 = mem[0],zero
	movsd	400(%rsp), %xmm9        # xmm9 = mem[0],zero
	movsd	392(%rsp), %xmm10       # xmm10 = mem[0],zero
	movsd	384(%rsp), %xmm11       # xmm11 = mem[0],zero
	movsd	376(%rsp), %xmm12       # xmm12 = mem[0],zero
	movsd	368(%rsp), %xmm13       # xmm13 = mem[0],zero
	movsd	360(%rsp), %xmm14       # xmm14 = mem[0],zero
	movsd	352(%rsp), %xmm15       # xmm15 = mem[0],zero
	movq	%rcx, 136(%rsp)
	movsd	%xmm1, 128(%rsp)
	movsd	%xmm2, 120(%rsp)
	movsd	%xmm3, 112(%rsp)
	movsd	%xmm15, 104(%rsp)
	movsd	%xmm14, 96(%rsp)
	movsd	%xmm13, 88(%rsp)
	movsd	%xmm12, 80(%rsp)
	movsd	%xmm11, 72(%rsp)
	movsd	%xmm10, 64(%rsp)
	movsd	%xmm9, 56(%rsp)
	movsd	%xmm8, 48(%rsp)
	movsd	%xmm7, 40(%rsp)
	movsd	%xmm6, 32(%rsp)
	movsd	%xmm5, 24(%rsp)
	movsd	%xmm4, 16(%rsp)
	movsd	%xmm0, 8(%rsp)
	movq	136(%rsp), %rcx
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rcx)
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rcx)
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rcx)
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rcx)
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rcx)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rcx)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rcx)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rcx)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rcx)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rcx)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rcx)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rcx)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 96(%rcx)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 104(%rcx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rcx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rcx)
	movaps	144(%rsp), %xmm6        # 16-byte Reload
	movaps	160(%rsp), %xmm7        # 16-byte Reload
	movaps	176(%rsp), %xmm8        # 16-byte Reload
	movaps	192(%rsp), %xmm9        # 16-byte Reload
	movaps	208(%rsp), %xmm10       # 16-byte Reload
	movaps	224(%rsp), %xmm11       # 16-byte Reload
	movaps	240(%rsp), %xmm12       # 16-byte Reload
	movaps	256(%rsp), %xmm13       # 16-byte Reload
	movaps	272(%rsp), %xmm14       # 16-byte Reload
	movaps	288(%rsp), %xmm15       # 16-byte Reload
	addq	$312, %rsp              # imm = 0x138
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4mat4C2Edddddddddddddddd
.Lcfi285:
	.seh_endproc

	.def	 _Z12mat4_scalingPdddd;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z12mat4_scalingPdddd
	.p2align	4, 0x90
_Z12mat4_scalingPdddd:                  # @_Z12mat4_scalingPdddd
.Lcfi286:
.seh_proc _Z12mat4_scalingPdddd
# BB#0:
	subq	$200, %rsp
.Lcfi287:
	.seh_stackalloc 200
.Lcfi288:
	.seh_endprologue
	leaq	32(%rsp), %rax
	movq	%rcx, 192(%rsp)
	movsd	%xmm1, 184(%rsp)
	movsd	%xmm2, 176(%rsp)
	movsd	%xmm3, 168(%rsp)
	movsd	184(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	176(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	168(%rsp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z13mat4_getScalePdddd
	leaq	32(%rsp), %r8
	movq	192(%rsp), %rcx
	movq	192(%rsp), %rdx
	callq	_Z13mat4_multiplyPdPKdS1_
	nop
	addq	$200, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi289:
	.seh_endproc

	.def	 _Z12mat4_scalingPdRK4vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_scalingPdRK4vec3
	.p2align	4, 0x90
_Z12mat4_scalingPdRK4vec3:              # @_Z12mat4_scalingPdRK4vec3
.Lcfi290:
.seh_proc _Z12mat4_scalingPdRK4vec3
# BB#0:
	subq	$184, %rsp
.Lcfi291:
	.seh_stackalloc 184
.Lcfi292:
	.seh_endprologue
	leaq	32(%rsp), %rax
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movq	168(%rsp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	168(%rsp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movq	168(%rsp), %rcx
	movsd	16(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z13mat4_getScalePdddd
	leaq	32(%rsp), %r8
	movq	176(%rsp), %rcx
	movq	176(%rsp), %rdx
	callq	_Z13mat4_multiplyPdPKdS1_
	nop
	addq	$184, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi293:
	.seh_endproc

	.def	 _Z12mat4_scalingR4mat4RK4vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_scalingR4mat4RK4vec3
	.p2align	4, 0x90
_Z12mat4_scalingR4mat4RK4vec3:          # @_Z12mat4_scalingR4mat4RK4vec3
.Lcfi294:
.seh_proc _Z12mat4_scalingR4mat4RK4vec3
# BB#0:
	subq	$56, %rsp
.Lcfi295:
	.seh_stackalloc 56
.Lcfi296:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movq	40(%rsp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	40(%rsp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movq	40(%rsp), %rcx
	movsd	16(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z12mat4_scalingPdddd
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi297:
	.seh_endproc

	.def	 _Z12mat4_scalingR4mat4ddd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_scalingR4mat4ddd
	.p2align	4, 0x90
_Z12mat4_scalingR4mat4ddd:              # @_Z12mat4_scalingR4mat4ddd
.Lcfi298:
.seh_proc _Z12mat4_scalingR4mat4ddd
# BB#0:
	subq	$72, %rsp
.Lcfi299:
	.seh_stackalloc 72
.Lcfi300:
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movsd	%xmm1, 56(%rsp)
	movsd	%xmm2, 48(%rsp)
	movsd	%xmm3, 40(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	48(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	40(%rsp), %xmm3         # xmm3 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z12mat4_scalingPdddd
	nop
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi301:
	.seh_endproc

	.def	 _Z14mat4_translateR4mat4ddd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z14mat4_translateR4mat4ddd
	.p2align	4, 0x90
_Z14mat4_translateR4mat4ddd:            # @_Z14mat4_translateR4mat4ddd
.Lcfi302:
.seh_proc _Z14mat4_translateR4mat4ddd
# BB#0:
	subq	$72, %rsp
.Lcfi303:
	.seh_stackalloc 72
.Lcfi304:
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movsd	%xmm1, 56(%rsp)
	movsd	%xmm2, 48(%rsp)
	movsd	%xmm3, 40(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	48(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	40(%rsp), %xmm3         # xmm3 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z14mat4_translatePdddd
	nop
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi305:
	.seh_endproc

	.def	 _Z14mat4_translatePdddd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z14mat4_translatePdddd
	.p2align	4, 0x90
_Z14mat4_translatePdddd:                # @_Z14mat4_translatePdddd
.Lcfi306:
.seh_proc _Z14mat4_translatePdddd
# BB#0:
	subq	$32, %rsp
.Lcfi307:
	.seh_stackalloc 32
.Lcfi308:
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm2, 8(%rsp)
	movsd	%xmm3, (%rsp)
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	addsd	96(%rcx), %xmm1
	movsd	%xmm1, 96(%rcx)
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	addsd	104(%rcx), %xmm1
	movsd	%xmm1, 104(%rcx)
	movsd	(%rsp), %xmm1           # xmm1 = mem[0],zero
	movq	24(%rsp), %rcx
	addsd	112(%rcx), %xmm1
	movsd	%xmm1, 112(%rcx)
	addq	$32, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi309:
	.seh_endproc

	.def	 _Z14mat4_translateR4mat44vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z14mat4_translateR4mat44vec3
	.p2align	4, 0x90
_Z14mat4_translateR4mat44vec3:          # @_Z14mat4_translateR4mat44vec3
.Lcfi310:
.seh_proc _Z14mat4_translateR4mat44vec3
# BB#0:
	subq	$72, %rsp
.Lcfi311:
	.seh_stackalloc 72
.Lcfi312:
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	callq	_ZN4mat48GetArrayEv
	leaq	40(%rsp), %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %r8
	movq	%r8, 40(%rsp)
	movq	8(%rcx), %r8
	movq	%r8, 48(%rsp)
	movq	16(%rcx), %r8
	movq	%r8, 56(%rsp)
	movq	%rax, %rcx
	callq	_Z14mat4_translatePd4vec3
	nop
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi313:
	.seh_endproc

	.def	 _Z14mat4_translatePd4vec3;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z14mat4_translatePd4vec3
	.p2align	4, 0x90
_Z14mat4_translatePd4vec3:              # @_Z14mat4_translatePd4vec3
.Lcfi314:
.seh_proc _Z14mat4_translatePd4vec3
# BB#0:
	pushq	%rax
.Lcfi315:
	.seh_stackalloc 8
.Lcfi316:
	.seh_endprologue
	movq	%rcx, (%rsp)
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	96(%rcx), %xmm0
	movsd	%xmm0, 96(%rcx)
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	104(%rcx), %xmm0
	movsd	%xmm0, 104(%rcx)
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rcx
	addsd	112(%rcx), %xmm0
	movsd	%xmm0, 112(%rcx)
	popq	%rax
	retq
	.seh_handlerdata
	.text
.Lcfi317:
	.seh_endproc

	.def	 _Z12mat4_rotateXR4mat4d;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_rotateXR4mat4d
	.p2align	4, 0x90
_Z12mat4_rotateXR4mat4d:                # @_Z12mat4_rotateXR4mat4d
.Lcfi318:
.seh_proc _Z12mat4_rotateXR4mat4d
# BB#0:
	subq	$56, %rsp
.Lcfi319:
	.seh_stackalloc 56
.Lcfi320:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z12mat4_rotateXPdd
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi321:
	.seh_endproc

	.def	 _Z12mat4_rotateXPdd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_rotateXPdd
	.p2align	4, 0x90
_Z12mat4_rotateXPdd:                    # @_Z12mat4_rotateXPdd
.Lcfi322:
.seh_proc _Z12mat4_rotateXPdd
# BB#0:
	subq	$184, %rsp
.Lcfi323:
	.seh_stackalloc 184
.Lcfi324:
	.seh_endprologue
	leaq	32(%rsp), %rax
	movq	%rcx, 176(%rsp)
	movsd	%xmm1, 168(%rsp)
	movsd	168(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z15mat4_getRotateXPdd
	leaq	32(%rsp), %r8
	movq	176(%rsp), %rcx
	movq	176(%rsp), %rdx
	callq	_Z13mat4_multiplyPdPKdS1_
	nop
	addq	$184, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi325:
	.seh_endproc

	.def	 _Z12mat4_rotateYR4mat4d;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_rotateYR4mat4d
	.p2align	4, 0x90
_Z12mat4_rotateYR4mat4d:                # @_Z12mat4_rotateYR4mat4d
.Lcfi326:
.seh_proc _Z12mat4_rotateYR4mat4d
# BB#0:
	subq	$56, %rsp
.Lcfi327:
	.seh_stackalloc 56
.Lcfi328:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z12mat4_rotateYPdd
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi329:
	.seh_endproc

	.def	 _Z12mat4_rotateYPdd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_rotateYPdd
	.p2align	4, 0x90
_Z12mat4_rotateYPdd:                    # @_Z12mat4_rotateYPdd
.Lcfi330:
.seh_proc _Z12mat4_rotateYPdd
# BB#0:
	subq	$184, %rsp
.Lcfi331:
	.seh_stackalloc 184
.Lcfi332:
	.seh_endprologue
	leaq	32(%rsp), %rax
	movq	%rcx, 176(%rsp)
	movsd	%xmm1, 168(%rsp)
	movsd	168(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z15mat4_getRotateYPdd
	leaq	32(%rsp), %r8
	movq	176(%rsp), %rcx
	movq	176(%rsp), %rdx
	callq	_Z13mat4_multiplyPdPKdS1_
	nop
	addq	$184, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi333:
	.seh_endproc

	.def	 _Z12mat4_rotateZR4mat4d;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_rotateZR4mat4d
	.p2align	4, 0x90
_Z12mat4_rotateZR4mat4d:                # @_Z12mat4_rotateZR4mat4d
.Lcfi334:
.seh_proc _Z12mat4_rotateZR4mat4d
# BB#0:
	subq	$56, %rsp
.Lcfi335:
	.seh_stackalloc 56
.Lcfi336:
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZN4mat48GetArrayEv
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z12mat4_rotateZPdd
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi337:
	.seh_endproc

	.def	 _Z12mat4_rotateZPdd;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z12mat4_rotateZPdd
	.p2align	4, 0x90
_Z12mat4_rotateZPdd:                    # @_Z12mat4_rotateZPdd
.Lcfi338:
.seh_proc _Z12mat4_rotateZPdd
# BB#0:
	subq	$184, %rsp
.Lcfi339:
	.seh_stackalloc 184
.Lcfi340:
	.seh_endprologue
	leaq	32(%rsp), %rax
	movq	%rcx, 176(%rsp)
	movsd	%xmm1, 168(%rsp)
	movsd	168(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rcx
	callq	_Z15mat4_getRotateZPdd
	leaq	32(%rsp), %r8
	movq	176(%rsp), %rcx
	movq	176(%rsp), %rdx
	callq	_Z13mat4_multiplyPdPKdS1_
	nop
	addq	$184, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi341:
	.seh_endproc

	.def	 _Z15mat4_getRotateXPdd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI78_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z15mat4_getRotateXPdd
	.p2align	4, 0x90
_Z15mat4_getRotateXPdd:                 # @_Z15mat4_getRotateXPdd
.Lcfi342:
.seh_proc _Z15mat4_getRotateXPdd
# BB#0:
	subq	$88, %rsp
.Lcfi343:
	.seh_stackalloc 88
.Lcfi344:
	.seh_endprologue
	movsd	.LCPI78_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	%rcx, 80(%rsp)
	movsd	%xmm1, 72(%rsp)
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
	callq	cos
	movsd	%xmm0, 64(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 56(%rsp)
	movq	80(%rsp), %rax
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	80(%rsp), %rax
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 16(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 24(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 32(%rax)
	movsd	64(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm2, 40(%rax)
	movsd	56(%rsp), %xmm2         # xmm2 = mem[0],zero
	movd	%xmm2, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	xorq	%rcx, %rax
	movd	%rax, %xmm2
	movq	80(%rsp), %rax
	movsd	%xmm2, 48(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 56(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 64(%rax)
	movsd	56(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm2, 72(%rax)
	movsd	64(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm2, 80(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 88(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 96(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 104(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 112(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 120(%rax)
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi345:
	.seh_endproc

	.def	 _Z15mat4_getRotateYPdd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI79_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z15mat4_getRotateYPdd
	.p2align	4, 0x90
_Z15mat4_getRotateYPdd:                 # @_Z15mat4_getRotateYPdd
.Lcfi346:
.seh_proc _Z15mat4_getRotateYPdd
# BB#0:
	subq	$88, %rsp
.Lcfi347:
	.seh_stackalloc 88
.Lcfi348:
	.seh_endprologue
	movsd	.LCPI79_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	%rcx, 80(%rsp)
	movsd	%xmm1, 72(%rsp)
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
	callq	cos
	movsd	%xmm0, 64(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 56(%rsp)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	80(%rsp), %rax
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rax)
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movq	80(%rsp), %rax
	movsd	%xmm1, 16(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 24(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 32(%rax)
	movq	80(%rsp), %rax
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 40(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 48(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 56(%rax)
	movsd	56(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm2, 64(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 72(%rax)
	movsd	64(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm2, 80(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 88(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 96(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 104(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 112(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 120(%rax)
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi349:
	.seh_endproc

	.def	 _Z15mat4_getRotateZPdd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI80_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z15mat4_getRotateZPdd
	.p2align	4, 0x90
_Z15mat4_getRotateZPdd:                 # @_Z15mat4_getRotateZPdd
.Lcfi350:
.seh_proc _Z15mat4_getRotateZPdd
# BB#0:
	subq	$88, %rsp
.Lcfi351:
	.seh_stackalloc 88
.Lcfi352:
	.seh_endprologue
	movsd	.LCPI80_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	%rcx, 80(%rsp)
	movsd	%xmm1, 72(%rsp)
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
	callq	cos
	movsd	%xmm0, 64(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 56(%rsp)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm0, (%rax)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movq	80(%rsp), %rax
	movsd	%xmm0, 8(%rax)
	movq	80(%rsp), %rax
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm1, 32(%rax)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	80(%rsp), %rax
	movsd	%xmm1, 40(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 48(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 56(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 64(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 72(%rax)
	movq	80(%rsp), %rax
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 80(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 88(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 96(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 104(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm0, 112(%rax)
	movq	80(%rsp), %rax
	movsd	%xmm1, 120(%rax)
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi353:
	.seh_endproc

	.def	 _Z12mat4_rotateZPdS_d;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI81_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z12mat4_rotateZPdS_d
	.p2align	4, 0x90
_Z12mat4_rotateZPdS_d:                  # @_Z12mat4_rotateZPdS_d
.Lcfi354:
.seh_proc _Z12mat4_rotateZPdS_d
# BB#0:
	subq	$104, %rsp
.Lcfi355:
	.seh_stackalloc 104
.Lcfi356:
	.seh_endprologue
	movsd	.LCPI81_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	%rcx, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movsd	%xmm2, 80(%rsp)
	movsd	80(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	cos
	movsd	%xmm0, 72(%rsp)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 64(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	96(%rsp), %rax
	movsd	%xmm0, (%rax)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movq	96(%rsp), %rax
	movsd	%xmm0, 8(%rax)
	movq	96(%rsp), %rax
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	96(%rsp), %rax
	movsd	%xmm1, 32(%rax)
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	96(%rsp), %rax
	movsd	%xmm1, 40(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 48(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 56(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 64(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 72(%rax)
	movq	96(%rsp), %rax
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 80(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 88(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 96(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 104(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm0, 112(%rax)
	movq	96(%rsp), %rax
	movsd	%xmm1, 120(%rax)
	movq	96(%rsp), %rcx
	movq	88(%rsp), %rdx
	movq	96(%rsp), %r8
	callq	_Z13mat4_multiplyPdPKdS1_
	nop
	addq	$104, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi357:
	.seh_endproc

	.def	 _Z15mat4_GetRotateXd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI82_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z15mat4_GetRotateXd
	.p2align	4, 0x90
_Z15mat4_GetRotateXd:                   # @_Z15mat4_GetRotateXd
.Lcfi358:
.seh_proc _Z15mat4_GetRotateXd
# BB#0:
	subq	$232, %rsp
.Lcfi359:
	.seh_stackalloc 232
.Lcfi360:
	.seh_endprologue
	movq	%rcx, %rax
	movsd	.LCPI82_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	movsd	%xmm1, 224(%rsp)
	movsd	224(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, 200(%rsp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movsd	%xmm2, 168(%rsp)        # 8-byte Spill
	callq	cos
	movsd	%xmm0, 216(%rsp)
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 208(%rsp)
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	208(%rsp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movq	184(%rsp), %rcx         # 8-byte Reload
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	208(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	216(%rsp), %xmm3        # xmm3 = mem[0],zero
	movq	176(%rsp), %rcx         # 8-byte Reload
	movsd	200(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, 160(%rsp)        # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	168(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm2, 152(%rsp)        # 8-byte Spill
	movaps	%xmm5, %xmm2
	movsd	%xmm3, 144(%rsp)        # 8-byte Spill
	movaps	%xmm5, %xmm3
	movsd	%xmm5, 32(%rsp)
	movsd	%xmm5, 40(%rsp)
	movsd	%xmm0, 48(%rsp)
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)
	movsd	%xmm5, 64(%rsp)
	movsd	%xmm5, 72(%rsp)
	movsd	152(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movsd	144(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)
	movsd	%xmm5, 96(%rsp)
	movsd	%xmm5, 104(%rsp)
	movsd	%xmm5, 112(%rsp)
	movsd	%xmm5, 120(%rsp)
	movsd	%xmm4, 128(%rsp)
	callq	_ZN4mat4C2Edddddddddddddddd
	movq	192(%rsp), %rax         # 8-byte Reload
	addq	$232, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi361:
	.seh_endproc

	.def	 _Z15mat4_GetRotateYd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI83_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z15mat4_GetRotateYd
	.p2align	4, 0x90
_Z15mat4_GetRotateYd:                   # @_Z15mat4_GetRotateYd
.Lcfi362:
.seh_proc _Z15mat4_GetRotateYd
# BB#0:
	subq	$216, %rsp
.Lcfi363:
	.seh_stackalloc 216
.Lcfi364:
	.seh_endprologue
	movq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI83_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	movsd	%xmm1, 208(%rsp)
	movsd	208(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, 184(%rsp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movsd	%xmm2, 152(%rsp)        # 8-byte Spill
	callq	cos
	movsd	%xmm0, 200(%rsp)
	movsd	208(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 192(%rsp)
	movsd	200(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movq	168(%rsp), %rcx         # 8-byte Reload
	xorq	%rcx, %rax
	movd	%rax, %xmm3
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	200(%rsp), %xmm2        # xmm2 = mem[0],zero
	movq	160(%rsp), %rcx         # 8-byte Reload
	movsd	184(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, 144(%rsp)        # 8-byte Spill
	movaps	%xmm4, %xmm2
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm4, 40(%rsp)
	movsd	152(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm5, 48(%rsp)
	movsd	%xmm4, 56(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm0, 72(%rsp)
	movsd	%xmm4, 80(%rsp)
	movsd	144(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)
	movsd	%xmm4, 96(%rsp)
	movsd	%xmm4, 104(%rsp)
	movsd	%xmm4, 112(%rsp)
	movsd	%xmm4, 120(%rsp)
	movsd	%xmm5, 128(%rsp)
	callq	_ZN4mat4C2Edddddddddddddddd
	movq	176(%rsp), %rax         # 8-byte Reload
	addq	$216, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi365:
	.seh_endproc

	.def	 _Z15mat4_GetRotateZd;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3
.LCPI84_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z15mat4_GetRotateZd
	.p2align	4, 0x90
_Z15mat4_GetRotateZd:                   # @_Z15mat4_GetRotateZd
.Lcfi366:
.seh_proc _Z15mat4_GetRotateZd
# BB#0:
	subq	$216, %rsp
.Lcfi367:
	.seh_stackalloc 216
.Lcfi368:
	.seh_endprologue
	movq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI84_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	movsd	%xmm1, 208(%rsp)
	movsd	208(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, 184(%rsp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movsd	%xmm2, 152(%rsp)        # 8-byte Spill
	callq	cos
	movsd	%xmm0, 200(%rsp)
	movsd	208(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 192(%rsp)
	movsd	200(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movq	168(%rsp), %rcx         # 8-byte Reload
	xorq	%rcx, %rax
	movd	%rax, %xmm2
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	200(%rsp), %xmm3        # xmm3 = mem[0],zero
	movq	160(%rsp), %rcx         # 8-byte Reload
	movsd	184(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, 144(%rsp)        # 8-byte Spill
	movaps	%xmm4, %xmm3
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm0, 40(%rsp)
	movsd	144(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)
	movsd	%xmm4, 56(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm4, 72(%rsp)
	movsd	%xmm4, 80(%rsp)
	movsd	152(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)
	movsd	%xmm4, 96(%rsp)
	movsd	%xmm4, 104(%rsp)
	movsd	%xmm4, 112(%rsp)
	movsd	%xmm4, 120(%rsp)
	movsd	%xmm0, 128(%rsp)
	callq	_ZN4mat4C2Edddddddddddddddd
	movq	176(%rsp), %rax         # 8-byte Reload
	addq	$216, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi369:
	.seh_endproc

	.def	 _Z15mat4_copyMatrixPdS_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z15mat4_copyMatrixPdS_
	.p2align	4, 0x90
_Z15mat4_copyMatrixPdS_:                # @_Z15mat4_copyMatrixPdS_
.Lcfi370:
.seh_proc _Z15mat4_copyMatrixPdS_
# BB#0:
	subq	$16, %rsp
.Lcfi371:
	.seh_stackalloc 16
.Lcfi372:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, (%rcx)
	movq	(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	(%rsp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	(%rsp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	(%rsp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 48(%rcx)
	movq	(%rsp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 56(%rcx)
	movq	(%rsp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 64(%rcx)
	movq	(%rsp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 72(%rcx)
	movq	(%rsp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	(%rsp), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	(%rsp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 96(%rcx)
	movq	(%rsp), %rcx
	movsd	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 104(%rcx)
	movq	(%rsp), %rcx
	movsd	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 112(%rcx)
	movq	(%rsp), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 120(%rcx)
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi373:
	.seh_endproc

	.def	 _Z3mulRK4vec4RK4mat4;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3mulRK4vec4RK4mat4
	.p2align	4, 0x90
_Z3mulRK4vec4RK4mat4:                   # @_Z3mulRK4vec4RK4mat4
.Lcfi374:
.seh_proc _Z3mulRK4vec4RK4mat4
# BB#0:
	subq	$72, %rsp
.Lcfi375:
	.seh_stackalloc 72
.Lcfi376:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	_ZN4vec4C2Ev
	movq	56(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	64(%rsp), %rax
	mulsd	(%rax), %xmm0
	movq	56(%rsp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rax
	mulsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	56(%rsp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rax
	mulsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	56(%rsp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rax
	mulsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	56(%rsp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	8(%rcx), %xmm0
	movq	56(%rsp), %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	72(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	104(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rax)
	movq	56(%rsp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	16(%rcx), %xmm0
	movq	56(%rsp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	80(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	112(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rax)
	movq	56(%rsp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	24(%rcx), %xmm0
	movq	56(%rsp), %rcx
	movsd	56(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	24(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	88(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	24(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	56(%rsp), %rcx
	movsd	120(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	64(%rsp), %rcx
	mulsd	24(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi377:
	.seh_endproc

	.def	 _ZN4vec4C2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_ZN4vec4C2Ev
	.globl	_ZN4vec4C2Ev
	.p2align	4, 0x90
_ZN4vec4C2Ev:                           # @_ZN4vec4C2Ev
.Lcfi378:
.seh_proc _ZN4vec4C2Ev
# BB#0:
	subq	$40, %rsp
.Lcfi379:
	.seh_stackalloc 40
.Lcfi380:
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZN4vec3C2Ev
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_ZN4vec4C2Ev
.Lcfi381:
	.seh_endproc

	.def	 _GLOBAL__sub_I_vec.cpp;
	.scl	3;
	.type	32;
	.endef
	.text
	.p2align	4, 0x90
_GLOBAL__sub_I_vec.cpp:                 # @_GLOBAL__sub_I_vec.cpp
.Lcfi382:
.seh_proc _GLOBAL__sub_I_vec.cpp
# BB#0:
	subq	$40, %rsp
.Lcfi383:
	.seh_stackalloc 40
.Lcfi384:
	.seh_endprologue
	callq	__cxx_global_var_init
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Lcfi385:
	.seh_endproc

	.lcomm	_ZStL8__ioinit,1        # @_ZStL8__ioinit
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"-----\n"

.L.str.1:                               # @.str.1
	.asciz	"%9f %9f %9f %9f\n"

	.section	.ctors,"dw"
	.p2align	3
	.quad	_GLOBAL__sub_I_vec.cpp

