//Caption:In a shunt motor find the resistance required in series with the armature circuit to reduce the speed of motor by 50 percent
//Exam:2.35
clc;
clear;
close;
I_a1=40;//Armature current(in Amp)
R_a=0.6;//Armature circuit resistance(in Ohm)
//T_1/T_2=I_a1/I_a2 
//T_1=T_2
V=220;
I_a2=I_a1;//current when speed reduced 50%
E_b1=V-(R_a*I_a1);//emf induced in circuit
N_r=0.5;//Ratio of speed (N_2/N_1)
//E_b2=V-I_a2*R
//R is a total armature resistance in the second case
//N_2/N_1=E_b2/E_b1
//N_r=(V-I_a2*R)/E_b1
R=(V-(N_r*E_b1))/I_a2;//the resistance required in series with the armature circuit to reduce the speed of motor 50%
disp(R,'the resistance required in series with the armature circuit to reduce the speed of motor by 50%(in Ohm)=');