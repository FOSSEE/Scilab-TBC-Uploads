//EX13_55 Pg-31
clc
clear
printf("7''s complement of (612)_8 = ")
x=['612']
y=oct2dec(x)
z=bitcmp(y,8)
a=dec2oct(z)
printf("%s\n",a)
