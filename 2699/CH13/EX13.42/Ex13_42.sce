//EX13_42 Pg-23
clc
clear
x=['1010'];
y=['0011'];
//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y)
z=x+y;
a=dec2bin(z)//decimal to binary conversion//
printf('the addition of given numbers is: ')
printf("%s",a)
