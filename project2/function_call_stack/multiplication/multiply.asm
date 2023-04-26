; Filename starter.asm

; GLOBALS
global IMUL ;Declared for linker this is declaring method (entry point)

; TEXT SECTION
section	.text
IMUL:	                                ; linker entry point
    push ebp                            ; base address of the function's frame pushed onto stack
    mov ebp, esp                        ; place address of stack pointer at top of function frame
    mov eax, [esp+8]                    ; fetch first argument
    IMUL eax, [esp+12]                  ; fetch second argument
    IMUL eax, [esp+16]                  ; fetch third argument
    mov esp, ebp                        ; place address of function frame on stack pointer
    pop ebp                             ; base address of the function's frame popped off of stack
    ret                                 ; return
