//example 2.18
//page 90
clc; funcprot(0);
pi=3.14;
y0=1;
g=32.2;
r0=0.5;//radius
Gamma=62.4;
omega=2*pi*150/60;
//part1
h0=y0+omega^2*r0^2/4/g;
disp(h0,"height of parabloid(ft)=");
//part2
Pmax=Gamma*h0;
disp(Pmax,"maximum pressure(lbs/ft^2)=");
//part3
z=y0-omega^2*r0^2/4/g;
r=0.2;
y=-0.27;
P=Gamma*omega^2/2/g*r^2-Gamma*y;
disp(P,"Pressure(lbs/ft^2)=");
clear
