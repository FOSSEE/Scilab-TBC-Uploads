//Caption:Find voltage in secondary terminal
//Exam:3.6
clc;
clear;
close;
V_1=100;//Primary voltage(in Volts)
N_1=20;//Number of primary turns
N_2=40;//Number of secondary turns
V_2=(N_2/N_1)*V_1;//voltage of the secondary terminal(in Volts)
disp(V_2,'voltage of the secondary terminal(in Volts)=');