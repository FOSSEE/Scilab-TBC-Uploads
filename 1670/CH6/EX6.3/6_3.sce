//Example 6.3
//Least Square Method
//Page no. 217
clc;close;clear;

x=[1,2,3,4,5,6,7,8];
y=[3,3,4,5,5,6,6,7];n=1;
printf('\t 2\t\t 2\n n\tx\tx\ty\txy\ty\n--------------------------------------------\n')
x1=0;x2=0;x3=0;x4=0;x5=0;x6=0;
for i=1:8
    printf(' %i\t%i\t%i\t%i\t%i\t%i\n',n,x(i),x(i)^2,y(i),x(i)*y(i),y(i)^2)
    x1=x1+n;
    x2=x2+x(i);
    x3=x3+x(i)^2;
    x4=x4+y(i);
    x5=x5+x(i)*y(i);
    x6=x6+y(i)^2;
end
printf('--------------------------------------------\n %i\t%i\t%i\t%i\t%i\t%i\n',x1,x2,x3,x4,x5,x6)
x0=x2/x1;
y0=x4/x1;
A=x3-x1*x0^2;
B=x5-x1*x0*y0;
C=x6-x1*y0^2;
x7=poly(0,'b')
y=x7^2+(A-C)*x7/B-1
b=roots(y)
a=y0-b(2)*x0
x7=poly(0,'x')
disp('is the required least line',a+b(2)*x7,'y = ')