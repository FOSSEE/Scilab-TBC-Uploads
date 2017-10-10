//Eg-4.13
//pg-173

clear
clc

clc;
clear;


x0=0.5;
x1=0.5;
x2=0.5;

for i=1:6
Xold=[x0;x1;x2];
A=[2*cos(x0)*(sin(x0)-1)+2*sin(x0)*(cos(x1)-cos(x0)) 2*cos(x1)*(sin(x1)-1)+2*sin(x1)*(cos(x0)-cos(x1)) -2*(x2+0.25);cos(x0)*(x2+.25)+2*x2*(cos(x1)*cos(x0)+sin(x0))  -2*x2*sin(x0)*sin(x1) sin(x0)+2*(cos(x1)*sin(x0)-cos(x0));-2*x2*sin(x0)*sin(x1) (x2+.25)*cos(x1)+2*x2*(cos(x0)*cos(x1)+1.5*sin(x1)) sin(x1)+2*(sin(x1)*cos(x0)-1.5*cos(x1))   ];
b=-[(1-sin(x0))^2+(1.5-sin(x1))^2+(cos(x0)-cos(x1))^2-(x2+0.25)^2;(x2+0.25)*sin(x0)+2*x2*(cos(x1)*sin(x0)-cos(x0));(x2+0.25)*sin(x1)+2*x2*(cos(x0)*sin(x1)-1.5*cos(x1))];
Xnew=Xold+inv(A)*b;
x0=Xnew(1);
x1=Xnew(2);
x2=Xnew(3);
end

disp(Xnew)