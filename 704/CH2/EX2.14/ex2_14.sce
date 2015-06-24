//Caption:Calculate the drop in speed when motor takes 51 Amp
//Exam2.13
clc;
clear;
close;
V=220;//supply voltage(in V)
R_sh=220;//shunt field resistance(in Ohm)
R_a=0.2;//armature resistance(in Ohm)
I_sh=V/R_sh;//shunt field current(in Amp)
N_1=1200;//starting speed of the motor(in rpm)
I_1=5.4;//at N_1 speed current in motor(in Amp)
I_a1=I_1-I_sh;//armature current at speed N_1(in Amp)
E_b1=V-I_a1*R_a;//emf induced due to I_a1(in V)
I_2=51;//new current which motor taking(in Amp)
I_a2=I_2-I_sh;//armature current at I_2(in Amp)
E_b2=V-I_a2*R_a;//emf induced due to I_a2(in V)
N_2=E_b2*N_1/E_b1;//speed of the motor when taking I_2 current(in rpm)
N_r=ceil(N_1-N_2);//reduction in speed(in rpm)
disp(N_r,'reduction in speed(in rpm)=');