//Exa:3.5
clc;
clear;
close;
alpha=30;//in degrees
V=230;//in volts
R=2;//in ohms
V_avg=2*V*sqrt(2)*cosd(alpha)/%pi;//in volts
I_avg=V_avg/R;//in amperes
disp(V_avg,'(a) Average Load Voltage (in Volts)=');
disp(I_avg,'(b) Average Load Current (in Amperes)=')
I_rms=I_avg;//in amperes (as ripple free)
P=V_avg*I_avg;//in watts
Q=2*V*sqrt(2)*I_avg*sind(alpha)/%pi;// in VAR
pf=cosd(atand(Q/P));
disp(pf,'(c) Input Power Factor (lagging)=')