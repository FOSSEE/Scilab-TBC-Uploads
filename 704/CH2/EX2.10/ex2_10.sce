//Caption:Calculate the increase of main field flux in percentage
//Exam:2.10
clc;
clear;
close;
N_1=750;//speed of dc machine(in rpm)
E_1=220;//induced emf in dc machine when running at N_1
N_2=700;//speed of dc machine second time (in rpm)
E_2=250;//induced emf in dc machine when running at N_2
F=E_2*N_1/(E_1*N_2);
Inc=(F-1);
disp(Inc*100,'increase in main field flux of the dc machine=');