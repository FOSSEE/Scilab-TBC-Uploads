// Exa 4.14
clc;
clear;
close;
// Given data 
V_OV= 0.2;// in V
gm=1;// in mA/V
gm=gm*10^-3;// in A/V
Vt=0.8;// in V
unCox= 90;// in µA/V^2
unCox=unCox*10^-6;// in A/V^2
// gm= I/V_OV
I= gm*V_OV;// in A
disp(I*10^3,"Bias current in mA is : ")
I_D= I/2;// in A
// Formula I_D= 1/2*unCox*WLn*V_OV^2
WbyL= 2*I_D/(unCox*V_OV^2);
disp(WbyL,"W/L ratio is : ")
