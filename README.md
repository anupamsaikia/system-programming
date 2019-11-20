# system-programming
This repo contains codes written in system programming lab (CS571) at CIT Kokrajhar





    AAA − ASCII Adjust After Addition

    AAS − ASCII Adjust After Subtraction

    AAM − ASCII Adjust After Multiplication

    AAD − ASCII Adjust Before Division

    DAA − Decimal Adjust After Addition

    DAS − decimal Adjust After Subtraction

```
%macro write_string 2 
  mov   eax, 4
  mov   ebx, 1
  mov   ecx, %1
  mov   edx, %2
  int   80h
%endmacro
```