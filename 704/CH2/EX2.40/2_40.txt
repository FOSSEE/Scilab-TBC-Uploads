//Caption:What resistance must be inserted in series with the armature to reduce the speed to 500 rpm
//Exam:2.40
clc;
clear;
close;
V=250;//applied voltage to a shunt motor(in V)
I_a=20;//armature current(in Amp)
R_a=0.5;//armature resistance(in Ohm)
N_1=1000;//speed of the motor due to these readings(in rpm)
E_1=V-I_a*R_a;//emf induced in machine(in V)
N_2=500;//desired speed of the motor(in rpm)
E_2=(N_2/N_1)*E_1;//emf in case of motor speed N_2
//R_1 additional resistance added to reduce the speed to 500 rpm
R_1=(V-E_2)/I_a-R_a;//resistance applied in series with armature to reduce the speed to 500 rpm
disp(R_1,'resistance applied in series with armature to reduce the speed to 500 rpm(in Ohm)=');