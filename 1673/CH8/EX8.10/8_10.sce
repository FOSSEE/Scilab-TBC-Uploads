//example 8.10
//initial value problems
//page 315
clc;clear;close;
deff('y=f1(x,y)','y=3*x+y/2');
y(1)=1;
h=0.1;c=0;
for i=1:2
    y(i+1)=y(i)+h*f1(c,y(i))
    printf ('\ny(%g)=%g\n',c,y(i))
    c=c+0.1;
end
