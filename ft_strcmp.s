section .text
	global _ft_strcmp

_ft_strcmp:
loop:
	mov cl, [rdi]
    mov dl, [rsi]
	cmp cl, dl
	jne end
	cmp cl, 0
	je end
	inc rdi
	inc rsi
	jmp loop
end:
	movzx rax, cl
	movzx rbx, dl
	sub rax, rbx
	ret
