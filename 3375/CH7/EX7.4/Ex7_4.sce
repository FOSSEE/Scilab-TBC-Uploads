//Example 7.4
//Developed flow of water
//Page No. 431
clc;clear;close;

D=6;          //in mm
D=D/100;      //conversion to m
R=D/2;          
Q=5*10^-3;    //conversion to m^3/s
L=10;            //in m
n=7;            //no unit
rho=1000;        //in kg/m^3
nu=1.02*10^-6;   //in m^2/s
U_av=Q/(%pi*D^2/4);
Re=U_av*D/nu;
f=0.3164/Re^(1/4);
Pg=(f*rho*U_av^2)/(2*D);           //Pressure Gradient
Pd=Pg*L;                          //Pressure Drop over 10m
Tw=Pg*R/2;
u_s=U_av*(n+1)*(2*n+1)/(2*n^2);
ds=(Tw*R^(1/7)/(nu*u_s*1000))^(-7/6);      //Thickness of laminar sublayer
printf('\nFriction Factor = %f \nPressure Drop over 10m = %f N/m^2\nThickness of laminar sublayer = %f m',f,Pd,ds);
printf('\n\n\nNote: Slight computational errors in book')
