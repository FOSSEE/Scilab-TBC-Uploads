//Caption:Calculate (a)the approximate values of the primary and secondary currents (b)the approimate number of primary turns
//Exam:3.5
clc;
clear;
close;
V_1=6600;//Primary voltage(in Volts)
V_2=400;//Secondary voltage(in Volts)
N_2=100;//secondary turns
O_p=200;//output of a transformer in KVA
I_1=O_p*1000/V_1;//Full load primary current(in Amp)
disp(I_1,'Full load primary current(in Amp)=');
I_2=O_p*1000/V_2;//Full load secondary current(in Amp)
disp(I_2,'Full load secondary current(in Amp)=');
N_1=N_2*(V_1/V_2);//Number of primary turns
disp(N_1,'Number of primary turns=');