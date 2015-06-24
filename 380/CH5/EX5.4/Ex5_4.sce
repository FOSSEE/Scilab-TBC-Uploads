//Caption:Find the (a) current in each conductor (b) the torque developed (c)the power developed
//Exa:5.4
clc;
clear;
close;
K_a=137.51;//Refer to exa:5.3
Phy=0.05;//flux per pole (Refer to exa:5.3)
E_a=1259.6;//induced emf (Refer to exa:5.3)
I=25;//current in the machine (in Amperes)
a=2;//no. of parallel paths
I_cond=I/a;
disp(I_cond,'(a) current in each conductor (in Amperes)=');
T_d=K_a*Phy*I;
disp(T_d,'(b) torque developed by machine (in Newton-meter)=');
P_d=E_a*I;
disp(P_d,'(c) Power developed (in Watts)=');