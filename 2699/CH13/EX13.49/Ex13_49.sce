//EX13_49 Pg-26
clc
clear
printf('for decimal number = -56 the binary equivalent is ')
x=56;
y=dec2bin(x)
printf("0%s",y)
z=bitcmp(x,7)//1's complement=-56
printf('\n the 1''s complement is ')
z1=dec2bin(z)
printf("%s",z1)
z=z+1;//2's complement
printf('\n the 2''s complement ')
z2=dec2bin(z)
printf("%s",z2)
printf('\n\n for decimal number = -107 the binary equivalent is ')
x=107;
y=dec2bin(x)
printf("0%s",y)
z=bitcmp(x,8)//1's complement=-56
printf('\n the 1''s complement is ')
z1=dec2bin(z)
printf("%s",z1)
z=z+1;//2's complement
printf('\n the 2''s complement ')
z2=dec2bin(z)
printf("%s",z2)
