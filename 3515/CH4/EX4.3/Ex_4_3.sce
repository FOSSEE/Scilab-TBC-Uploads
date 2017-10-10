// Exa 4.3
format('v',7);
clc;
clear;
close;
format('v',5)
// Given data
I= 0.4;// in mA
unCox= 0.2;// in mA/V^2
i_D= I/2;// in mA
V_OV1= 0.2;// in V
V_OV2= 0.3;// in V
V_OV3= 0.4;// in V
WbyL1= 2*i_D/(unCox*V_OV1^2);
gm1= I/V_OV1;// in mA/V
WbyL2= 2*i_D/(unCox*V_OV2^2);
gm2= I/V_OV2;// in mA/V
WbyL3= 2*i_D/(unCox*V_OV3^2);
gm3= I/V_OV3;// in mA/V
disp("Vov (in V)            "+string(V_OV1)+"           "+string(V_OV2)+"           "+string(V_OV3))
disp("W/L                     "+string(WbyL1)+"           "+string(WbyL2)+"           "+string(WbyL3))
disp("gm(in mA/V)        "+string(gm1)+"           "+string(gm2)+"               "+string(gm3))
