//EX13_37 Pg-21
clc
clear
printf("2''s complement 10100011 is : ")
x=['10100011'];
y=bin2dec(x);//binary to decimal conversion//
z=bitcmp(y,8);//one's complement of the number//
z=z+1;
z2=dec2bin(z)//2's complement of the number//
printf("0%s",z2)
