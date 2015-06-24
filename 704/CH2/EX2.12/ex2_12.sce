//Caption :determine the value of torque in Nw-m
//Exam:2.12
clc;
clear;
close;
F=24;//flux per pole (in m Wb)
F_1=F*10^-3;//flux per pole (in Wb)
Z=760;//number of conductors in armature
P=4;//number of pole
A=2;//number of parallel paths
I_a=50;//armature cuurrent(in Amp)
T_a=0.159*F_1*Z*P*I_a/A;//torque develope(in Nw-m)
disp(T_a,'torque developed in machine(in Nw-m)=');