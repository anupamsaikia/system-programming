section .text
    global _start

section .bss
    sum resb 1
    difference resb 1

section .data
    add_msg db 'The result of addition is: ',0h
    add_msg_len equ $-add_msg
    sub_msg db 'The result of subtraction is: ',0h
    sub_msg_len equ $-sub_msg


_start:
    ;add 5 and 60 and store result in sum
    mov eax, 60
    mov ebx, 5
    add eax, ebx
    mov [sum], eax

    ;subtract 5 from 70 and store result in difference
    mov eax, 70
    mov ebx, 5
    sub eax, ebx
    mov [difference], eax

    ;sub eax, '0' ascii to dcimal
    ;add eax, '0' ;decimal to ascii


    ;print results
    mov edx, add_msg_len
    mov ecx, add_msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 1
    mov ecx, sum
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, sub_msg_len
    mov ecx, sub_msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 1
    mov ecx, difference
    mov ebx, 1
    mov eax, 4
    int 0x80



;exit
    mov eax, 1
    int 0x80
