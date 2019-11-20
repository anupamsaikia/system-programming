section .bss
  num resd 4

section .text
  global _start

_start:
  mov eax, '0'
  mov ecx, 0xa
l1:
  push ecx
  push eax

  ;print the current value of num
  mov [num], eax
  mov edx, 4
  mov ecx, num
  mov ebx, 1
  mov eax, 4
  int 80h

  pop eax
  sub eax, '0'
  inc eax
  add eax, '0'

  pop ecx
  loop l1

  mov eax, 1
  int 80h
