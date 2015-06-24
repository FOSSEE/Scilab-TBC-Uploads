//Caption:Calculate (i)-repeller voltage V_r ,(ii)-beam current necessary to give gap voltage of 200V
//Exa:8.16
clc;
clear;
close;
e_m_ratio=1.759*10^11;//(e/m)
V_o=300;//in volts
R_sh=20*10^3;//in ohms
f=8*10^9;//inHz
w=2*%pi*f;
n=2;//mode
L=0.001;//spacing between repeller & cavity (in m)
x=(e_m_ratio)*(2*%pi*n-%pi/2)^2/(8*w^2*L^2);
volt_diff=sqrt(V_o/(x));
V_r=(volt_diff)+V_o;//repeller volatge
J=0.582;
V_1=200;//given (in volts)
I_o=V_1/(R_sh*2*J);
disp(V_r,'Repeller voltage(in volts) =');
disp(I_o*10^3,'Necessary beam current (in milliAmp.s) =');