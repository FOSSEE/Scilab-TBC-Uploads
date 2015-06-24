//Caption:resistance required to be connected in series to reduced speed of machine to 800 rpm (in Ohm)
//Exam:2.30
clc;
clear;
close;
V=400;//voltage applied across the motor(in V)
R_sh=100;//shunt resistance of motor(in Ohm)
I=70;//total current flowing through motor(in Amp)
I_sh=V/R_sh;//current flowing through the shunt resistance(in Amp)
I_a1=I-I_sh;//current flowing through the armature(in Amp)
R_a1=0.03;//resistance of armature(in Ohm)
R_se=0.5;//series resistance with armature(in Ohm)
R_a=R_a1+R_se;//total resistance in armature circuit(in Ohm)
E_1=V-I_a1*R_a;//emf induced due to this R_a resistance(in V) 
N_1=900;//given speed of the motor(in r.p.m.)
N_2=800;//desired speed of the motor(in r.p.m.)
E_2=E_1*(N_2/N_1);//emf induced due to armature resistance when motor spped is 800(in V)
R_a2=(400-E_2)/66;//resistance required to be connected in series(in Ohm)
disp(R_a2,'net resistance of armature which reduce speed of the machine to 800 rpm (in Ohm)=');
R=R_a2-R_a1;//additional resistance required to be connected in series to reduced speed of machine to 800 rpm (in Ohm)
disp(R,'additional resistance required to be connected in series to reduced speed of machine to 800 rpm (in Ohm)==');