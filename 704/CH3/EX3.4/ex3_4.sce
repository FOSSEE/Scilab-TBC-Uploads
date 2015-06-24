//Caption:Calculate the primary current in a single phase transformer
//Exam:3.4
clc;
clear;
close;
V_1=230;//Primary voltage(in Volts)
V_2=460;//Secondary voltage(in Volts)
I_2=10;//secondary current(in Amp)
I_1=I_2*(V_2/V_1);//Primary current(in Amp)
disp(I_1,'Primary current (in Amp)=');