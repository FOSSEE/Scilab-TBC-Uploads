// Exa 6.22
clc;
clear;
close;
// Given data
I_DSS= 12;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -4;// in V
R_D= 3;// in kΩ
R_D= R_D*10^3;// in Ω
Rs= 0;// in Ω
V_DD= 15;// in V
V_GS= -2;// in V
I_D= I_DSS*(1-V_GS/V_P)^2;// in A
disp(I_D*10^3,"The value of I_D in mA is :")
V_DS= -I_D*R_D+V_DD;// in V
disp(V_DS,"The value of V_DS in volts is :")
if V_DS>V_GS-V_P then
    disp("The device is operating in the saturation region")
end
