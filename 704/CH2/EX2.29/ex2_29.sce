//Caption:Find the speed when the armature takes 70 Amp 
//Exam:2.29
clc;
clear;
close;
V=400;//voltage for a shunt motor (in V)
R_a=0.2;//armature resistance(in Ohm)
I_a1=100;//starting armature current(in Amp)
N_1=1000;//speed of the motor when I_a1 armature current flows in armature
E_1=V-I_a1*R_a;//emf induced at I_a1 armature current (in V)
I_a2=70;//changed armature current(in Amp)
E_2=V-I_a2*R_a;//emf induced for I_a2 current(in V)
//flux is constant
N_2=ceil(E_2*N_1/E_1);//speed of the motor when 70 Amp current flowing through armature
disp(N_2,'speed of the motor when 70 Amp current flowing through armature(in rpm)=');