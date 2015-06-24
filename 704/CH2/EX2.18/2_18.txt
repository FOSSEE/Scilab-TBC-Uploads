//Caption:Calculate the value of back emf
//Exam:2.18
clc;
clear;
close;
V=230;//applied voltage (in V)
R_a=0.1;//armature resistance(in Ohm)
I_a=60;//armature current (in Amp)
E_b=V-I_a*R_a;//back emf(in Volts)
disp(E_b,'back emf produced by machine in (in V)=');