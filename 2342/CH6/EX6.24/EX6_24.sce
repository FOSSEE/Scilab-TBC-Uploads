//Exa 6.24
format('v',6)
clc;
clear;
close;
// Given data
Beta= 100;
V_BEsat= 0.8;// in V
V_CEsat= 0.2;// in V
V_BEact= 0.7;// in V
V_CC = 10;// in V
V_BB=5;// in V
R_E = 2;// in kΩ
R_C = 3;// in kΩ
R_B= 50;// in kΩ
// Applying KVL to input loop
// V_BB= I_B*R_B+(1+Beta)*I_B*R_E+V_BEact or 
I_B= (V_BB-V_BEact)/(R_B+(1+Beta)*R_E);// in mA
// The collector current,
I_C= Beta*I_B;// in mA
// Applying KVL to collector circuit
// V_CC= I_Csat*R_C +V_CEsat +(I_C+I_B)*R_E
V_CEact= V_CC-I_B*R_E-I_C*(R_C+R_E);// in V
// The base current,
I_B= I_B*10^3;// in µA
disp(I_B,"The value of I_B in µA is : ")
disp(I_C,"The value of I_C in mA is : ")
disp(V_CEact,"The value of V_CE in volts is : ")
