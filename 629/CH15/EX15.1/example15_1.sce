clear
clc
//Example 15.1 CONDITIONS FOR LAMINAR OPEN-CHANNEL FLOW
V=0.1; //velocity [ft/s]
B=10; //width[ft]
y=6; //depth[ft]
Rh=B*y/(B+2*y) //[ft]
v=1.22*10^-5; //[ft^2]
Re=V*Rh/v //Reynolds number
//Re>500, flow is turbulent
//Depth, ymax for Re=500
Re1=500;
Rh1=Re1*v/V //[ft]
ymax=B*Rh1/(B-2*Rh1) //[ft]
printf("\nThe maximum depth assured of having laminar flow = %.3f ft.\n",ymax)