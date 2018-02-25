# Rendering a sprite to the screen

Rendering a sprite into screen requires following things to be done.

TODO: binary switches demo with three sprites

## Calculate memory allocations

TBD

## Enable sprites

Hex value 01 enables Sprite 1
Hex value 02 enables Sprite 2
Hex value 03 enables Sprite 1 and 2

Explanation for this can be found when examining the values in binary.

Binary value 0000001 enables Sprite 1
Binary value 0000010 enables Sprite 2
Binary value 0000011 enables Sprite 1 and 2

We can think these values as switches that are on. When 0000011 both sprite 1 and sprite 2 switches are on. If we would have the hex value of 07 then the binary value would be 0000111 which would mean that now Sprite 1, Sprite 2 and Sprite 3 are all on.

$d015 is the memory location for these switches.

## Write sprites into memory

TBD
## Learned

Instruction | Description
--------------|------------------
lda #%0000001 | Binary assignment

Memory address | Description
--------------|------------------
$d015 | Sprite enable register. Memory location of the sprites visibility