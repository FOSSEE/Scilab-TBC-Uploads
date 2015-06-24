//EX13_40 Pg-22
clc
clear
printf("15''s complement (A9B)_16 is :")
x=['A9B'];
y=hex2dec(x);//hexadecimal to decimal conversion//
z=dec2hex(bitcmp(y,11));//15's complement of the number//
printf("%s",z)
