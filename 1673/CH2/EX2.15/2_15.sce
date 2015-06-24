//example 2.15
//newton-raphson method
//page 39
clc;clear;close
deff('y=f(x)','y=x^3-2*x-5');
deff('y1=f1(x)','y1=3*x^2-2');// first derivative of the function
x0=2;// initial value
d=0.0001;
c=0;n=1;
printf('successive iterations \tx0\t        f(x0)\t        f1(x0)\n');
while n==1
    x2=x0;
    x1=x0-(f(x0)/f1(x0));
    x0=x1;
printf('                      \t%f\t%f\t%f\n',x2,f(x1),f1(x1))
c=c+1;
if abs(f(x0))<d then
break;
end
end
printf('the root of %i iteration is:%f',c,x0);
