//Example 5.9
//Mass Flow Rate
//Page No. 298
clc;clear;close;

L=1;         //in m
b=0.3;          //in m
U=30;             //in m/s
d1=0.0024;         //in m
rho=1.23;          //in kg/m^3
m_ab=rho*U*b*d1/2;
Rx=-1*rho*U*U*b*d1/6;
Rx=-1*Rx;
printf('\nMass flow rate across surface ab = %f kg/s\nThe force required to hold the plate in position is = %f N\n\n',m_ab,Rx);
printf('\n\n\nNote: Computational errors in book');
