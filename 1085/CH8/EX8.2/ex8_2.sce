//Exam:8.2
clc;
clear;
close;
d_o=12.7;//tensile test specimen diameter (in mm)
d=12;//tensile test specimen diameter after load (in mm)
P=76*10^3;//load(in N)
pi=22/7;
A_o=(pi/4)*(d_o^2);//Initial area of cross section(in mm^2)
A=(pi/4)*(d^2);//area of cross section after load of 76 kN
E_stress=P/A_o;//engineering stress
T_stress=P/A;//true stress
T_strain=log(A_o/A);//true strain
E_strain=exp(T_strain)-1;//engineering strain
disp(E_stress,'engineering stress(in N/mm^2)=');
disp(T_stress,'true stress(in N/mm^2)=');
disp(E_strain,'engineering strain=');
disp(T_strain,'true strain=');