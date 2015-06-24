// Exa 7.6
clc;
clear;
close;
format('v',5)
// Given data
V_P = -2;// in V
I_DSS = 1.65;// in mA
I_D = 0.8;// in mA
V_DD = 24;// in V
// I_D =I_DSS*(( 1-(V_GS/V_P) )^2);
V_GS = V_P*(1-sqrt(I_D/I_DSS))
disp(V_GS,"The value of V_GS in V is");
// Part (b)
g_mo = (-2*I_DSS)/V_P;// in mA/V
g_m = g_mo*(1-(V_GS/V_P));// in mA/V
disp(g_m,"The value of gm in mA/V is");
// Part (c)
// The value of R_S 
R_S = -V_GS/(I_D*10^-3);// in ohm
disp(R_S,"The value of R_S in ohm is");
// Part (d)
Av= 20;//voltage gain in dB
Av= 10^(Av/20);
// r_d >> Rd and |Av|= gm*Rd
Rd= Av/g_m;// in k ohm
disp(Rd,"The value of Rd in k ohm is : ")

// Note: The value of R_S in the book is quite different from the coding output because in the book the calculated value of V_GS is not correct, correct value is -0.61
