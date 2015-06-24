// Exa 4.15
clc;
clear;
close;
// Given data 
I=0.5;// in mA
I=I*10^-3;// in A
WbyL= 50;
unCox= 250;// in µA/V^2
unCox=unCox*10^-6;// in A/V^2
V_A= 10;// in V
R_D= 4;//in kΩ
R_D= R_D*10^3;//in Ω
V_OV= sqrt(I/(WbyL*unCox));//in V
disp(V_OV,"The value of V_OV in V is : ")
gm= I/V_OV;// in A/V
disp(gm*10^3,"The value of gm in mA/V is ")
I_D=I/2;// in A
ro= V_A/I_D;// in Ω
disp(ro*10^-3,"The value of ro in kΩ is : ")
Ad= gm*(R_D*ro/(R_D+ro));// in V/V
disp(Ad,"The value of Ad in V/V is : ")
