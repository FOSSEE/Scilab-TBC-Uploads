//example 2.16
//newton-raphson method
//page 40
clc;clear;close
deff('y=f(x)','y=x*sin(x)+cos(x)');
deff('y1=f1(x)','y1=x*cos(x)');//first derivation of the function
x0=%pi;// initial value
d=0.0001;
c=0;n=1;
printf('successive iterations \tx0\t        f(x0)\t        f1(x0)\n');
while n==1
    x2=x0
    x1=x0-(f(x0)/f1(x0));
    x0=x1;
printf('                      \t%f\t%f\t%f\n',x2,f(x1),f1(x1))
c=c+1;
if abs(f(x0))<d then
break;
end
end
printf('the root of %i iteration is:%f',c,x0);
