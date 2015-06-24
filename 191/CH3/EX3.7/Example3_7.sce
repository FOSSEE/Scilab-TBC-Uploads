//Non-Linear Equation
clc;
clear;
close();
funcprot(0);
format('v',9);
i = 1;
deff('[func1]=f(x,y)','func1=x^2+y^2-4');
deff('[func2]=g(x,y)','func2=2*x-y^2');
deff('[difffx]=fx(x)','difffx=2*x');
deff('[difffy]=fy(y)','difffy=2*y');
deff('[diffgx]=gx(x)','diffgx=2');
deff('[diffgy]=gy(y)','diffgy=-2*y');
x1(i)=1;y1(i)=1;
J = [fx(x1(i)),fy(y1(i));gx(x1(i)),gy(y1(i))];
n=[x1(i);y1(i)]-inv(J)*[f(x1(i),y1(i));g(x1(i),y1(i))];
x2(i)=n(1,1);y2(i)=n(2,1);
N(1)=i-1;
while (abs(x2(i)-x1(i))>0.5*10^-7) | (abs(y2(i)-y1(i))>0.5*10^-7)
    i=i+1;
    N(i)=i-1;
    x1(i)=x2(i-1);
    y1(i)=y2(i-1);
    J = [fx(x1(i)),fy(y1(i));gx(x1(i)),gy(y1(i))];
    n=[x1(i);y1(i)]-inv(J)*[f(x1(i),y1(i));g(x1(i),y1(i))];
    x2(i)=n(1,1);y2(i)=n(2,1);
end
N(i+1)=i;
x1(i+1) = x2(i);
y1(i+1) = y2(i);
n = [N x1 y1];
disp(n,'The value of n x and y :')