//Exam:18.1
clc;
clear;
close;
E_f=69;//modulus of elasticity in GPa
V_f=40/100;//Volume of glass fibres %
E_m=3.4;//modulus (in GPa)
V_m=60/100;//Volume of polyester resin %
E_cl=E_m*V_m+E_f*V_f;//modulus of elasticity (in Gpa)
disp(ceil(E_cl),'modulus of elasticity(in Gpa)=');