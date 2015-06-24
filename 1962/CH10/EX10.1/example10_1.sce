
//example 10.1
//page 363
clc; funcprot(0);
//initialisation of variable
z=0.5//slope
b=3;//breadth
y=2;//height
T=b+2*z*y;//top width
disp(T,"top width(m)=");
A=(b+z*y)*y;//area
disp(A,"area(m^2)=");
P=b+2*y*sqroot(1+z^2);
disp(P,"Perimeter(m)=");
R=A/P;//hydraulic radius
disp(R,"Hydraulic radius(m)=");
D=A/T//hydraulic depth
disp(D,"Hydraulic depth(m)=");
Z=A*D^0.5;
disp(Z,"section factor(m^2.5)=");
clear
