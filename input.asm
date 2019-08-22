section .text
    global _start
_start:
    mov edx, 12
    mov ecx, name
    mov ebx, 2
    mov eax, 3
    int 0x80

    mov edx, 12
    mov ecx, name
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section .data
    name db '',0xA

