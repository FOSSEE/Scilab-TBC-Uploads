//Exa 5.11.4
clc;
clear;
close;
// Given data
V_CC = 10;// in V
R_C = 3;// in k Ω
R_C= R_C*10^3;// in Ω
bita = 100;
I_CO = 20;// in nA
I_CO = I_CO * 10^-9;// in A
V_BB = 5;// in V
R_B = 200;// in kΩ
R_B= R_B*10^3;// in Ω
V_BE = 0.7;// in V
// Applying KVL to the base circuit, V_BB= I_B*R_B+V_BE
I_B = (V_BB - V_BE)/R_B;// in A
disp(I_B*10^6,"The base current in µA is");
I_C = (bita * I_B) + I_CO;// in A
disp(I_C*10^3,"The collector current in mA is");
I_E = I_C + I_B;// in A
disp(I_E*10^3,"Emitter current in mA is");
V_CE = V_CC - (I_C * R_C);// in V
disp(V_CE,"Collector emitter voltage in V is");

