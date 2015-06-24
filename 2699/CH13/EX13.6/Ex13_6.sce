//EX13_6 PG-13.5
clc
clear
disp("decimal from 0 to 9 in radix 5 ")
for i=0:1:9;
 a=i/5;
 b=modulo(i,5);
 printf("     %d=%d%d\n",i,a,b);//conversion from decimal to radix 5
 end
