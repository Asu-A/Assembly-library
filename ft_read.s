section .text

global _ft_read

extern ___error

_ft_read:
			mov rax, 0x2000003	; read
			syscall				;
			jc	exit_err		; if CF on go to exit error
			ret					; return
exit_err:
			mov r9, rax			; save value
			call ___error		; get pionter to errno
			mov	[rax], r9		; put value to errno
			mov rax, -1			; -1 for return
			ret					;
