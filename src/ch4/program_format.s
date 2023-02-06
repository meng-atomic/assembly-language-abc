; simple example demonstrating basic program format and layout

section .data
; ---
; define constants
EXIT_SUCCESS    equ     0       ; successful operation
SYS_EXIT        equ     60      ; call code for terminate

; ---
; byte(8-bit) variable declarations
bVar1           db      17
bVar2           db      9
bResult         db      0

; ---
; word(16-bit) variable declarations
wVar1           dw      17
wVar2           dw      9
wResult         dw      0

; ---
; double-world(32-bit) variable declarations
dVar1           dd      17000000
dVar2           dd      9000000
dResult         dd      0

; ---
; quadword(64-bit) variale declarations
qVar1           dq      1700000000
qVar2           dq      90000000
qResult         dq      0

; **************
; Code Section
section .text
global _start
_start:
; erforms a series of very basic addition operations
; to demonstrate basic program format
; Result = Var1 + Var2
; byte example
mov al, byte [bVar1]
add al, byte [bVar2]
mov byte [bResult], al

; word example
mov ax, word [wVar1]
add ax, word [wVar2]
mov word [wResult], ax

; double-word example
mov eax, dword [dVar1]
add eax, dword [dVar2]
mov dword [dResult], eax

; quadword example
mov rax, qword [qVar1]
add rax, qword [qVar2]
mov qword [qResult], rax

; done, terminate program
last:
    mov rax, SYS_EXIT       ; call code for exit
    mov rdi, EXIT_SUCCESS   ; exit program with success
    syscall
