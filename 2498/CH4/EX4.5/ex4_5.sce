// Exa 4.5
clc;
clear;
close;
format('v',6)
// Given data
Beta = 49;
I_E = 12;// in mA
I_B = 240;// in µA
I_B = I_B * 10^-3;// in mA
Alpha = Beta/(1+Beta);
//Using alpha rating, the value of collector current,
I_C = Alpha*I_E;// in mA
disp(Alpha,"The value of alpha is : ")
disp(I_C,"Using alpha rating, the value of I_C in mA is");
//Using beta rating, the value of collector current,
I_C = Beta*I_B;// in mA
disp(I_C,"Using bita rating, the value of I_C in mA is");
