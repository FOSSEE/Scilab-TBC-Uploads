//EX13_34 Pg-20
clc
clear
printf("1''s complement of 10111001 = ")
x=['10111001'];
y=bin2dec(x)
z=dec2bin(bitcmp(y,8))
printf("0%s",z)
