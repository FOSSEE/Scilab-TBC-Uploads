// Prob 1.10
clc;
clear;
close;
format('v',5);
// Given data
f=50;//in Hz
ph=3;//no. of phase
EL=10000;//in volt
fi=15*10^-2;//in Wb
Kd=0.96;//unitless
Kp=1;//unitless
P=10;//in KVA
T=EL/(sqrt(3)*4.44*Kd*Kp*fi*f);//turns/phase
Zp=2*T;//armature conductor connected in series per phase
disp(Zp,"Armature conductor connected in series per phase : ");
//Note : Answer in the book is wrong.
