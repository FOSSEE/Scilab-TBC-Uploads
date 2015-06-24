

//example 5.2
//page 194
clc; funcprot(0);
//initialisation of variable
rho=1.94;
V1=80;
g=32.2;
Q=8;
z2=3;//elevation
pi=3.14;
theta=60/180*pi;
V2=sqroot(2*g*(V1^2/2/g-3));
Rx=rho*Q*(V1-V2*cos(theta));
Ry=rho*Q*(V2*sin(theta));
R=sqroot(Rx^2+Ry^2);
disp(R,"resultant force on vane (lbs)");
th=atan(Ry/Rx);
disp(th*180/pi,"angle at which force is applying")
clear
