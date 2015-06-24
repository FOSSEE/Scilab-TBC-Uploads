//example 2.20
//generalized newton-raphson method
//page 42
clc;clear;close;
deff('y=f(x)','y=x^3-x^2-x+1');
deff('y1=f1(x)','y1=3*x^2-2*x-1');
deff('y2=f2(x)','y2=6*x-2');
x0=0.8;// initial value to finf double root
n=1;
printf('successive iterations   \tx0\t    x1\t       x2\n')
while n==1
x1=x0-(f(x0)/f1(x0));
x2=x0-(f1(x0)/f2(x0));
if abs(x1-x2)<0.000000001 then
    x0=(x1+x2)/2;
    break;
else
    x0=(x1+x2)/2;
end
printf('                          %f\t%f\t%f\n',x0,x1,x2);
end
printf('\n \nthe double root is at: %f',x0 );
