//Exa 2.15
clc;
clear;
close;
//Given data :
P=6;//no. of poles
f=50;//in Hz
Sf=4;//in %
R2=0.01;//in ohm
X2=0.05;//im 
Ratio=((R2/X2)^2+(Sf/100)^2)/(2*R2*(Sf/100)/X2);//ratio of max torque to full load torque
disp("Maximum torque, Tmax="+string(Ratio)+"Tf");
disp("Since the torque under running condition is maximum at that value of slip which makes rotor reactance per phase equal to the rotor resistance per phase.")
Sm=R2/X2;//slip corresponding to max torque
Ns=120*f/P;//in rpm
N=Ns*(1-Sm);//in rpm
disp(N,"Speed corresponding to maximum torque in rpm : ");