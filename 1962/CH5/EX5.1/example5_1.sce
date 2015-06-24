

//example 5.1
//page 192
clc; funcprot(0);
//initialisation of variable
Q=0.3;//flow rate
D1=0.3;
D2=0.15;
pi=3.14;
rho=1000;
P1=175;
P2=160;
A1=pi*D1^2/4;
A2=pi*D2^2/4;
V1=Q/A1;
V2=Q/A2;
theta=45/180*pi;
F1=P1*A1*1000;
F2=P2*A2*1000;
Rx=F1-F2*cos(theta)-rho*Q*(V2*cos(theta)-V1);
Ry=F2*sin(theta)+rho*Q*(V2*sin(theta));
R=sqroot(Rx^2+Ry^2);
disp(R,"resultant force(N)");
th=atan(Ry/Rx);
disp(th*180/pi,"angle at which force is applying")
clear
