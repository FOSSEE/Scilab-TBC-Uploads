
clear;
clc;
close;
x=poly(0,'x');
p1=1/(x-1);
p2=1/(x+2);
y=p1-p2;
y1=1/16;
a=numer(y)*denom(y1);
b=numer(y1)*denom(y);
r=a-b;
mprintf("the solution is \n");
format(6)
x=roots(r)
