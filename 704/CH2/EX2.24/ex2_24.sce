//Caption:Percentage change in speed of a d.c. motor
//Exam:2.24
clc;
clear;
close;
V=240;//supply voltage(in V)
R_a=0.5;//armature resistance(in Ohm)
I_1=100;//armature current (in Amp)
I_2=50;//changed armature current(in Amp)
E_1=V-R_a*I_1;//induced emf(in V)
E_2=V-R_a*I_2;//changed induced emf due to I_2
//flux per pole is constant
N_r=E_2/E_1;//ratio of speed in machine due to voltage change
N_rp=(N_r-1)*100;//Percentage change in speed of  d.c. motor
disp(N_rp,'Percentage change in speed of  d.c. motor==');