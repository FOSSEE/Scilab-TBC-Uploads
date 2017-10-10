clear
clc
//Example 10.4 FLOW RATE IN A PIPE (CASE 2)
g=9.81; //[m/s^2]
L=1000; //[m]
D=0.20; //diameter[m]
A=%pi*D^2/4 //area[m^2]
v=10^-6; //viscosity[m^2/s]
hf=12.2; //[m]
P=D^(3/2)*sqrt(2*g*hf/L)/v
ks=0.12; //[mm]
//Relative roughness
Rr=ks/D
//From Moody diagram for P and Rr
f=0.019; //friction factor
//Darcy-Weisbach equation
V=sqrt(hf*2*g*(D/L)/f) //[m/s]
//Discharge
Q=V*A //[m^3/s]
printf("\nThe flow rate of water through the pipe = %.2f m^3/s.\n",Q)