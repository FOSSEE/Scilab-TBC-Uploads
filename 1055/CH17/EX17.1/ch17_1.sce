// To determine the acceleration . Also determine the change in torque angle and r.p.mat the end of 15 cycles
clear
clc;
H=9;
G=20;// machine Rating(MVA)
KE=H*G;
mprintf("(a)K.E stored in the rotor =%.0f MJ\n",KE);
Pi=25000*.735;
PG=15000;
Pa=(Pi-PG)/(1000);
f=50;
M=G*H/(%pi*f);
a=Pa/M;
mprintf("(b) The accelerating power =%.3f MW\n",Pa);
mprintf("Acceleration =%.3f rad/sec_2\n",a);
t=15/50;
del=sqrt(5.89)*t/2;
Del=del^2;
k=2.425*sqrt(Del)*60/4*%pi;
speed=1504.2;
mprintf("(c)Rotor speed at the end of 15 cycles =%.1f r.p.m",speed);
