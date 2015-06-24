//Caption:Calculate the economy of copper in auto transformer and current distribution in primary
//Exam:3.36
clc;
clear;
close;
V_1=500;//Primary voltage
V_2=400;//Secondary voltage
I_2=100;//Secondary voltage
I_1=V_2*I_2/V_1;//Primary current
disp(I_1,'Current in primary winding(in Amp)=')
K=V_2/V_1;//Transformer ratio
S=K*100;//Saving (in %)
disp(S,'Economy of copper(in %)=')