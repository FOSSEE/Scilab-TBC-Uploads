//Caption:what resistance should be placed in series with armature to reduced the speed of the motor to 700 rpm
//Exam:2.34
clc;
clear;
close;
V=220;//applied voltage to shunt motor(in V)
R_a=0.3;//armature circuit resistance(in Ohm)
I_a=15;//armature current(in Amp)
E_b1=V-I_a*R_a;//emf generated in armature circuit(in V)
N_1=1000;//motor speed when E_b1 generated(in rpm) 
N_2=700;//desired motor speed (in rpm)
E_b2=(N_2/N_1)*E_b1;//emf generated in second case when motor speed is N_2
R=(215.5-E_b2)/15;//resistance added in series with the armature circuit to reduced the speed of motor (in Ohm)
disp(R,'resistance added in series with the armature circuit to reduced the speed of motor (in Ohm)=');