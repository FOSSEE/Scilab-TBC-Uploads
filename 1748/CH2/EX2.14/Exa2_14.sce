//Exa 2.14
clc;
clear;
close;
//Given data :
P=4;//no. of poles
f=50;//in Hz
R2=0.024;//in ohm
X2=0.6;//in ohm 
disp("Since the torque under running condition is maximum at that value of slip which makes rotor reactance per phase equal to the rotor resistance per phase.")
Sm=R2/X2;//slip corresponding to max torque
Ns=120*f/P;//in rpm
N=Ns*(1-Sm);//in rpm
disp(N,"Speed corresponding to maximum torque in rpm : ");