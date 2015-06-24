// Example 2.4
clc;
clear;
close;
// Given data
format('v',5);
Rs= 2;// in kΩ
RL= 5;// in kΩ
A= 10^5;// unit less
Rin= 100;//in kΩ
Rout= 50;// in Ω
Vout= 10;// in V
// For Vout = 10 V, V1= V2 = Vout
V1= Vout;// in V
V2= V1;// in V
// From equation V1= Vs*Rin/(Rin+Rs)
Vs= V1*(Rin+Rs)/Rin;// in V
Vout_by_Vs= Vout/Vs;// value of Vout/Vs
disp(Vs,"The value of Vs in volts is : ");
disp(Vout_by_Vs,"The value of Vout/Vs is : ");
disp(Rin,"The input resistance of the circuit in kΩ is : ");



