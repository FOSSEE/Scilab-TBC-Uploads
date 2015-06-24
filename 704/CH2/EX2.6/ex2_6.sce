//Caption:Calculate the voltage generated in 4 pole generator
//Exam:2.6
clc;
clear;
close;
S_1=51;//Number of slots 
S_2=20;//Number of conductor per slot
Z=S_1*S_2;//number of armature conductors
F=7;//flux per pole(in mWb) 
F_1=F*10^-3;//flux per pole(in Wb)
P=4;//Number of poles
A=2;//Number of parallel paths (armature is wave wound)
N=1500;//speed of the machine(in rpm)
E_g=F_1*Z*N*P/(60*A);//generated emf
disp(E_g,'voltage generated in machine (in Volts)=');