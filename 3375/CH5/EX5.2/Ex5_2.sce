//Example 5.2
//Maximum Bending Moment
//Page No. 290
clc;clear;close;

u=1.5;         //in m/s
L=6;            //in m
A=.15;           //in m
rho=1000;        //in kg/m^3
mu=1.02*10^-6;       //in m^2/s
Cd=2.1;
Re=(u*A)/mu;
F=Cd*rho*u*u*L*A/2;
Mo=F*L/2;
I=(A^4)/12;
sigma=Mo*(A/2)/I;
sigma=sigma/1000;      //conversion to kN/m^2 from N/m^2
printf('\nDrag = %f N\nBending Moment at the Base = %f Nm\nBending Stress at the Bottom = %f kN/m^2\n\n',F,Mo,sigma);
