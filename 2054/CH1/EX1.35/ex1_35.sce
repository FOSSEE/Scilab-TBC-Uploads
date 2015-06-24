//Exa:1.35
clc;
clear;
close;
V=220;//in volts
P_o=400*9.81*2.5;//(in watts)
Eff=0.85;//efficiency of motor
Eff_h=0.8
P_in=P_o/(Eff*Eff_h);//in watts
I=P_in/V;//in amperes
disp(I,'Current Drawn (in amperes)=');
P_out=P_o*Eff*Eff_h;//in watts
R=V^2/P_out;
disp(R,'Value of additional resistance (in ohms)=')