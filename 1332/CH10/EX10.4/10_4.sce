//Example 10.4
//Newton Method
//Page no. 317
clc;clear;close;

deff('y=f1(x1,x2)','y=x1+3*log10(x1)-x2^2')
deff('y=f2(x1,x2)','y=2*x1^2-x1*x2-5*x1+1')
deff('y=f11(x1,x2)','y=1+3/(log(10)*x1)')
deff('y=f12(x1,x2)','y=-2*x2')
deff('y=f21(x1,x2)','y=4*x1-x2-5')
deff('y=f22(x1,x2)','y=-x1')
x=[3.4;2.2];
disp(x,'x(0) = ')
for i=1:3
    fx=[f1(x(1),x(2));f2(x(1),x(2))]
    printf('\n fx(%i) = \n',i)
    disp(fx)
    A=[f11(x(1),x(2)),f12(x(1),x(2));f21(x(1),x(2)),f22(x(1),x(2)),]
    disp(A,'A = ')
    A_1=inv(A)
    disp(A_1,'Inverse of A = ')
    x=x-A_1*fx
    printf('\n x(%i) = \n',i)
    disp(x)
end