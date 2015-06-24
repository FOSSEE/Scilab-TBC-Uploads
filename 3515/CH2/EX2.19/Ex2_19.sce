// Exa 2.19
format('v',5);
clc;
clear; 
close;
// Given data 
Vt= 2;// in V
K1WbyL= 1;// in mA/V^2
K1WbyL= K1WbyL*10^-3;//in mA/V^2
I_D= 10;//in µA
I_D= I_D*10^-6;//in A
V_DD= 10;// in V
R_D= 4;// in kΩ
R_D= R_D*10^3;// in Ω

// Formul I_D= 1/2*K1WbyL*(V_GS-Vt)^2
V_GS= sqrt(2*I_D/K1WbyL)+Vt;// in V
V1= -V_GS;// in V
// Part (b)
I_D= 2;// in mA
I_D= I_D*10^-3;// in A
V2= V_DD-I_D*R_D;//in V
// Formul I_D= 1/2*K1WbyL*(V_GS-Vt)^2
V_GS= sqrt(2*I_D/K1WbyL)+Vt;// in V
V3= -V_GS;// in V
// Part (c)
I_D= 1;// in mA
I_D= I_D*10^-3;// in A
// Formul I_D= 1/2*K1WbyL*(V_GS-Vt)^2
V_GS= sqrt(2*I_D/K1WbyL)+Vt;// in V
V4= V_GS;// in V
// Part (d)
I_D= 2;// in mA
R_D= 2.5;// in kΩ
R_D= R_D*10^3;// in Ω
V_SS= 10;// in V
I_D= I_D*10^-3;// in A
V_GS= sqrt(2*I_D/K1WbyL)+Vt;// in V
V5= -V_SS+I_D*R_D;// in V
disp(V1,"The value of V1 in volts is : ")
disp(V2,"The value of V2 in volts is : ")
disp(V3,"The value of V3 in volts is : ")
disp(V4,"The value of V4 in volts is : ")
disp(V5,"The value of V5 in volts is : ")
