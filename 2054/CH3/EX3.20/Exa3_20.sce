//Exa:3.20
clc;
clear;
close;
E_g=-163.53;//in volts
I_a=40;//in amperes
R_a=0.2;//in ohms
V=220;//in volts
V_a=E_g+(I_a*R_a);//in volts
alpha_a=acosd(V_a*%pi/(2*V*sqrt(2)));
disp(alpha_a,'Firing Angle (in degrees)=');
P=V_a*I_a*(-1);
disp(P/1000,'Power Supplied (in Kilo-Watts)=')