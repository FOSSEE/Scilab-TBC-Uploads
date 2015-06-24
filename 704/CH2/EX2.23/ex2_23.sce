//Caption:Calculated speed of the motor when the current is 10 Amp
//Exam:2.23
clc;
clear;
close;
V=230;//supply voltage(in V)
R_a=0.8;//armature resistance(in Ohm)
R_f=0.8//field resistance(in Ohm)
I_1=20;//dc motor taking current from supply(in Amp)
E_1=V-R_a*I_1;//emf generated due to I_1(in V)
N_1=600;//speed of the motor due to I_1
I_2=10;//current(in Amp) at which speed of the motor need to calculate
E_2=V-R_a*I_2;//emf generated due to I_2(in Volts)
N_2=E_2*I_1*N_1/(E_1*I_2);//speed of the motor when machine drawing 10(in Amp) current
disp(N_2,'speed of the motor when machine drawing 10 Amp current(in rpm)=');