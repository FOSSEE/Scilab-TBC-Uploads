// Exa 6.13
clc;
clear;
close;
// Given data
I_DSS= -4;// in mA
V_P= 4;// in V
R1= 1.3*10^6;// in Ω
R2= 200*10^3;// in Ω
V_DD= -60;// in V
R_D= 18;// in kΩ
R_D= R_D*10^3;// in Ω
Rs= 4;// in kΩ
Rs= Rs*10^3;// in Ω
V_GG= V_DD*R2/(R1+R2);// in V
R_G= R1*R2/(R1+R2);// in Ω
// V_GS= V_GG-V_P*I_D
//  I_D= I_DSS*(1-(V_GG-V_P*I_D)/V_P)^2;// in mA or
// I_D^2*I_DSS + I_D*(2*(1-V_GG/V_P)*I_DSS-1) +((1-V_GG/V_P)^2*I_DSS)
I_D= [I_DSS (2*(1-V_GG/V_P)*I_DSS-1) ((1-V_GG/V_P)^2*I_DSS)]
I_D=roots(I_D);
I_D=I_D(2);// in mA
I_D=I_D*10^-3;// in A
V_GS= V_GG-Rs*I_D;// in V
V_DS= V_DD-I_D*(R_D+Rs);// in V
disp(I_D*10^3,"The value of I_D in mA is : ")
disp(V_GS,"The value of V_GS in volts is ")
disp(V_DS,"The value of V_DS in volts is ")
