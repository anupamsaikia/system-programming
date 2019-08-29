section .text
    global _start

section .bss
    name resb 50
    roll resb 15
    branch resb 3
    institute resb 50

section .data
    msg_name db 'Enter your name: ',0h
    msg_name_len equ $-msg_name

    msg_roll db 'Enter your roll number: ',0h
    msg_roll_len equ $-msg_roll

    msg_branch db 'Enter your branch: ',0h
    msg_branch_len equ $-msg_branch

    msg_institute db 'Enter your institute name: ',0h
    msg_institute_len equ $-msg_institute


_start:
;getting name from user
    mov edx, msg_name_len
    mov ecx, msg_name
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 50
    mov ecx, name
    mov ebx, 2
    mov eax, 3
    int 0x80

;getting roll number from user
    mov edx, msg_roll_len
    mov ecx, msg_roll
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 15
    mov ecx, roll
    mov ebx, 2
    mov eax, 3
    int 0x80

;getting branch from user
    mov edx, msg_branch_len
    mov ecx, msg_branch
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 3
    mov ecx, branch
    mov ebx, 2
    mov eax, 3
    int 0x80

;getting institute from user
    mov edx, msg_institute_len
    mov ecx, msg_institute
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 50
    mov ecx, institute
    mov ebx, 2
    mov eax, 3
    int 0x80

;print all the data
    mov edx, 50
    mov ecx, name
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 15
    mov ecx, roll
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 3
    mov ecx, branch
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 50
    mov ecx, institute
    mov ebx, 1
    mov eax, 4
    int 0x80



;exit
    mov eax, 1
    int 0x80
