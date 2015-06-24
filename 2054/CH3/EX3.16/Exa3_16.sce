//Exa:3.16
clc;
clear;
close;
V_a=120;//in volts
I_a=20;//in amperes
R_a=0.5;//in ohms
K=0.05;//Motor constant (in volts/rpm)
E_b=V_a-(I_a*R_a);//in volts
N=E_b/K;//in rpm
disp('Range of Speed Control is :');
disp('Lowest Speed (in rpm) = 0');
disp(N,'Highest Speed (in rpm)=');
E_bo=0;//in volts
V_a1=E_bo+(I_a*R_a);//in volts
alpha=V_a1/V_a;
disp('Range of duty cycle is :');
disp(alpha,'lowest value of duty cycle=');
disp('Highest value of duty cycle= 1')