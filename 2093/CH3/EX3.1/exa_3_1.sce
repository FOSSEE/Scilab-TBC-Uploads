// Exa 3.1
clc;
clear;
close;
// Given data 
V_E= -0.7;// in V
Bita=50;
RC= 5;// in kΩ
RE= 10;// in kΩ
RE= RE*10^3;// in Ω
RC= RC*10^3;// in Ω
V_CC= 10;// in V
V_BE= -10;// in volt
I_E= (V_E-V_BE)/RE;// in A
disp(I_E*10^3,"Emitter current in mA is : ")
// I_E= I_B+I_C and I_C= Bita*I_B, so
I_B= I_E/(1+Bita);// in A
disp(I_B*10^6,"Base current in µA is : ")
I_C= I_E-I_B;//in A
disp(I_C*10^3,"Collector current in mA is : ")
V_C= V_CC-I_C*RC;// in V
disp(V_C,"The value of V_C in volts is :")
