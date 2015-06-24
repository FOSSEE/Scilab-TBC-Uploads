// Exa 6.12
clc;
clear;
close;
// Given data
R_G= 1;// in MΩ
R_G= R_G*10^6;// in Ω
V_DD= 24;// in V
R_D= 56;// in kΩ
R_D=R_D*10^3;// in Ω
Rs= 4;// kΩ
Rs= Rs*10^3;// in Ω
// Part (a)
I_DSS= 1;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -1;// in V
V_D= 10;// in V
I_D= (V_DD-V_D)/R_D;// in A
// I_D= I_DSS*(1-V_GS/V_P)^2;// in A
V_GS= V_P*(1-sqrt(I_D/I_DSS));// in V
R1= abs(V_GS)/I_D;// in Ω
disp(R1*10^-3,"The value of R1 in kΩ is : ")

// Part (b)
gmo= -2*I_DSS/V_P;// A/V
gm= gmo*(1-(V_GS)/V_P);// A/V;
Ri= R_G/(1-gm*Rs/(1+gm*Rs)*Rs/(Rs+R1));// in Ω
disp(Ri*10^-6,"The effective input impedence in MΩ is :")


