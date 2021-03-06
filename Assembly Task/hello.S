@
@ Assembler program print out "Hello World" using the Pico SDK.
@
@ R0 - first parameter to printf
@ R1 - second parameter to printer
@ R7 - index counter
@

.thumb_func		                  @ necessary because sdk uses BLX
.global main	                          @ provide program starting address to the linker

main:
	@ complete the program HERE       @ initialize counter to 0
	BL	stdio_init_all	          @ initialize uart or usb
loop:
	LDR	R0, =helloworld	          @ load address of helloworld string
	@ complete the code HERE          (increment counter)
	@ complete the code HERE          (move the counter to second parameter)
	BL	printf		          @ Call pico_printf
	B	loop		          @ loop forever
		
.data
	    .align   4	                  @ necessary alignment
helloworld: .asciz   "Hello World %d\n"
