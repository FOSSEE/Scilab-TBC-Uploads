//Exa:3.14
clc;
clear;
close;
V_dc=125;//in volts
V_a=200;//average output voltage (in volts)
T_on=1*10^-3;//in seconds
alpha=V_a/(V_a+V_dc);//duty cycle
f=alpha/T_on;
disp(f,'Frequency Of Switching pulse (in hertz)=')