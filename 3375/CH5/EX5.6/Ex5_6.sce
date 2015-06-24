//Example 5.6
//Velocity Boundary Layer
//Page No. 295
clc;clear;close;

U=2;               //in m/s
L=0.1;               //in m
x=0.05;             //in m
y=0.000225;            //in m
rho=983.1;             //kg/m^3
mu=0.4748*10^-6;         //m^2/s
Re=(U*x)/mu;
d1=x*4.64/(Re)^(1/2);
n=y/d1;
u=U*(3*n-n^3)/2;
Tw=(0.323275*rho*U^2)/sqrt(Re);
Re_L=U*L/mu;
Cf=1.292/Re_L^(1/2);
F=Cf*rho*U*U*L/2;
printf('\nThickness of velocity boundary layer at x = 5cm = %f m\nFluid Velocity at y = 0.0225cm = %f m/s\nDrag = %f N\n\n',d1,u,F);
