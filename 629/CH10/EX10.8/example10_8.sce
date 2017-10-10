clear
clc
//Example 10.8 PRESSURE DROP IN AN HVAC DUCT
g=9.81; //[m/s^2]
rho=1.2; //[kg/m^3]
L=50; //[m]
b=0.6; //[m]
h=0.3; //[m]
A=b*h //area of cross section [m^2]
Q=2.5; //[m^3/s]
V=Q/A //[m/s]
v=15.1*10^-6; //[m^2/s]
//Hydraulic perimeter
Dh=4*A/(2*(b+h)) //[m]
//Reynolds number
Re=V*Dh/v
//Thus, flow is turbulent
ks=0.000046;
//Relative roughness
Rr=ks/Dh
//From Moody diagram for Re and Rr,
f=0.015;
//Darcy-Weisbach equation
hf=f*(L/Dh)*(V^2/(2*g)) //[m]
//1 inch H20=249.7 Pa
delp=rho*g*hf/249.7 //pressure drop in inch H2O
printf("\nThe pressure drop in inches of water per 50 m of duct = %.3f inch H2O.\n",delp)