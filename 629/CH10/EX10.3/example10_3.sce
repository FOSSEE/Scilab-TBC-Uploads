clear
clc
//Example 10.3 HEAD LOSS IN A PIPE (CASE 1)
g=9.81; //[m/s^2]
L=1000; //[m]
D=0.20; //diameter[m]
A=%pi*D^2/4 //area[m^2]
Q=0.05 ;//[m^3/s]
v=10^-6; //[m^2/s]
V=Q/A //[m/s]
//Reynolds number
Re=V*D/v
ks=0.12*10^-3; //[m]
//Relative roughness
Rr=ks/D
//From Moody diagram for Re and Rr,
f=0.019;
//Darcy-Weisbach equation
hf=f*(L/D)*(V^2/(2*g)) //[m]
printf("\nThe head loss per kilometer length of the pipe = %.1f m.\n",hf)