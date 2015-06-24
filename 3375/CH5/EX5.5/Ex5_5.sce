//Example 5.5
//Velocity Boundary Layer
//Page No. 294
clc;clear;close;

U=2;         //in m/s
L=0.1;           //in m
x=0.05;         //in m
y=0.000225;            //in m
rho=983.1;          //in kg/m^3
f=0.629;       //refer book table 5.1;
mu=0.4748*10^-6;    //m^2/s
Re=(U*x)/mu;
d1=x*5/(Re)^(1/2);
n=y*(U/(mu*x))^(1/2);
u=U*f;
Re_L=U*L/mu;
Cf=1.328/Re_L^(1/2);
F=Cf*rho*U*U*L/2;
printf('\nThickness of velocity boundary layer at x = 5cm = %f m\nFluid Velocity at y = 0.0225cm = %f m/s\nDrag = %f N\n\n',d1,u,F);
