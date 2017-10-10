// Exa 4.4
format('v',7);
clc;
clear;
close;
// Given data
format('v',11)
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
disp(V_OV,"The value of V_OV in volts is : ")
gm= I/V_OV;// in A/V;
disp(gm*10^3,"The value of gm in mA/V is : ")
r_o= V_A/i_D;// in Ω
disp(r_o*10^-3,"The value of r_o in kΩ is : ")
// Ad= v_o/v_id = gm*(R_D || r_o)
Ad= gm*(R_D*r_o/(R_D+r_o)) ;// in V/V
disp(Ad,"Differential gain in V/V is : ")


