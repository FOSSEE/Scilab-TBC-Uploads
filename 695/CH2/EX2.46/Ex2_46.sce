//Caption:Find the percentage reduction in feild flux and value of additional resistance
//Exa:2.46
clc;
clear;
close;
V=220;//in volts
R_a=0.2;//in ohms
R_f=110;//in ohms
N_1=700;//in rpm
N_2=900;//in rpm
T_a1=90;//in N-m
T_a2=70;//in N-m
I_1=27;//in amperes
I_f=V/R_f;
I_a1=I_1-I_f;
E_b1=V-I_a1*R_a;
x=(V+sqrt(V^2-4*276.43*4.168))/(2*276.43);
disp((1-x)*100,'percentage reduction in feild flux (%)=');
I_f2=x*I_f;
R=(V-I_f2*R_f)/I_f2;
disp(R,'Value of additional resistance (in ohms)=')