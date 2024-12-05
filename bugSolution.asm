section .data
    array dw 10, 20, 30, 40 ; Example array
    array_size equ ($-array)/2 ; Size of the array in words
section .bss
section .text
    global _start
_start:
    ; ... other code ...
    mov ecx, some_index ; Get index from elsewhere
    cmp ecx, array_size ; Check if index is within bounds
    jge out_of_bounds ; Jump if out of bounds
    mov ebx, array ; Base address of the array
    mov eax, [ebx + ecx*2] ; Access array element
    ; ... use eax ...
    jmp end

out_of_bounds:
    ; Handle out-of-bounds error (e.g., print an error message and exit)
    ; ...

end:
    ; ... rest of the code ...
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80