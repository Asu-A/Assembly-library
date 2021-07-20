segment .text

global _ft_strcmp


_ft_strcmp:
			xor	rcx, rcx				; rcx = 0
			xor rax, rax				; rax = 0
again:
			mov al, byte [rdi + rcx]	; get next byte from s1
			cmp	al, byte [rsi + rcx]	; check strings elements
			je	ch_endl					; if s1 = s2 go to check
			jmp ex_ret					; else exit
ch_endl:
			cmp	al, 0					; is it the end of the string?
			je	ex_ret					; if so exit
			inc	rcx						; rcx++
			jmp again					; else go to loop
ex_ret:
			sub al, byte [rsi + rcx]	; sym1 - sym2
			jc	ex_neg					;
			ret							;
ex_neg:
			movsx rax, al				; move result to rax with saveing sign
			ret							; return
