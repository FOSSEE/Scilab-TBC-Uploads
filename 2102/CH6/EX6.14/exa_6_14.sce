// Exa 6.14
clc;
clear;
close;
// Given data
I_DSS= 4;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -2;// in V
V_DD= 10;// in V
V_SS= V_DD;// in V
V_GS2=0;// in V
I_D= I_DSS*(1-V_GS2/V_P)^2;// in A
// since I_D= I_DSS
V_GS= 0;// in volt
// Formula V_SS= V_DS-V_GS
V_DS= V_SS-V_GS;// in volt
disp(I_D*10^3,"The value of I_D in mA is :")
disp(V_GS,"The value of V_GS in volt is : ")
disp(V_DS,"The value of V_DS in volts is :")

if V_DS > V_GS-V_P then
    disp("The active region operation of the upper JFET is confirmed ")
end
