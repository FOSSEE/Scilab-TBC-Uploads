// Exa 7.3
clc;
clear;
close;
format('v',6)
// Given data
Kn = 20*10^-3;// in A/V^2
Vt = -1;// in V
V_DD = 5;// in V
I_D = 100;// in mA
I_D= I_D*10^-3;// in A
V_GS = 0;// in V
// I_D = (1/2)*Kdasn*(W/L)*((V_GS-Vt)^2);
WbyL = (I_D*2)/(Kn*((V_GS-Vt)^2));
disp(WbyL,"The (W/L) ratio is");
V_DS = V_GS-Vt;// in V
V_Dmin = V_DS;// in V
R_Dmax = (V_DD-V_Dmin)/I_D;// in ohm
disp("The range of R_D is : 0 to "+string(R_Dmax)+" Ω");

//Note: The unit of R_Dmax in the book is wrong.
