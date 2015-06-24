//EX13_34 Pg-20
clc
clear
printf("  1''s complement of 1101 = ")
x=['1101'];
y=bin2dec(x)
z=dec2bin(bitcmp(y,4))
printf("00%s",z)
