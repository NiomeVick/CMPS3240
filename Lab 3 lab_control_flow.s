
/* Niome Vick
   Lab 3 - CMPS 3240
   "lab_control_flow.s"
   Employee/Cust data printing */
   
    .file   "lab_control_flow.c"
    .text
    .globl  user_response
    .bss
    .align 4
    .type   user_response, @object
    .size   user_response, 4
user_response:
    .zero   4
    .section    .rodata
    .align 8
.LC0:
    .string "==============================="
    .align 8
.LC1:
    .string "Welcome, here are your options:"
.LC2:
    .string "1. View employee data"
.LC3:
    .string "2. View customer data"
.LC4:
    .string "10. Quit"
.LC5:
    .string "Enter your response now:"
.LC6:
    .string "%d"
    .text
    .globl  main
    .type   main, @function
.LC7:
    .string "\nEmployee Data:\nJenny Jenny Phone: 661-867-5309\n"
.LC8:
    .string "\nCustomer Data:\nDat WunGai - SumYung Company LTD.\n"
main:
.LFB0:
    .cfi_startproc
    pushq   %rbp
    .cfi_def_cfa_offset 16
    .cfi_offset 6, -16
    movq    %rsp, %rbp
    .cfi_def_cfa_register 6

.L2:
    leaq    .LC0(%rip), %rdi
    call    puts@PLT
    leaq    .LC1(%rip), %rdi
    call    puts@PLT
    leaq    .LC2(%rip), %rdi
    call    puts@PLT
    leaq    .LC3(%rip), %rdi
    call    puts@PLT
    leaq    .LC4(%rip), %rdi
    call    puts@PLT
    leaq    .LC0(%rip), %rdi
    call    puts@PLT
    leaq    .LC5(%rip), %rdi
    call    puts@PLT
    leaq    user_response(%rip), %rsi
    leaq    .LC6(%rip), %rdi
    movl    $0, %eax
    call    __isoc99_scanf@PLT
    movl user_response(%rip), %eax
    cmpl    $1, %eax
    je empData
    cmpl    $2, %eax
    je custData
    cmpl    $10, %eax
    movl    $1, %eax
    popq    %rbp
    .cfi_def_cfa 7, 8
    ret
    .cfi_endproc
empData:
    leaq    .LC7(%rip), %rdi
    call    puts@PLT
    jmp     .L2
custData:
    leaq    .LC8(%rip), %rdi
    call    puts@PLT
    jmp     .L2

.LFE0:
    .size   main, .-main
    .ident  "GCC: (Debian 8.3.0-6) 8.3.0"
    .section    .note.GNU-stack,"",@progbits
