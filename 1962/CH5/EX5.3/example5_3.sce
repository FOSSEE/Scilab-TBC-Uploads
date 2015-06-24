
//example 5.3
//page 194
clc; funcprot(0);
//initialisation of variable
Q1=0.5;//flow 
Q2=0.3;//flow
Q3=0.2;//flow
D1=0.45;//diameter
D2=0.3;//diameter
D3=0.15;//diameter
pi=3.14;
g=9.81;
P1=60000;//pressure
th1=30/180*pi;//theta1
th2=20/180*pi//theta2
Gamma=9810;
A1=pi*D1^2/4;
A2=pi*D2^2/4;
A3=pi*D3^2/4;
V1=Q1/A1;
V2=Q2/A2;
V3=Q3/A3;
P2=P1+V1^2/2/g*Gamma-V2^2/2/g*Gamma;
P3=P1+V1^2/2/g*Gamma-V3^2/2/g*Gamma;
F1=P1*A1;
F2=P2*A2;
F3=P3*A3;
Rx=F3*cos(th2)-F2*cos(th1)+1000*(Q2*V2*cos(th1)-Q3*V3*cos(th2));
Ry=F3*sin(th2)-F2*sin(th1)+1000*(Q2*V2*sin(th1)+Q3*V3*sin(th2)-Q1*V1)-F1;
R=sqroot(Rx^2+Ry^2);
disp(R,"resultant force(N)");
clear

