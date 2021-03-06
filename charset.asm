;
;	ZX Diagnostics - fixing ZX Spectrums in the 21st Century
;	https://github.com/brendanalford/zx-diagnostics
;
;	Original code by Dylan Smith
;	Modifications and 128K support by Brendan Alford
;
;	This code is free software; you can redistribute it and/or
;	modify it under the terms of the GNU Lesser General Public
;	License as published by the Free Software Foundation;
;	version 2.1 of the License.
;
;	This code is distributed in the hope that it will be useful,
;	but WITHOUT ANY WARRANTY; without even the implied warranty of
;	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;	Lesser General Public License for more details.
;
;	charset.asm
;

;
;	THE 'ZX SPECTRUM CHARACTER SET'
;

charset

; $20 - Character: ' '          CHR$(32)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000

; $21 - Character: '!'          CHR$(33)

        DEFB    %00000000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00000000
        DEFB    %00100000
        DEFB    %00000000

; $22 - Character: '"'          CHR$(34)

        DEFB    %00000000
        DEFB    %00101000
        DEFB    %00101000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000

; $23 - Character: '#'          CHR$(35)

        DEFB    %00000000
        DEFB    %00101000
        DEFB    %01111100
        DEFB    %00101000
        DEFB    %00101000
        DEFB    %01111100
        DEFB    %00101000
        DEFB    %00000000

; $24 - Character: '$'          CHR$(36)

        DEFB    %00000000
        DEFB    %00010000
        DEFB    %01111100
        DEFB    %01010000
        DEFB    %01111100
        DEFB    %00010100
        DEFB    %01111100
        DEFB    %00010000

; $25 - Character: '%'          CHR$(37)

        DEFB    %00000000
        DEFB    %01100100
        DEFB    %01101000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00101100
        DEFB    %01001100
        DEFB    %00000000

; $26 - Character: '&'          CHR$(38)

        DEFB    %00000000
        DEFB    %00100000
        DEFB    %01010000
        DEFB    %00100000
        DEFB    %01010100
        DEFB    %10001000
        DEFB    %01110100
        DEFB    %00000000

; $27 - Character: '''          CHR$(39)

        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00100000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000

; $28 - Character: '('          CHR$(40)

        DEFB    %00000000
        DEFB    %00001000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00001000
        DEFB    %00000000

; $29 - Character: ')'          CHR$(41)

        DEFB    %00000000
        DEFB    %00100000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00100000
        DEFB    %00000000

; $2A - Character: '*'          CHR$(42)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00101000
        DEFB    %00010000
        DEFB    %01111100
        DEFB    %00010000
        DEFB    %00101000
        DEFB    %00000000

; $2B - Character: '+'          CHR$(43)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %01111100
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00000000

; $2C - Character: ','          CHR$(44)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00100000

; $2D - Character: '-'          CHR$(45)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01111100
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000

; $2E - Character: '.'          CHR$(46)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00110000
        DEFB    %00110000
        DEFB    %00000000

; $2F - Character: '/'          CHR$(47)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000100
        DEFB    %00001000
        DEFB    %00010000
        DEFB    %00100000
        DEFB    %01000000
        DEFB    %00000000

; $30 - Character: '0'          CHR$(48)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01001100
        DEFB    %01010100
        DEFB    %01010100
        DEFB    %01100100
        DEFB    %00111000
        DEFB    %00000000

; $31 - Character: '1'          CHR$(49)

        DEFB    %00000000
        DEFB    %00110000
        DEFB    %01010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %01111100
        DEFB    %00000000

; $32 - Character: '2'          CHR$(50)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %00000100
        DEFB    %00111000
        DEFB    %01000000
        DEFB    %01111100
        DEFB    %00000000

; $33 - Character: '3'          CHR$(51)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %00011000
        DEFB    %00000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $34 - Character: '4'          CHR$(52)

        DEFB    %00000000
        DEFB    %00001000
        DEFB    %00011000
        DEFB    %00101000
        DEFB    %01001000
        DEFB    %01111100
        DEFB    %00001000
        DEFB    %00000000

; $35 - Character: '5'          CHR$(53)

        DEFB    %00000000
        DEFB    %01111100
        DEFB    %01000000
        DEFB    %01111000
        DEFB    %00000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $36 - Character: '6'          CHR$(54)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000000
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $37 - Character: '7'          CHR$(55)

        DEFB    %00000000
        DEFB    %01111100
        DEFB    %00000100
        DEFB    %00001000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00000000

; $38 - Character: '8'          CHR$(56)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $39 - Character: '9'          CHR$(57)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111100
        DEFB    %00000100
        DEFB    %00111000
        DEFB    %00000000

; $3A - Character: ':'          CHR$(58)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00000000

; $3B - Character: ';'          CHR$(59)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00100000

; $3C - Character: '<'          CHR$(60)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00001000
        DEFB    %00010000
        DEFB    %00100000
        DEFB    %00010000
        DEFB    %00001000
        DEFB    %00000000

; $3D - Character: '='          CHR$(61)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01111100
        DEFB    %00000000
        DEFB    %01111100
        DEFB    %00000000
        DEFB    %00000000

; $3E - Character: '>'          CHR$(62)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00001000
        DEFB    %00000100
        DEFB    %00001000
        DEFB    %00010000
        DEFB    %00000000

; $3F - Character: '?'          CHR$(63)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %00001000
        DEFB    %00010000
        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00000000

; $40 - Character: '@'          CHR$(64)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01001100
        DEFB    %01011100
        DEFB    %01011100
        DEFB    %01000000
        DEFB    %00111000
        DEFB    %00000000

; $41 - Character: 'A'          CHR$(65)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01111100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00000000

; $42 - Character: 'B'          CHR$(66)

        DEFB    %00000000
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01111000
        DEFB    %00000000

; $43 - Character: 'C'          CHR$(67)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $44 - Character: 'D'          CHR$(68)

        DEFB    %00000000
        DEFB    %01110000
        DEFB    %01001000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01001000
        DEFB    %01110000
        DEFB    %00000000

; $45 - Character: 'E'          CHR$(69)

        DEFB    %00000000
        DEFB    %01111100
        DEFB    %01000000
        DEFB    %01111000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01111100
        DEFB    %00000000

; $46 - Character: 'F'          CHR$(70)

        DEFB    %00000000
        DEFB    %01111100
        DEFB    %01000000
        DEFB    %01111000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %00000000

; $47 - Character: 'G'          CHR$(71)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01000000
        DEFB    %01001100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $48 - Character: 'H'          CHR$(72)

        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01111100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00000000

; $49 - Character: 'I'          CHR$(73)

        DEFB    %00000000
        DEFB    %01111100
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %01111100
        DEFB    %00000000

; $4A - Character: 'J'          CHR$(74)

        DEFB    %00000000
        DEFB    %00000100
        DEFB    %00000100
        DEFB    %00000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $4B - Character: 'K'          CHR$(75)

        DEFB    %00000000
        DEFB    %01001000
        DEFB    %01010000
        DEFB    %01100000
        DEFB    %01010000
        DEFB    %01001000
        DEFB    %01000100
        DEFB    %00000000

; $4C - Character: 'L'          CHR$(76)

        DEFB    %00000000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01111100
        DEFB    %00000000

; $4D - Character: 'M'          CHR$(77)

        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01101100
        DEFB    %01010100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00000000

; $4E - Character: 'N'          CHR$(78)

        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01100100
        DEFB    %01010100
        DEFB    %01010100
        DEFB    %01001100
        DEFB    %01000100
        DEFB    %00000000

; $4F - Character: 'O'          CHR$(79)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $50 - Character: 'P'          CHR$(80)

        DEFB    %00000000
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01111000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %00000000

; $51 - Character: 'Q'          CHR$(81)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01100100
        DEFB    %01010100
        DEFB    %00111000
        DEFB    %00000000

; $52 - Character: 'R'          CHR$(82)

        DEFB    %00000000
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01111000
        DEFB    %01001000
        DEFB    %01000100
        DEFB    %00000000

; $53 - Character: 'S'          CHR$(83)

        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000000
        DEFB    %00111000
        DEFB    %00000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $54 - Character: 'T'          CHR$(84)

        DEFB    %00000000
        DEFB    %01111100
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00000000

; $55 - Character: 'U'          CHR$(85)

        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $56 - Character: 'V'          CHR$(86)

        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00101000
        DEFB    %00010000
        DEFB    %00000000

; $57 - Character: 'W'          CHR$(87)

        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01010100
        DEFB    %00101000
        DEFB    %00000000

; $58 - Character: 'X'          CHR$(88)

        DEFB    %00000000
        DEFB    %01000100
        DEFB    %00101000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00101000
        DEFB    %01000100
        DEFB    %00000000

; $59 - Character: 'Y'          CHR$(89)

        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00101000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00000000

; $5A - Character: 'Z'          CHR$(90)

        DEFB    %00000000
        DEFB    %01111100
        DEFB    %00001000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00100000
        DEFB    %01111100
        DEFB    %00000000

; $5B - Character: '['          CHR$(91)

        DEFB    %00000000
        DEFB    %00011100
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00011100
        DEFB    %00000000

; $5C - Character: '\'          CHR$(92)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01000000
        DEFB    %00100000
        DEFB    %00010000
        DEFB    %00001000
        DEFB    %00000100
        DEFB    %00000000

; $5D - Character: ']'          CHR$(93)

        DEFB    %00000000
        DEFB    %01110000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %01110000
        DEFB    %00000000

; $5E - Character: '^'          CHR$(94)

        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00111000
        DEFB    %01010100
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00000000

; $5F - Character: '_'          CHR$(95)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %11111100

; $60 - Character: ' � '        CHR$(96)

        DEFB    %00000000
        DEFB    %00011000
        DEFB    %00100100
        DEFB    %01110000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %01111100
        DEFB    %00000000

; $61 - Character: 'a'          CHR$(97)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00111000
        DEFB    %00000100
        DEFB    %00111100
        DEFB    %01000100
        DEFB    %00111100
        DEFB    %00000000

; $62 - Character: 'b'          CHR$(98)

        DEFB    %00000000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01111000
        DEFB    %00000000

; $63 - Character: 'c'          CHR$(99)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00011100
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00011100
        DEFB    %00000000

; $64 - Character: 'd'          CHR$(100)

        DEFB    %00000000
        DEFB    %00000100
        DEFB    %00000100
        DEFB    %00111100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111100
        DEFB    %00000000

; $65 - Character: 'e'          CHR$(101)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01111000
        DEFB    %01000000
        DEFB    %00111100
        DEFB    %00000000

; $66 - Character: 'f'          CHR$(102)

        DEFB    %00000000
        DEFB    %00011000
        DEFB    %00100000
        DEFB    %00110000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00000000

; $67 - Character: 'g'          CHR$(103)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00111100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111100
        DEFB    %00000100
        DEFB    %00111000

; $68 - Character: 'h'          CHR$(104)

        DEFB    %00000000
        DEFB    %01000000
        DEFB    %01000000
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00000000

; $69 - Character: 'i'          CHR$(105)

        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00000000
        DEFB    %00110000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00111000
        DEFB    %00000000

; $6A - Character: 'j'          CHR$(106)

        DEFB    %00000000
        DEFB    %00000100
        DEFB    %00000000
        DEFB    %00000100
        DEFB    %00000100
        DEFB    %00000100
        DEFB    %00100100
        DEFB    %00011000

; $6B - Character: 'k'          CHR$(107)

        DEFB    %00000000
        DEFB    %00100000
        DEFB    %00101000
        DEFB    %00110000
        DEFB    %00110000
        DEFB    %00101000
        DEFB    %00100100
        DEFB    %00000000

; $6C - Character: 'l'          CHR$(108)

        DEFB    %00000000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00011000
        DEFB    %00000000

; $6D - Character: 'm'          CHR$(109)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01101000
        DEFB    %01010100
        DEFB    %01010100
        DEFB    %01010100
        DEFB    %01010100
        DEFB    %00000000

; $6E - Character: 'n'          CHR$(110)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00000000

; $6F - Character: 'o'          CHR$(111)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $70 - Character: 'p'          CHR$(112)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01111000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01111000
        DEFB    %01000000
        DEFB    %01000000

; $71 - Character: 'q'          CHR$(113)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00111100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111100
        DEFB    %00000100
        DEFB    %00000100

; $72 - Character: 'r'          CHR$(114)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00011100
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00000000

; $73 - Character: 's'          CHR$(115)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00111000
        DEFB    %01000000
        DEFB    %00111000
        DEFB    %00000100
        DEFB    %01111000
        DEFB    %00000000

; $74 - Character: 't'          CHR$(116)

        DEFB    %00000000
        DEFB    %00100000
        DEFB    %01110000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00100000
        DEFB    %00011000
        DEFB    %00000000

; $75 - Character: 'u'          CHR$(117)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111000
        DEFB    %00000000

; $76 - Character: 'v'          CHR$(118)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00101000
        DEFB    %00101000
        DEFB    %00010000
        DEFB    %00000000

; $77 - Character: 'w'          CHR$(119)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01010100
        DEFB    %01010100
        DEFB    %01010100
        DEFB    %00101000
        DEFB    %00000000

; $78 - Character: 'x'          CHR$(120)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01000100
        DEFB    %00101000
        DEFB    %00010000
        DEFB    %00101000
        DEFB    %01000100
        DEFB    %00000000

; $79 - Character: 'y'          CHR$(121)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %01000100
        DEFB    %00111100
        DEFB    %00000100
        DEFB    %00111000

; $7A - Character: 'z'          CHR$(122)

        DEFB    %00000000
        DEFB    %00000000
        DEFB    %01111100
        DEFB    %00001000
        DEFB    %00010000
        DEFB    %00100000
        DEFB    %01111100
        DEFB    %00000000

; $7B - Character: '{'          CHR$(123)

        DEFB    %00000000
        DEFB    %00011100
        DEFB    %00010000
        DEFB    %01100000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00011100
        DEFB    %00000000

; $7C - Character: '|'          CHR$(124)

        DEFB    %00000000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %00000000

; $7D - Character: '}'          CHR$(125)

        DEFB    %00000000
        DEFB    %01110000
        DEFB    %00010000
        DEFB    %00001100
        DEFB    %00010000
        DEFB    %00010000
        DEFB    %01110000
        DEFB    %00000000

; $7E - Character: '~'          CHR$(126)

        DEFB    %00000000
        DEFB    %00010100
        DEFB    %00101000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000
        DEFB    %00000000

; $7F - Character: ' � '        CHR$(127)

        DEFB    %00110000
        DEFB    %01001000
        DEFB    %10110100
        DEFB    %11000100
        DEFB    %11000100
        DEFB    %10110100
        DEFB    %01001000
        DEFB    %00110000

; $80 - Spectrum stripe

        DEFB    %00000001
        DEFB    %00000011
        DEFB    %00000111
        DEFB    %00001111
        DEFB    %00011111
        DEFB    %00111111
        DEFB    %01111111
        DEFB    %11111111


; $81 - $8A Characters '0' to '9' in wide font

        DEFB    %00000000
        DEFB    %00111100
        DEFB    %01000110
        DEFB    %01001010
        DEFB	%01010010
        DEFB	%01100010
        DEFB    %00111100
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %00011000
        DEFB    %00101000
        DEFB    %00001000
        DEFB	%00001000
        DEFB	%00001000
        DEFB    %00111110
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %00111100
        DEFB    %01000010
        DEFB    %00000010
        DEFB    %00111100
        DEFB    %01000000
        DEFB    %01111110
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %00111100
        DEFB    %01000010
        DEFB    %00001100
        DEFB	%00000010
        DEFB	%01000010
        DEFB    %00111100
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %00001000
        DEFB    %00011000
        DEFB    %00101000
        DEFB	%01001000
        DEFB	%01111110
        DEFB    %00001000
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %01111110
        DEFB    %01000000
        DEFB    %01111100
        DEFB	%00000010
        DEFB	%01000010
        DEFB    %00111100
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %00111100
        DEFB    %01000000
        DEFB    %01111100
        DEFB	%01000010
        DEFB	%01000010
        DEFB    %00111100
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %01111110
        DEFB    %00000010
        DEFB    %00000100
        DEFB	%00001000
        DEFB	%00010000
        DEFB    %00010000
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %00111100
        DEFB    %01000010
        DEFB    %00111100
        DEFB	%01000010
        DEFB	%01000010
        DEFB    %00111100
        DEFB    %00000000

        DEFB    %00000000
        DEFB    %00111100
        DEFB    %01000010
        DEFB    %01000010
        DEFB	%00111110
        DEFB	%01000010
        DEFB    %00111100
        DEFB    %00000000

; $8B - left filled curve

        DEFB	%11111100
        DEFB	%11110000
        DEFB	%11100000
        DEFB	%11000000
        DEFB	%10000000
        DEFB	%10000000
        DEFB	%00000000
        DEFB	%00000000

; $8C - right filled curve

        DEFB	%00111111
        DEFB	%00001111
        DEFB	%00000111
        DEFB	%00000011
        DEFB	%00000001
        DEFB	%00000001
        DEFB	%00000000
        DEFB	%00000000

; $8D - left open curve

        DEFB	%00000011
        DEFB	%00001100
        DEFB	%00010000
        DEFB	%00100000
        DEFB	%01000000
        DEFB	%01000000
        DEFB	%10000000
        DEFB	%10000000

; $8E - right open curve

        DEFB	%11000000
        DEFB	%00110000
        DEFB	%00001000
        DEFB	%00000100
        DEFB	%00000010
        DEFB	%00000010
        DEFB	%00000001
        DEFB	%00000001

; $8f - Top line

        DEFB	%11111111
        DEFB	%00000000
        DEFB	%00000000
        DEFB	%00000000
        DEFB	%00000000
        DEFB	%00000000
        DEFB	%00000000
        DEFB	%00000000

; $90 - left bottom filled curve

        DEFB	%10000000
        DEFB	%10000000
        DEFB	%11000000
        DEFB	%11000000
        DEFB	%11100000
        DEFB	%11110000
        DEFB	%11111100
        DEFB	%11111111

; $91 - right bottom filled curve

        DEFB	%00000001
        DEFB	%00000001
        DEFB	%00000011
        DEFB	%00000011
        DEFB	%00000111
        DEFB	%00001111
        DEFB	%00111111
        DEFB	%11111111

; $92 - Full clock face

        DEFB	%00111100
        DEFB	%01111110
        DEFB	%11111111
        DEFB	%11111111
        DEFB	%11111111
        DEFB	%11111111
        DEFB	%01111110
        DEFB	%00111100

 ; $93 - Three quarter clock face

        DEFB	%00111100
        DEFB	%01001110
        DEFB	%10001111
        DEFB	%10001111
        DEFB	%11111111
        DEFB	%11111111
        DEFB	%01111110
        DEFB	%00111100         
                 
 ; $94 - Half clock face

        DEFB	%00111100
        DEFB	%01001110
        DEFB	%10001111
        DEFB	%10001111
        DEFB	%10001111
        DEFB	%10001111
        DEFB	%01001110
        DEFB	%00111100
            
 ; $95 - Quarter clock face

        DEFB	%00111100
        DEFB	%01001110
        DEFB	%10001111
        DEFB	%10001111
        DEFB	%10000001
        DEFB	%10000001
        DEFB	%01000010
        DEFB	%00111100
              
 ; $96 - Empty clock face

        DEFB	%00111100
        DEFB	%01000010
        DEFB	%10000001
        DEFB	%10000001
        DEFB	%10000001
        DEFB	%10000001
        DEFB	%01000010
        DEFB	%00111100
            
