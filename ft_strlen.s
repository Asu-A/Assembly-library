section .text

global _ft_strlen

_ft_strlen:
			xor rax, rax			; rax = 0
again:
			mov bl, byte [rdi + rax]; take next byte from the string
			cmp bl, 0				; is it the end of the strind?
			je	ex_ret				; if so go to exit
			inc	rax					; else rax++
			jmp again				; and go to loop again
ex_ret:
			ret						; return rax
