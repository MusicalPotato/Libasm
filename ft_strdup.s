extern _malloc
extern _ft_strlen
extern _ft_strcpy

section .text
	global _ft_strdup

_ft_strdup:
	push rdi
	call _ft_strlen
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je failmalloc
	mov rdi, rax
	pop rsi
	call _ft_strcpy
	ret
failmalloc:
	pop rdi
	ret