// Exa 3.12
clc;
clear;
close;
format('v',6)
// Given data
R_L = 10;// in k ohm
R_S = 5;// in k ohm
V_S = 12;// in V
V_Z = 8;// in V
V_L = (R_L/(R_S+R_L))*V_S;// in V
//The output voltage 
Vo = V_L;// in V
disp(Vo,"The output voltage in V is");
// The voltage drop across R_S 
R_S = V_S-Vo;// in V
disp(R_S,"The voltage drop across R_S in V is");
// The current through the zener diode 
I_Z = 0;// in A
disp(I_Z,"The current through the zener diode in A is");
