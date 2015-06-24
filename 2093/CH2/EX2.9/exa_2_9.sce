// Exa 2.9
clc;
clear;
close;
// Given data 
R_D= 20;// in kΩ
R_D= R_D*10^3;// in Ω
R1= 30;// in kΩ
R1= R1*10^3;// in Ω
R2= 20;// in kΩ
R2= R2*10^3;// in Ω
V_DD= 5;// in V
Vtn= 1;// in V
Kn= 0.1;// in mA/V^2
Kn=Kn*10^-3;// in A/V^2
V_GS= R2*V_DD/(R1+R2);// in V
// I_D= 1/2*µnCox*W/L*(V_GS-Vtm)^2 
I_D = Kn*(V_GS-Vtn)^2  ;// in mA (As Kn= 1/2*µnCox*W/L)
V_DS= V_DD-I_D*R_D;// in V
disp(V_GS,"The value of V_GS in volt is : ")
disp(I_D*10^3,"The value of I_D in mA is : ")
disp(V_DS,"The value of V_DS in volt is : ")
disp("Since V_DS = 3V > V_DS(sat) = V_GS-Vtn = 2 - 1V, the transistor is indeed biased in the saturation region")


