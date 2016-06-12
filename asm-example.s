  .section .rodata
  .LC0:
  .string "result = %d\n"
  .text
  .globl  func
func:
.LFB0:
  pushq %rbp
  movq %rsp, %rbp
  subq $64, %rsp
  movq %rdi, -24(%rbp)
  movq %rsi, -32(%rbp)
  movq %rdx, -40(%rbp)
  movq %rcx, -48(%rbp)
  movq %r8, -56(%rbp)
  movq %r9, -64(%rbp)
  movq -24(%rbp), %rax
  movl %eax, %edx
  movq -32(%rbp), %rax
  addl %eax, %edx
  movq -40(%rbp), %rax
  addl %eax, %edx
  movq -48(%rbp), %rax
  addl %eax, %edx
  movq -56(%rbp), %rax
  addl %eax, %edx
  movq -64(%rbp), %rax
  addl %edx, %eax
  movl %eax, -4(%rbp)
  movl -4(%rbp), %eax
  movl %eax, %esi
  movl $.LC0, %edi
  movl $0, %eax
  call printf
  movl $10, %eax
  leave
  ret

  .globl main
main:
.LFB1:
  pushq %rbp
  movq %rsp, %rbp
  movl $6, %r9d
  movl $5, %r8d
  movl $4, %ecx
  movl $3, %edx
  movl $2, %esi
  movl $1, %edi
  call func
  movl $0, %eax
  popq %rbp
  ret
