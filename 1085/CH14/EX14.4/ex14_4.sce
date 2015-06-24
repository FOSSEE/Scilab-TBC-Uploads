//Exam:14.4
clc;
clear;
close;
C=10^(-9);//capacitance(in F)
d=2*10^(-3);//distance of separation in a parallel plate condenser
E_o=8.854*10^(-12);//dielectric constant
A=(10*10^(-3))*(10*10^(-3));//area of parallel plate condenser
//C=E_o*E_r*A/d
E_r=C*d/(E_o*A);//Relative dielectric constant
disp(ceil(E_r),'Relative dielectric constant of a barium titanate crystal')