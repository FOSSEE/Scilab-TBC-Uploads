//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_10.sce.

clc;
clear;
N=800;
Hi=50e-3;
Wi=40e-3;
l_not=2e-3;
A_not=2500e-6;
leakage_factor=1.2;
mew_not=4e-7*%pi;
mew_r=322;
pi_not=2.5e-3;
lc=600e-3;                  //from the figure

B_not=pi_not/A_not;
H_not=B_not/mew_not;
F_not=H_not*l_not;
pi_T=pi_not*leakage_factor;
Ac=Wi*Hi*0.92;                  //given 8 percent is taken for insulation . so (1-0.08=0.92)
Bc=pi_T/Ac;
Hc=Bc/(mew_r*mew_not);
Fc=Hc*lc;
F=Fc+F_not;
Im=F/N;
printf("\n Magnetizing current=%d A \n",Im)
