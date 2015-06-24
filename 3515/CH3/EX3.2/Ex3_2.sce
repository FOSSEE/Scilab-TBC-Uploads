// Exa 3.2
format('v',6);
clc;
clear;
close;
// Given data 
V_E= 1.7;// in V
V_B= 1;// in V
RC= 5;// in kΩ
RE= 5;// in kΩ
RE= RE*10^3;// in Ω
RC= RC*10^3;// in Ω
RB= 100;//in kΩ\
RB= RB*10^3;// in Ω
V_CC= 10;// in V
V_BE= -10;// in volt
I_E= (V_CC-V_E)/RE;// in A
I_B= V_B/RB;// in V
// Formula I_B=  (1-alpha)*I_E
alpha= 1-I_B/I_E;
disp(alpha,"Value of alpha is : ")
bita= alpha/(1-alpha);
disp(bita,"Value of bita is : ")
V_C= (I_E-I_B)*RC-V_CC;// in volt
disp(V_C,"Collector voltage in volts is : ")


