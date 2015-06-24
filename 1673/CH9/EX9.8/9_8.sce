//heat equation using crank-nicolson method
//example 9.8
//page 364
clc;clear;close;
U=0.01878;
//h=1/2;l=1/8,i=1;
u01=0;u21=1/8;
u11=(u21+u01)/6;
printf(' u11=%f\n\n',u11);
printf('error is %f\n\n',abs(u11-U));
//h=1/4,l=1/8,i=1,2,3
A=[-3 -1 0;1 -3 1;0 1 -3];
C=[0;0;-1/8];
X=A^-1*C;
printf(' u12=%f\n\n',X(2,1));
printf('error is %f\n\n',abs(X(2,1)-U));
