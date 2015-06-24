// Exa 6.23
clc;
clear;
close;
// Given data
I_DSS= 12;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -4;// in V
Rs= 0;// in Ω
V_DD= 15;// in V
V_DS= 0.1;// in V
V_GS= 0;// in V
if V_DS<V_GS-V_P then
    disp("The ohmic region is confirmed.")
I_D= I_DSS*(2*(1-V_GS/V_P)*V_DS/(-V_P)-(V_DS/V_P)^2);// in A
R_D= (V_DD-V_DS)/I_D;// in Ω
disp(I_D*10^6,"The value of I_D in µA is :")
disp(R_D*10^-3,"The value of R_D in kΩ is :")
end
