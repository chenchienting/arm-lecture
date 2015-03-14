	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
    movs r1, #4294967295
    movs r2, #1

.loop:
    add r3, r1, r2
    movs r1, r2
    movs r2, r3
    subs r0, r0, #1
    bge .loop

    movs r0, r3
    bx lr

	.size fibonacci, .-fibonacci
	.end
