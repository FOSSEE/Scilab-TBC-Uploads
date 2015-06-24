
//example 12.2
//page 443
clc; funcprot(0);
//initialisation of variable
Q=0.4;
pi=3.14;
u2=31.4;//velocity
Gamma=9.81;//unit weight
g=9.81;
omega=2*pi*1500/60;//radial velocity
r2=0.2//m
b2=0.03//m
//part1
V2r=Q/2/pi/r2/b2;//radial velocity
V2t=u2-V2r*0.577;
v2=V2r/0.866;//speed
V2=sqroot(V2r^2+V2t^2);
disp(V2,"relative velocity (m/s):");
//part2
H=u2*V2t/g;
disp(H,"head of water (m)");
//part3
P=Gamma*Q*H;
disp(P,"power required(kW)");
clear
