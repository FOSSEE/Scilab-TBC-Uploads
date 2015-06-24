//EX13_11 PG-13.8
clc
clear
printf("Binary equivalent of 3FD hexadecimal is :")
a=['3FD']
x=hex2dec(a)
y=dec2bin(x)
printf("00%s",y)
