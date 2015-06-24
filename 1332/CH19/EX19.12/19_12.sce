//Example 19.12
//Hyperbolic Partial Differential Equations
//Page no. 673
clc;clear;close;
deff('y=f(x)','y=12*x')
Ua(1)=0.25;
Ua(2)=0.75
A=[1,-2;1,2];
x1=inv(A)*Ua;
printf('Xb = %g   and   Tb = %g',x1(1),x1(2))
A=[2,-1;2,1];
B=[-7.5;-8.5];
x2=inv(A)*B;
printf('\n\n Pb = %g   and   Qb = %g',x2(1),x2(2))
x1(1)=x1(1)-Ua(1)
du=x1'*x2
printf('\n\n dU = %g',du)
Ub=f(Ua(1))+du;
printf('\n\n Modified Ub = %g',Ub)