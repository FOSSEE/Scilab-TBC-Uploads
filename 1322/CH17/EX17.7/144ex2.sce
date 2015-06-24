
clear;
clc;
close;
x=poly(0,'x');
p1=1/(x-1);
p2=2/3;
p3=2/(x-3);
p=(p1+p2-p3);
p=3*numer(p);//As p=0 and to remove fractions, multiply by 3
a=2;b=-11;c=3;//from equation we get these values
//using the formula - solution of quadratic equation ax^2+bx+c=0
mprintf("the solution is")
format(6)
x=(-b+sqrt(b^2-4*a*c))/(2*a)
mprintf("or \n")
x=(-b-sqrt(b^2-4*a*c))/(2*a)
