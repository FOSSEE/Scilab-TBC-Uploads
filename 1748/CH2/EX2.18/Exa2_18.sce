//Exa 2.18
clc;
clear;
close; 
//Given data :
P=4;//no. of poles
f=50;//in Hz
R2=0.04;//in ohm
N=1200;//in rpm(speed at max torque)
Ns=120*f/P;//in rpm(synchronous speed)
S=(Ns-N)/Ns;//unitless
X2=R2/S;//in ohm
//Starting torque is the torque devloped when S=1: Tst=K*R2/(R2^2+X2^2)
//Let say, m=R2/(R2^2+X2^2) then Tst=K*m
m=R2/(R2^2+X2^2);//assumed
disp("Starting torque, Tst="+string(m)+"k");
disp("Maximum torque, Tm=K/"+string(2*X2));
disp("Thus, Tst in terms of Tm can be expressed as : ");
disp("Tst/Tm="+string(0.96*0.4)+" or Tst="+string(0.96*0.4)+"Tm");
disp("Therefore, staring torque is "+string(0.96*0.4*100)+"% of maximum torque.");