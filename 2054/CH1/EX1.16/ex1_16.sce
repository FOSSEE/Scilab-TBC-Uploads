//Exa:1.16
clc;
clear;
close;
s_f=0.04;//full load slip
I_ratio=6;//Ratio of Starting current to full load current
T_ratio=I_ratio^2*s_f;//Ratio of Starting torque to full load torque
disp(T_ratio,'(a) Starting Torque =');
disp('   times the full load torque (T_f)');
s_max=sqrt((I_ratio^2-1)/(625-I_ratio^2));
disp(s_max,'(b) Slip at which Maximum torque occurs=');
T_rm=(1/2)*((s_f/s_max)+(s_max/s_f));
disp(T_rm,'(c) Ratio of maximum torque to full load torque=');