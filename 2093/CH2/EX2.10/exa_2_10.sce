// Exa 2.10
clc;
clear;
close;
// Given data 
V_DD= 15;// in V
Vt= 1;// in V
V_D= 10;// in V
V_S= 5;// in V
KnWbyL= 1;// in mA/V^2
KnWbyL=KnWbyL*10^-3;// in A/V^2
R_G1= 8;// in MΩ
R_G1= R_G1*10^6;// in Ω
I_D= 0.5;// in mA
I_D=I_D*10^-3;//in A
R_D= (V_DD-V_D)/I_D;// in Ω
R_S= V_S/I_D;// in Ω
// Formul I_D= 1/2*KnWbyL*(V_OV)^2
V_OV= sqrt(2*I_D/KnWbyL);// in V
// Formula V_OV= V_GS-Vt
V_GS= V_OV+Vt;// in V
V_G= V_GS+V_S;// in V
// Formul V_G= R_G2*V_DD/(R_G1+R_G2)
R_G2= R_G1*V_G/(V_DD-V_G);//in Ω
disp(R_D*10^-3,"The value of R_D in kΩ is : ")
disp(R_S*10^-3,"The value of R_S in kΩ is : ")
disp(V_OV,"The value of V_OV in volts is : ")
disp(V_GS,"The value of V_GS  in volts is : ")
disp(R_G2*10^-6,"The value of R_G2 in MΩ is : ")

