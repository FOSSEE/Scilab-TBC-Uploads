// Exa 4.39
clc;
clear;
close;
// Given data
V_BB = 4.50;// in V
V_E = 3.8;// in V
V_C = 11.32;// in V
I_C = 3.8;// in mA
I_C=I_C*10^-3;// in A
V_BE = 0.7;// in V
R1 = 10;// in kohm
R2 = 2.2;// in kohm
R_B = (R1*R2)/(R1+R2);// in kohm
R_B = R_B * 10^3;// in ohm
I_B = (V_BB-V_BE)/R_B;// in A
disp(I_B*10^3,"The base current in mA is");
V_CE = V_C-V_E;// in V
disp(V_CE,"Collector emitter voltage in V is");
disp("Thus the Q-point is : "+string(V_CE)+" V, "+string(I_B*10^3)+" mA") ;

// Note: There is calculation error to evaluate the value of I_B. So the answer in the book is wrong.
