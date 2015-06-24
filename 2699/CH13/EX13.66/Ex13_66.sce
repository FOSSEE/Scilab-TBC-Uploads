//EX13_66 Pg-36
clc
clear
printf("subtraction of two hexadecimal numbers using 15''s complement")
printf("\n    (69B)_16<(C14)_16")
printf("\n\n    (69B)_16-(C14)_16 =")
x=['69B']
y=['C14']
//hexadecimal to decimal conversion
x=hex2dec(x)
y=hex2dec(y)
y1=bitcmp(y,10)//15's complement of the larger  number
z=x+y1;
// in subtraction of larger number from smaller number
//no carry is present so we should take 15's complement of the result
z1=bitcmp(z,12)
a=dec2hex(z1)
printf("  -%s",a)//the final result is negative
