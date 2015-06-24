// Exa 5.9
format('v',6)
clc;
clear;
close;
// Given data
V_G= 1.5;// in V
V_P= -3;// in V
R_S= 750;// in Ω
R_D= 1800;// in Ω
I_DSS= 6*10^-3;// in A
V_DD= 18;// in V
// V_GS= V_G-I_D*R_S
// I_D= I_DSS*(1-V_GS/V_P)^2 or I_DSS*(1-(V_G-I_D*R_S)/V_P)^2
//I_D^2*R_S^2+I_D*(2*R_S*(V_P-V_G)-V_P^2/I_DSS)+(V_P-V_G)^2
A= R_S^2;
B=(2*R_S*(V_P-V_G)-V_P^2/I_DSS);
C=(V_P-V_G)^2;
// Evaluating the value of I_D by using polynomial
I_D= [A B C]
I_D= roots(I_D);// in A
I_D= I_D(2);// in A
I_DQ= I_D;// in A
V_DS= V_DD-I_D*(R_D+R_S);// in V
V_DSQ= V_DS;// in V
disp(I_DQ*10^3,"The value of I_DQ in mA is : ")
disp(V_DSQ,"The value of V_DSQ in volts is : ")
