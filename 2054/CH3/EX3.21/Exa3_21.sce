//Exa:3.21
clc;
clear;
close;
E_b=100;//in volts
I_a=25;//in amperes
R=0.2;//(R_a+R_se) in ohms
V=220;//in volts
f=200;//in hertz
V_a=E_b+(I_a*R);//in volts
T_on=V_a/(V*f);
disp(T_on*1000,' Pulse Width (in mili-seconds)')