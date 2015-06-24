// Example 8.1.b;//OPTICAL POWER coupled in fiber
clc;
clear;
close;
B0=100;//in W per cm2 sr
rs=0.002;// radiating radius in cm
a=0.0015;//core radius in cm
NA=0.3;//numerical aperture
Pc=(B0*a^2*%pi^2*NA^2)*10^3;//POWER COUPLED IN FIBER in mili watt
disp(Pc,"POWER COUPLED IN FIBER in mili watt")
