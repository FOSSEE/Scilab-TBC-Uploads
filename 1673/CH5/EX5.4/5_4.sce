//cubic spline
//example 5.4
//page 189
clc;clear;close;
x=[0 %pi/2 %pi]
y=[0 1 0]
h=x(2)-x(1)
M0=0;M2=0;
M1=((6*(y(1)-2*y(2)+y(3))/h^2)-M0-M2)/4;
X=%pi/6;
s1=(((x(2)-X)^3)*(M0/6)+((X-x(1))^3)*M1/6+(y(1)-(h^2)*M0/6)*(x(2)-X)+(y(2)-(h^2)*M1/6)*(X-x(1)))/h;
x=[0 %pi/4 %pi/2 3*%pi/4 %pi];
y=[0 1.414 1 1.414];
M0=0,M4=0;
A=[4 1 0;1 4 1;0 1 4];//calculating value of M1 M2 M3 by matrix method
C=[-4.029;-5.699;-4.029];
B=A^-1*C
printf('M0=%f\t   M1=%f\t   M2=%f\t   M3=%f\t   M4=%f\t\n\n',M0,B(1,1),B(2,1),B(3,1),M4);
h=%pi/4;
X=%pi/6;
s1=[-0.12408*X^3+0.7836*X]/h;
printf(' the value of sin(pi/6) is:%f',s1)