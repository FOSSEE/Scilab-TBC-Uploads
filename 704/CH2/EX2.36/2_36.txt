//Caption:Calculate the induced emf in a D.C. machine for speed of 600 rpm 
//Exam:2.36
clc;
clear;
close;
//assuming the flux is constant
N_1=500;//primary speed of the motor(in rpm)
E_1=180;//induced emf in d.c. machine when running at N_1 (in V)
N_2=600;//secondary speed of the motor (in rpm)
E_2=(N_2/N_1)*E_1;//induced emf in d.c. machine when running at N_2 (in V)
disp(E_2,'the emf induced in a D.C. machine when machine running at 600 rpm speed(in V)=');