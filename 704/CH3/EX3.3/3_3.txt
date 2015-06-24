//Caption:Calculate the secondary voltage and the volts per turn
//Exam:3.3
clc;
clear;
close;
N_1=800;//Primary turns in a transformer
N_2=200;//Secondary turns in a transformer
V_1=100;//Primary voltage
V_2=V_1*(N_2/N_1);//Secondary voltage
disp(V_2,'Secondary voltage (in Volts)=');
V_n=V_1/N_1;//Volts per turn
disp(V_n,'Volts per turn=');