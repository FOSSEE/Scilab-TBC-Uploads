// Exa 2.7
clc;
clear;
close;
// Given data 
KnWbyL= 1;// in mA
KnWbyL=KnWbyL*10^-3;// in A
Vt= 1;// in V
V_DS= 0.1;// in V
V_D= V_DS;// in V
V_GS= 5;// in V
V_DD= V_GS;// in V
// Formula I_D= K'nW/L*[(V_GS-Vt)*V_DS-V_DS^2/2]
I_D= KnWbyL*[(V_GS-Vt)*V_DS-V_DS^2/2];// in A
R_D= (V_DD-V_D)/I_D;//in Ω
disp(R_D*10^-3,"The required value of R_D in kΩ is : ")
