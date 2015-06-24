//Caption: calculate the total torque in Nw-m
//Exam:2.14
clc;
clear;
close;
P=6;//poles 
A=P;//number of parallel paths
S=60;//slots in motor
C_s=12;//conductor per slot
Z=S*C_s;//total conductor in machine
I_a=50;//armature current(in Amp)
F_1=20//flux per pole(in m Wb)
F_2=F_1*10^-3;//flux per pole)(in Wb)
T=0.15924*F_2*Z*P*I_a/A;//total torque (in Nw-m)
disp(T,'total torque by motor (in Nw-m)=');