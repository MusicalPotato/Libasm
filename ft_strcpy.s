section .text
	global _ft_strcpy

_ft_strcpy:
	mov rax, rdi
loop:
	mov cl, [rsi]
	mov [rdi], cl
	cmp cl, 0
	jne plus
	ret
plus:
	inc rdi
	inc rsi
	jmp loop