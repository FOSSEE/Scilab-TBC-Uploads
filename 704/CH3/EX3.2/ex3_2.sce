//Caption:In a loss less transformer calculate (a)Number of turns on high voltage side (b)The primary current (c)The secondary current
//Exam:3.2
clc;
clear;
close;
V_1=110;//primary voltage(in Volts)
V_2=220;//secondary voltage(in Volts)
N_1=130;//low voltage side turns
N_2=N_1*V_2/V_1;//high voltage side turns
disp(N_2,'Number of turns on high voltage side=');
O_p=1;//Output of the transformer in KVA
I_2=O_p*1000/V_2;//Secondary current(in Amp)
I_1=O_p*1000/V_1;//Primary current(in Amp)
disp(I_1,'Primary current(in Amp)=');
disp(I_2,'Secondary current(in Amp)=');