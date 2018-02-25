    processor 6502
    org $1000

    lda #$80
    sta $d07f8 ; Memory location of the sprite
    lda #$01
    sta $d015 ; Which sprites are enabled. eg. 01 -> 0000001, 02 -> 0000010, 03 -> 0000011. 01 Sprite 1 enable, 10 Sprite 2 enabled, 11 Sprite 1 and 2 enabled (think in switches)

    lda #$80 ; Decimal value of 128. Location on screen X or Y. Sprite X and Y values are the same and here
    sta $d000 ; Sprite 1, X
    sta $d001 ; Sprite 1, Y

loop:
    jmp loop

    org $2000 ; Load sprite into memory at $2000
    incbin "sprite.spd" ; Include sprite data sheet
