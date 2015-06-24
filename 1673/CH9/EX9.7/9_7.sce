//bender-schimdt's formula and crank-nicolson formula
//example 9.7
//page 363
//bender -schimdt's formula
clc;clear;close;
deff('y=f(x,t)','y=exp(-%pi^2*t)*sin(%pi*x)');
u=[f(0,0) f(0.2,0) f(0.4,0) f(0.6,0) f(0.8,0) f(1,0)];
u11=u(3)/2;u12=(u(2)+u(4))/2;u13=u12;u14=u11;
printf(' u11=%f\t  u12=%f\t  u13=%f\t  u14=%f\n\n',u11,u12,u13,u14)
u21=u12/2;u22=(u12+u14)/2;u23=u22;u24=u21;
printf(' u21=%f\t  u22=%f\t  u23=%f\t  u24=%f\n\n',u21,u22,u23,u24)
printf(' the error in the solution is: %f\n\n',abs(u22-f(0.6,0.04)))
//crank-nicolson formula
//by putting i=1,2,3,4 we obtain four equation
A=[4 -1 0 0 ;-1 4 -1 0;0 -1 4 -1;0 0 -1 4];
C=[0.9510;1.5388;1.5388;0.9510];
X=A^-1*C;
printf( ' u11=%f\t  u21=%f\t  u31=%f\t  u41=%f\t\n\n',X(1,1),X(2,1),X(3,1),X(4,1))
printf(' the error in the solution is: %f\n\n',abs(X(2,1)-f(0.6,0.04)))