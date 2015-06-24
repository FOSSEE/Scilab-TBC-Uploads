//Caption:Calculate the induced emf in machine 
//Exam:2.4
clc;
clear;
close;
N_1=500;//starting speed of machine(in rpm)
E_1=200;//emf of the machine at N_1 (in V)
N_2=600;//new speed of machine(in rpm)
E_2=E_1*N_2/N_1;//emf of the machine atN_2 (in V)
disp(E_2,'induced emf while the machine is running at 600 rpm(in V)=');