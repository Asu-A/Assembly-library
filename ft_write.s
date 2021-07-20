section .text

global _ft_write

extern ___error

_ft_write:
			mov	rax, 0x2000004	; write
			syscall				;
			jc	exit_err		; if CF on go to exit error
			ret					; return
exit_err:						;	
			mov r9, rax			; save rax value 
			call ___error		; put pointer to errno to rax
			mov	[rax], r9		; put value to errno
			mov	rax, -1			; -1 to rax
			ret					; return
