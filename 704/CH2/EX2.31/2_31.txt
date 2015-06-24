//Caption:Motor speed at full load
//Exam:2.31
clc;
clear;
close;
V=230;//supply voltage
I_a1=2;//no load current(in Amp)
N_1=1500;//speed of the motor at no load
R_a=0.3;//Armature resistance(in Ohm)
I_a2=50;//full load current(in Amp)
E_1=V-I_a1*R_a;//emf generated at no load
E_2=V-I_a2*R_a;//emf generated at full load
N_2=(E_2/E_1)*N_1;//full load speed (flux assumed constant)
disp(ceil(N_2),'D.c. motor speed at full load when flux assumed constant(In rpm)=');