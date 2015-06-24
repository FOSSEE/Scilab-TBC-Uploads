// Exa 2.16
clc;
clear; 
close;
// Given data 
V_SS= -5;// in V
unCox= 60;// in µA/V^2
unCox= unCox*10^-6;// in A/V^2
Vt= 1;// in V
W= 100;// in µm
L= 3;// in µm
V_G=0;// in V
V_DD= 5;// in V
V_D=0;//in V
I_D= 1*10^-3;// in A
// I_D= (V_DD-V_D)/R_D
R_D= (V_DD-V_D)/I_D;// in Ω
disp(R_D*10^-3,"The value of R_D in kΩ is : ")
// Formul I_D= 1/2*unCox*W/L*(V_GS-Vt)^2
V_GS= sqrt(2*I_D*L/(unCox*W))+Vt;// in V
V_S= V_G-V_GS;// in V
R_S= (V_S-V_SS)/I_D;// in Ω
disp(R_S*10^-3,"The resistance in kΩ is ");


