// Exa 4.10
format('v',4);
clc;
clear;
close;
// Given data  
delta_RDbyRD= 2/100;
delta_WLbyWL= 2/100;
delta_Vt= 2;//in mV
delta_Vt= delta_Vt*10^-3;// in V
//(From Exa 4.4)
V_A= 20;// in V
R_D= 5;// in kΩ
R_D= R_D*10^3;// in Ω
I= 0.8;// in mA
I=I*10^-3;// in A
i_D= I/2;// in A
unCox= 0.2;// mA/V^2
unCox= unCox*10^-3;// in A/V^2
WbyL= 100;
// Formula i_D= 1/2*unCox*WbyL*V_OV^2
V_OV= sqrt(2*i_D/(unCox*WbyL));// in V
V_OS1= V_OV/2*delta_RDbyRD;// in V

// V_OS due to W/L ratio
V_OS2= V_OV/2*delta_WLbyWL;// in V

// V_OS due to threshold voltage
V_OS3= delta_Vt;// in V
// Total offset voltage
V_OS= sqrt(V_OS1^2+V_OS2^2+V_OS3^2);// in V
V_OS= V_OS*10^3;// in mV
disp(V_OS,"Total offset voltage in mV is : ")
