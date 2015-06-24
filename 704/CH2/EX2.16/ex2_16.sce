//Caption:Calculate the electro magnetic torque
//Exam:2.16
clc;
clear;
close;
E=250;//emf induced in dc machine(in V)
I_a=20;//current flowing through the armature(in Amp)
N=1500;//speed(in rpm)
T_e=0.1591*E*I_a*60/N;//torque developed in machine(in Nw-m)
disp(T_e,'electro magnetic torque developed in dc machine(in Nw-m)=');