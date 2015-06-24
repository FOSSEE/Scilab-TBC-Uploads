//Exa:1.26
clc;
clear;
close;
I_1=50;//in amperes
V=500;//in volts
N_ratio=0.5;//Speed Ratio
E_b1=V;//Back Emf (in volts)
T_ratio=N_ratio^3;//Torque ratio
I_2=I_1*sqrt(T_ratio);//in amperes
R=(E_b1-(I_2*N_ratio*E_b1/I_1))/I_2;
disp(R,'Value of additional resistance (in ohms)=');