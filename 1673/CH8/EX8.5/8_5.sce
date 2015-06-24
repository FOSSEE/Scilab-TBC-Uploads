//example 8.5
//euler's method
//page 308
clc;clear;close;
deff('z=f(y)','z=-y')
y(1)=1;//value at 0
h=0.01;c=0.01;
for i=1:4
    y(i+1)=y(i)+h*f(y(i))
    printf ('\ny(%g)=%g\n',c,y(i+1));
    c=c+0.01;
end
