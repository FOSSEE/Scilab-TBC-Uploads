//EX13_67 Pg-37
clc
clear
printf(" 16''s complement of (A8C)_16 =")
x=['A8C']
y=hex2dec(x)
z=bitcmp(y,11)
z1=z+1
a=dec2hex(z1)
printf(" %s\n",a)
