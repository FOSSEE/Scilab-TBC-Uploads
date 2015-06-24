// Exa 9.29
clc;
clear;
close;
// Given data
I_Don = 4*10^-3;// in A
V_GSon = 6;// in V
V_GSth = 3;// in V
V_DS= 6;// in V
I_D= I_Don;// in A
k = I_Don/((V_GSon-V_GSth)^2);// in A/V^2
V_GS= poly(0,'V_GS')
V_GS= I_D-k*(V_GS-V_GSth)^2;
V_GS= roots(V_GS);// in V
V_GS= V_GS(1);// in V
V_DD= 2*V_DS;// in V
// V_GS= V_DD-I_D*R_D
R_D= (V_DD-V_GS)/I_D;// in ohm
disp(V_GS,"The value of V_GS in volts is : ")
disp(V_DD,"The value of V_DD in volts is : ")
disp(R_D*10^-3,"The value of R_D in kΩ is : ")
