//Exa:3.15
clc;
clear;
close;
alpha=0.25;//duty cycle
V=400;//in volts
L=0.5;//in henery
I=10;//ripple current (in amperes)
V_a=alpha*V;//in volts
T_on=L*I/(V-V_a);//in seconds
T=T_on/alpha;//in seconds
f=1/T;
disp(f,'Frequency (in hertzs)=')