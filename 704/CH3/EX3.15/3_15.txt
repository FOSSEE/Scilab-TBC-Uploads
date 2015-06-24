//Caption:In a single phase transformer Calculate the current taken by the primary winding.
//Exam:3.15
clc;
clear;
close;
V_1=440;//Primary voltage(in Volts)
V_2=110;//Secondary voltage(in Volts)
I_o=5;//NO load current(in Amp)
p_o=0.2;//No load power factor
q_o=acosd(p_o);//power angle when no load power factor is 0.24
I_2=120;//Secondary current(in Amp)
p_2=0.8;//Secondary power factor
q_2=acosd(p_2);//power angle when secondary power factor is 0.8
K=V_2/V_1;//ratio of primary to secondary voltage
I_1=K*I_2;//primary current(in Amp)
Q=q_o-q_2;//resultant power angle
I=((I_o)^2 + (I_1)^2+2*I_o*I_1*cosd(Q))^(1/2);//Resultant current taken by the primary(in Amp)
disp(I,'Resultant current taken by the primary(in Amp)=');