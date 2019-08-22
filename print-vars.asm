section .text
    global _start
_start:
    mov edx, name_len
    mov ecx, name
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, roll_len
    mov ecx, roll
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, branch_len
    mov ecx, branch
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80
    
section .data
    name db 'Anupam Saikia',0xA
    name_len equ $-name

    roll db 'GAU-C-17/064',0xA
    roll_len equ $-roll

    branch db 'CSE',0xA
    branch_len equ $-branch

