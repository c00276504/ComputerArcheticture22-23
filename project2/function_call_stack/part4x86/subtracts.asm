; Filename starter.asm

; GLOBALS
global sub ;Declared for linker this is declaring method (entry point)

; TEXT SECTION
section	.text
sub:	                                ; linker entry point
    push ebp                            ; base address of the function's frame pushed onto stack
    mov ebp, esp                        ; place address of stack pointer at top of function frame
    mov eax, [esp+8]                    ; fetch first argument
    sub eax, [esp+12]                   ; fetch second argument
    mov esp, ebp                        ; place address of function frame on stack pointer
    pop ebp                             ; base address of the function's frame popped off of stack
    ret                                 ; return
