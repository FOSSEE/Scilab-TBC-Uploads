
//(8x^3)/(5a^2y) *(3a)/(4x^2)
clear;
clc;
close;
x=poly(0,'x');y=poly(0,'y');a=poly(0,'a');
p1=x^3;p2=x^2;p=p1/p2;
q=1/y;
r1=a;r2=a^2;r=r1/r2;
num=8*3/(5*4);
//val=num*p*q*r
disp('val=')
mprintf("%f*x/(a*y)",num)
