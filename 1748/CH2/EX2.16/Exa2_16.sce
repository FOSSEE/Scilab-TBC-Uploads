//Exa 2.16
clc;
clear;
close;
//Given data :
P=12;//no. of poles
f=50;//in Hz
R2=0.03;//in ohm
X2=0.5;//im 
S=R2/X2;//unitless
Ns=120*f/P;//in rpm
N=Ns*(1-S);//in rpm
disp(N,"Speed at maximum torque in rpm : ");
S=(Ns-495)/Ns;//slip at 495 rpm speed
Ratio=(2*R2*S/X2)/((R2/X2)^2+S^2);//ratio of max torque to full load torque
disp(Ratio*100,"Ratio of full load torque to max torque(in %) :");