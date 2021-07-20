segment .text

global _ft_strcpy

_ft_strcpy:
			xor rcx, rcx			; rcx = 0
again:
			mov bl, byte [rsi + rcx]; take sym from src
			mov byte [rdi + rcx], bl; put that sym to dis
			cmp	bl, 0				; is it the end of the string?
			je	ex_ret				; if so exit
			inc	rcx					; else rcx++
			jmp again				; and go to loop
ex_ret:
            mov rax,rdi             ;
			ret						;
