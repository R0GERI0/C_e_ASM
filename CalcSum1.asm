;Name: CalcSum_.asm
;
; extern "C" int CalcSum_(int a, int b, int c)
;
;Description:  This function demonstrates passing arguments between
;               a C++ function and an assembly language function.
;
;Returns:      a + b + c


format MS COFF

;section '.text' code readable executable
; Initialize a stack frame pointer
public _CalcSum
_CalcSum:
	push ebp
	mov ebp,esp
	
; Load the argument values
    mov eax,[ebp+8]                     ; eax = 'a'
    mov ecx,[ebp+12]                    ; ecx = 'b'
    mov edx,[ebp+16]                    ; edx = 'c'
 
; Calculate the sum
    add eax,ecx                         ; eax = 'a' + 'b'
    add eax,edx                         ; eax = 'a' + 'b' + 'c'
	
; Restore the caller's stack frame pointer
    pop ebp
    ret