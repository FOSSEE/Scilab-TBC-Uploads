//Example 5.7
//Pressure Change
//Page No. 296
clc;clear;close;

U0=30;         //in m/s
h=80;           //in mm
d1=1;           //in mm
rho=1.23;        //in kg/m^3
dp=(rho*U0*U0/2)*(((h^2)/(h-2*d1)^2)^2-1);
printf('\nPressure Change = %f N/m^2\n\n',dp);
