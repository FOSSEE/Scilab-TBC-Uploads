//Caption:Find out the speed for 6 pole machine 
//Exam:2.7
clc;
clear;
close;
F=60;//flux per pole(in m Wb)
F_1=F*10^-3;//flux per pole(in Wb)
Z=480;//Number of armature conductors
P=6;//Number of poles
A=2;//Number of parallel paths(Armature wave wound)
E_g=320;//generated emf (in V)
N=E_g*60*A/(F_1*Z*P);//speed(in rpm)
disp(N,'speed of the machine (in rpm)=');