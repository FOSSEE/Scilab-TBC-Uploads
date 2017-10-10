// Exa 2.18
clc;
clear; 
close;
// Given data 
Vt= 1;// in V
unCox= 120;// in µA/V^2
unCox= unCox*10^-6;// in A/V^2
L1=1;// in µm
L2=L1;// in µm
I_D= 120;//in µA
I_D= I_D*10^-6;//in A
V_GS1= 1.5;//in V
V_G2= 3.5;// in V
V_S2= 1.5;// in V
V_DD= 5;// in V
V_D2= 3.5;// in V
// Formul I_D= 1/2*unCox*W/L*(V_GS1-Vt)^2
W1= 2*I_D*L1/(unCox*(V_GS1-Vt)^2);// in µm
disp(W1,"The value of W1 in µm is : ")
V_GS2= V_G2-V_S2;//in V
// Formul I_D= 1/2*unCox*W/L*(V_GS1-Vt)^2
W2= 2*I_D*L2/(unCox*(V_GS2-Vt)^2);// in µm
disp(W2,"The value of W2 in µm is : ")
R= (V_DD-V_D2)/I_D;// in Ω
disp(R*10^-3,"Resistance in kΩ");
