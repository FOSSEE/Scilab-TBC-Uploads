// Exa 6.20
clc;
clear;
close;
// Given data
I_DSS= 6;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -4.5;// in V
// Part (i)
// At V_GS= -2V
V_GS= -2;// in V
I_DS= I_DSS*(1-V_GS/V_P)^2;// in A
disp(I_DS*10^3,"At V_GS= -2V, the value of I_DS in mA is : ")
// At V_GS= -3.6V
V_GS= -3.6;// in V
I_DS= I_DSS*(1-V_GS/V_P)^2;// in A
disp(I_DS*10^3,"At V_GS= -3.6V, the value of I_DS in mA is : ")

// Part (ii)
// At I_DS= 3mA
I_DS= 3*10^-3;// in A
V_GS= V_P*(1-sqrt(I_DS/I_DSS));
disp(V_GS,"At I_DS= 3mA, the value of V_GS in volts is :")
// At I_DS= 5.5mA
I_DS= 5.5*10^-3;// in A
V_GS= V_P*(1-sqrt(I_DS/I_DSS));
disp(V_GS,"At I_DS= 5.5mA, the value of V_GS in volts is :")

// Note: There is  calculation error in the second part to find the value of V_GS in both the condition . So the answer in the book is wrong
