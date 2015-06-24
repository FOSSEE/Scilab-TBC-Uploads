//Caption:calculate the gross torque in dc machine
//Exam:2.17
clc;
clear;
close;
P=4;//number of poles 
Z=1600;//number of armature conductor
F=0.027;//flux per pole(in Wb)
A=2;//number of parallel paths (wave wound)
I=75;//current in machine(in Amp)
N=1000;//speed of the motor(in rpm)
T=0.1591*P*F*Z*I/A;//torque generate in machine(in Nw-m)
disp(T,'Torque generated in machine (in Nw-m)=');