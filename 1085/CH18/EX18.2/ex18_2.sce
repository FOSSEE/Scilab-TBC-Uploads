//Exam:18.2
clc;
clear;
close;
E_f=69;//modulus of elasticity in GPa
V_f=40/100;//Volume of glass fibres %
E_m=3.4;//modulus (in GPa)
V_m=60/100;//Volume of polyester resin %
E_cl=E_m*E_f/(E_m*V_f+E_f*V_m);//modulus of elasticity when the stress is applied perpendicular to the direction of the fibre alignment(in Gpa)
disp(E_cl,'modulus of elasticity when the stress is applied perpendicular to the direction of the fibre alignment(in Gpa)=');