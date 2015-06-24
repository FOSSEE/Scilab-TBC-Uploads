//EX13_41 Pg-23
clc
clear
printf("16''s complement (A8C)_16 is : ")
x=['A8C'];
y=hex2dec(x);//hexadecimal to decimal conversion//
z=bitcmp(y,12);//one's complement of the number//
z=z+1;
z2=dec2hex(z)//16's complement of the number//
printf("%s",z2)
