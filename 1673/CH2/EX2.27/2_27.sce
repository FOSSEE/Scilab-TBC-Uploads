// example 2.27
//mulller's method
//page 52
clc;clear;close;
deff ('y=f(x)','y=x^3-x-1');
x0=0,x1=1,x2=2;// initial values
n=1;c=0;
printf(' successive iterations     \tx0\t    x1\t    x2\t      f(x0)\t    f(x1)\t  f(x2)\n')
while n==1
    c=c+1;
y0=f(x0),y1=f(x1),y2=f(x2);
h2=x2-x1,h1=x1-x0;
d2=f(x2)-f(x1),d1=f(x1)-f(x0);
printf('                            \t%f\t  %f\t  %f\t  %f\t  %f\t  %f\n',x0,x1,x2,f(x0),f(x1),f(x2));
A=(d2/h2-d1/h1)/(h1+h2);
B=d2/h2+A*h2;;
S=sqrt(B^2-4*A*f(x2));
x3=x2-(2*f(x2))/(B+S);
E=abs((x3-x2)/x2)*100;
if E<0.003 then
    break;
else 
    if c==1 then
  x2=x3;
end
if c==2 then
    x1=x2;
    x2=x3;
end
if c==3 then
    x0=x1;
    x1=x2;
    x2=x3;
 end
 if c==3 then
     c=0;
 end
end
end
printf('the required root is : %0.4f',x3)
