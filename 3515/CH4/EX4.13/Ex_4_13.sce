// Exa 4.13
format('v',5);
clc;
clear;
close;
// Given data 
Vtp= -0.8;// in V
KpWL= 3.5;// in mA/V^2
I=0.7;// in mA
I=I*10^-3;// in A
R_D= 2;// in kΩ
R_D=R_D*10^3;// in Ω
KpWL=KpWL*10^-3;//in A/V^2
v_G1= 0;// in V
v_G2=v_G1;// in V
VSS= 2.5;// in V
VDD=VSS;// in V
VCS= 0.5;// in V
// Part (a)
V_OV= -sqrt(I/KpWL);// in V
disp(V_OV,"The value of V_OV in volts is : ")
V_GS= V_OV+Vtp;// in V
disp(V_GS,"The value of V_GS in volts is : ")
V_G= 0;// as gate is connected ground
v_S1= V_G-V_GS;// in V
v_S2= v_S1;// in V
disp(v_S1,"The value of V_S in volts is : ")
v_D1= I/2*R_D-VDD;// in V
v_D2=v_D1;// in V
disp(v_D1,"The value of v_D1 in V is : ")
disp(v_D2,"The value of v_D2 in V is : ")

// Part (b)
V_CMmin= I*R_D/2-VDD+Vtp;// in V
V_CMmax= VSS-VCS+Vtp+V_OV;// in V
disp(V_CMmin,"The value of V_CMmin in volt is : ")
disp(V_CMmax,"The value of V_CMmax in volt is : ")
