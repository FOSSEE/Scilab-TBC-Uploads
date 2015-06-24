//Exam:11.3
clc;
clear;
close;
D=0.002;//Grain diameter(in mm)
d=D*10^(-3);//Grain diameter(in m)
K=0.63;//Constant(in MNm^(-3/2))
sigma_i=80;//in MNm^-2
sigma_y=sigma_i+K*d^(-1/2);//Yield stress for a polycrystalline alloy
disp(sigma_y,'Yield stress for a polycrystalline alloy(in MN/m^2)');