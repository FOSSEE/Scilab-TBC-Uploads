//Caption:Calculate the value of resistance to be connected in series with the armature to reduce the speed to 750 r.p.m.
//Exam:2.33
clc;
clear;
close;
V=220;//applied voltage to shunt motor(in V)
I_a1=40;//armature current in first case(in Amp)
R_a=0.5;//armature circuit resistance(in Ohm)
N_1=900;//speed of the motor at I_a1 (in rpm)
E_b1=V-I_a1*R_a;//emf generated in armature circuit due to I_a1(in V)
N_2=750;//desired motor speed (in rpm)
I_a2=30;//armature current in case of N_2 motor speed(in Amp)
E_b2=(N_2/N_1)*E_b1;//emf generated in second case when motor speed is N_2
//R resistance added in series with the armature circuit to reduced the speed of motor 
R=(205-E_b2)/30;//resistance added in series with the armature circuit to reduced the speed of motor
disp(R,'resistance added in series with the armature circuit to reduced the speed of motor(in Ohm)=');