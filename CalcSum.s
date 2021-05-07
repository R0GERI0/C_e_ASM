	.file	"CalcSum.c"
	.intel_syntax noprefix
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "  a:   %d\12\0"
LC1:
	.ascii "  b:   %d\12\0"
LC2:
	.ascii "  c:   %d\12\0"
LC3:
	.ascii "  sum: %d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov		ebp, esp
	and		esp, -16
	sub		esp, 32
	
	call	___main
	mov		DWORD PTR [esp+28], 17
	mov		DWORD PTR [esp+24], 11
	mov		DWORD PTR [esp+20], 14
	
	mov		eax, DWORD PTR [esp+20]
	mov		DWORD PTR [esp+8], eax
	
	mov		eax, DWORD PTR [esp+24]
	mov		DWORD PTR [esp+4], eax
	
	mov		eax, DWORD PTR [esp+28]
	mov		DWORD PTR [esp], eax
	
	call	_CalcSum_							;chama a função em asm
	
	mov	DWORD PTR [esp+16], eax					;retorno da função em eax
	
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_printf
	
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
	
	nop
	leave
	ret
	
	.ident	"GCC: (tdm-1) 9.2.0"
	.def	_CalcSum_;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
