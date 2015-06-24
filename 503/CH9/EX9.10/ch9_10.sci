//to calculate max torque and slip, starting torque

clc;
k=5;    //k=I_s/I_fl
s_fl=0.04;
s_max_T=sqrt((s_fl^2*(1-k^2))/((k*s_fl)^2-1));disp(s_max_T,'slip');
T_max=.5*(s_max_T^2+s_fl^2)/(s_fl*s_max_T);disp(T_max,'max torque(pu)');

T_s=k^2*s_fl;disp(T_s,'starting torque(pu)');