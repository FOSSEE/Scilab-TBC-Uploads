//Example 2.6
//Pressure Drop
//Page No. 56
clc;clear;close;

D=50;       //in mm
D=D/1000; //converted mm to m
L=6;   //in m
rho=995.6;      //in kg/m^3
g=9.81;        //in m/s^-2
mu=79.77*10^-5;     //in Pa-s

//case 1
u=10;       //in m/s^-1
Re=(rho*u*D)/mu;
f=0.316/Re^(1/4);
dp(1)=(f*L*u^2*rho)/(2*D);


//case 2
u=20;            //in m/s^-1
Re=(rho*u*D)/mu;
f=0.316/Re^(1/4);
dp(2)=(f*L*u^2*rho)/(2*D);

u1=[10 20];     //in m
h_l=[dp(1)/(rho*g) dp(2)/(rho*g)];
f=interpln([h_l;u1],20)*%pi*D^2/4;
f=f*1000;           //conversion to lit/s
printf('\nFlow Rate = %g lit/s\n\nNote: Slight calculation errors in the book',f);
