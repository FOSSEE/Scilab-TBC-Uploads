clear
clc
//Example 6.14 POWER DELIVERED BY A FRANCIS TURBINE
D=1; //[m]
l=0.04; //[m]
Q=0.5; //discharge[m^3/s]
rho=1000; //[kg/m^3]
m=rho*Q //mass flow rate[kg/s]
//Radial velocity
Vr=Q/(%pi*D*l) //[m/s]
theta=70; //degrees
//Tangential velocity
Vt=Vr*tand(theta) //[m/s]
T=m*(D/2)*Vt //Torque[N.m]
w=1200*2*%pi/60 //angular speed (rad/s)
P=T*w/10^3 //Power[kW]
printf("\n The power produced by the turbine = %.f kW.\n",P)