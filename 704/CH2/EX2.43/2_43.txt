//Caption:Calculate the efficiency of the motor
//Exam:2.43
clc;
clear;
close;
W=10;//Spring reading (in Kg)
R=0.8;//brake arm length (in m)
T=W*R;//torque (in kg-m)
N=1200;//speed of the small shunt motor(in rpm)
O=(2*3.14)*(N*T)/60;//output (in Kg-m/sec)
O_p=O*9.81;//output (in watts)
V=250;//input voltage(in V)
I=50;//input current(in Amp)
I_p=V*I;//input power(in watts)
E=(O_p/I_p)*100;//efficiency of the motor
disp(E,'efficiency of the motor(in %)=');