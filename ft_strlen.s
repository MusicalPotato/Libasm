section .text
	global _ft_strlen

_ft_strlen:
	mov rbx, 0
count:
	mov cl, [rdi]
	cmp cl, 0
	jne plus
	mov rax, rbx
	ret
plus:
	inc rdi
	inc rbx
	jmp count