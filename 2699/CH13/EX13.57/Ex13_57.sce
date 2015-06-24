//EX13_57 Pg-32
clc
clear
printf("subtraction of two octal numbers using 7''s complement")
printf("\n  (153)_8<(243)_8")
printf("\n\n Therefore (153)_8-(243)_8 =")
x=['153']
y=['243']
//octal to decimal conversion//
x=oct2dec(x)
y=oct2dec(y)
y1=bitcmp(y,9)//7's complement of the larger  number
z=x+y1;
//in the subtraction of larger number from smaller number
//no carry is present so we should take 7's complement of the result
z1=bitcmp(z,8)
a=dec2oct(z1)
printf("  -%s",a)//the final result is negative
