//EX13_64 Pg-35
clc
clear
printf(" 15''s complement of (A9B)_16 =")
x=['A9B']
y=hex2dec(x)
z=bitcmp(y,11)
a=dec2hex(z)
printf(" %s\n",a)
