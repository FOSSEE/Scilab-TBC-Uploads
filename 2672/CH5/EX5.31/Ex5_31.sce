//Example 5_31
clc;
clear;
close;
format('v',6);
//given data : 
Vz=10;//V
Rs=1;//kohm
RL=10;//kohm
IL=5;//mA(Assumed)
Vi=25:40;//V
RLmin=Rs;//kohm
Iz=(max(Vi)-Vz)/RLmin-IL;//mA
disp(Iz,"(a) Maximum value of zener current(mA) : ");
Iz_min=(min(Vi)-Vz)/Rs-IL;//mA
disp(Iz_min,"(b) Minimum value of zener current(mA) : ");
