//Exa:3.13
clc;
clear;
close;
V_dc=220;//in volts
V_a=250;//average load voltage (in volts)
R=10;//in ohms
alpha=1-(V_dc/V_a);
I=V_a/R;
disp(I,'Average Load Current (in amperes)=')
disp(alpha,'Firing Angle (in degrees)=')