
//4*x^3*y/(6*x*y^3)
clear;
clc;
close;
d=int32([4,6]);
m=4/gcd(d);
n=6/gcd(d);
x=poly(0,'x');y=poly(0,'y');
p1=x^3;p2=x;p=p1/p2;
q1=y;q2=y^3;q=q1/q2;
//val=m/n*p*q 
disp('val=')
mprintf("%i/%i*x^2/y^2",m,n)

