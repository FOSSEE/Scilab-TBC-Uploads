//EX13_62 Pg-35
clc
clear
printf("Addition of two hexadecimal numbers ")
printf("\n\n    (3F8)_16+(5B3)_16 =")
x=['3F8'];
y=['5B3'];
//octal to decimal conversion
x1=hex2dec(x)
y1=hex2dec(y)
z=x1+y1;//addition
a=dec2hex(z)//final result
printf(" %s\n",a)
