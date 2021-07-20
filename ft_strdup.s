section .text

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_strcpy

_ft_strdup:
			push rdi				; save rdi
			call _ft_strlen			;
			inc	rax					; + 1 for \0
			mov	rdi, rax			; prep to malloc
			call _malloc			;
			test rax, rax			; check if malloc failed
			jz	fail_ex				; if so go to fail exit
			mov rdi, rax			; prep to ft_strcpy
			pop rsi					; take back dest pointer and prep to ft_strcpy
			call _ft_strcpy			; 
fail_ex:
			ret						;
