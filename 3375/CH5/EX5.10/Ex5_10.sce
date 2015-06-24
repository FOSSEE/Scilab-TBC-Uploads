//Example 5.10
//Mass flow within boundary layer
//Page No. 300
clc;clear;close;

U=2;           //in m/s
x1=0.1;        //in m
x2=0.3;       //in m
rho=1.17;         //in kg/m^3
nu=1.85*10^-5;           //in kg/ms
Re_x1=(rho*U*x1)/nu;
Re_x2=(rho*U*x2)/nu;
d1=4.64*x1/sqrt(Re_x1);
d2=4.64*x2/sqrt(Re_x2);
m=5*rho*U*(d2-d1)/8;
printf('\nMass flow rate = %f kg/s\n\n\n',m);
