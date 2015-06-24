//EX13_38 Pg-22
clc
clear
printf("7''s complement of(612)_8 is : ")
x=['612'];
y=oct2dec(x)
z=dec2oct(bitcmp(y,8))
printf("%s",z)
