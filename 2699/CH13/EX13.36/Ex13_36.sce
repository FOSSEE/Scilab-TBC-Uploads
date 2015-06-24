//EX13_36 Pg-21
clc
clear
printf("  2''s complement 1001 is :")
x=['1001'];
y=bin2dec(x);//binary to decimal conversion//
z=bitcmp(y,4);//one's complement of the number//
z=z+1;
z2=dec2bin(z)//2's complement of the number//
printf(" 0%s",z2)
