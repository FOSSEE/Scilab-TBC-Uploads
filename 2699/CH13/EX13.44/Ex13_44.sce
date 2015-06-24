//EX13_44 Pg-24
clc
clear
x=['1011'];
y=['0101'];
//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y)
z=x-y;
a=dec2bin(z)//decimal to binary conversion//
printf('the subtraction of given numbers is: ')
printf("0%s",a)
