global _start
section .text
_start:

    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, hello
    mov edx, len
    int 0x80

    mov eax, 0x1
    mov ebx, 0x5
    int 0x80

section .data
    hello: db"Hello World!", 0xA, 0x0
    len  equ $-hello
