// Example 5.1
format('v',5)
clc;
clear;
close;
// given data
V_BB= 10;//in V
V_BE= 0.7;//in V
V_CC= 20;// in V
R_B= 1.5;// in MΩ
R_B= R_B*10^6;//in Ω
R_C= 5*10^3;//in Ω
bita= 125;// unit less
I_B= (V_BB-V_BE)/R_B;//in A
I_C= bita*I_B;//in A
// The dc voltage between the collector and emitter 
V_CE= V_CC-I_C*R_C;//in V
disp(V_CE,"The dc voltage between the collector and emitter in volts is : ")
