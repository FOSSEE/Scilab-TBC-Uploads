clear
clc
//Example 10.2 HEAD LOSS FOR LAMINAR FLOW
g=9.81; //[m/s^2]
L=100; //[m]
D=0.15; //diameter[m]
A=%pi*D^2/4 //area[m^2]
Q=0.02 ;//[m^3/s]
v=6*10^-4; //[m^2/s]
V=Q/A //[m/s]
//Reynolds number
Re=V*D/v
//Re<2000, the flow is laminar.
//Head loss(laminar flow)
hf=32*v*L*V/(g*D^2) //[m]
printf("\nThe head loss per 100m length of the pipe = %.2f m.\n",hf)