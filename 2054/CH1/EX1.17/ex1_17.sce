//Exa:1.17
clc;
clear;
close;
I_ratio=8;//Ratio of short circuit current to full load current
s_f=0.04;//full load slip
T_r1=I_ratio^2*s_f;
disp(T_r1,'(a) Sarting Torque when started by means of direct switching=');
disp('   times the full load torque');
T_r2=I_ratio^2*s_f/3;
disp(T_r2,'(b) Sarting Torque when started by star-delta starter=');
disp('   times the full load torque');
K=sqrt(3/8);// transformation ratio of transformer
T_st=K^2*I_ratio^2*s_f;
disp(T_st,'(C) Starting Torque =');
disp('   times the full load torque');