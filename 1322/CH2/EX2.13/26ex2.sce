
//6*a*x^4*2*y^3/(14*x^2*y^2*3*a^4)
clear;
clc;
close;
x=poly(0,'x');y=poly(0,'y');a=poly(0,'a');
num=6*2/(14*3);
p1=x^4;p2=x^2;p=p1/p2;
q1=y^3;q2=y^2;q=q1/q2;
r1=a;r2=a^4;r=r1/r2;
//val=num*p*q*r
disp('val=')
mprintf("%f*x^2*y/a^3",num)
