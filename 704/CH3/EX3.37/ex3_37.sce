//Caption:In a auto transformer determine Transformation ratio secondary current primary current and number of turns across secondary if total number of turns is 250.
//Exam:3.37
clc;
clear;
close;
V_1=250;//Primary voltage(in Voltage)
V_2=125;//Secondary voltage(in Voltage)
K=V_2/V_1;//Transformation ratio
N_1=250;//Primary turns
disp(K,'Transformation ratio=')
P_f=1;//Unity power factor
L=5;//Value of load(in KW)
I_2=L*1000/(V_2*P_f);//Secondary current(in Amp)
disp(I_2,'Secondary current(in Amp)=');
I_1=K*I_2;//Primary current(in Amp)
disp(I_1,'Primary current(in Amp)=');
N_2=K*N_1;//Secondary turns
disp(N_2,'number of turns across secondary winding=');