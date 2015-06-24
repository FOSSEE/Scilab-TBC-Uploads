//Example 2.5
//Pressure Drop
//Page No. 56
clc;clear;close;

D=50;    //in mm
D=D/1000; //converted mm to m
u=5;       //in m/s^-1
L=6;    //in m
rho=995.6;     //in kg/m^-3
mu=79.77*10^-5;     //Pa-s
Re=(rho*u*D)/mu;
f=0.316/Re^(1/4);
dp=(f*L*u^2*rho)/(2*D);
m=rho*u*%pi*(D/2)^2;
P=m*dp/rho;
printf('\nPressure Drop = %f N/m^2\nPower Required = %f\n\n\n\nNote : Calculation mistakes in book.\nDifference in answer due to approximation in book',dp,P);
