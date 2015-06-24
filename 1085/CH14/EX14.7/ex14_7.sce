//Exam:14.7
clc;
clear;
close;
p=8.90*10^6;//density of nickel in gm/m3. 
N_A=6.023*10^23;//Avogadro’s number atoms/mol
At_w=58.71;//Atomic weight of Ni in gm/mol
N=p*N_A/At_w;//number of atoms/m3
U_B=9.273*10^(-24);//Bohr_magneton
M_s=0.60*U_B*N;//saturation magnetization
pi=22/7;
U_o=4*pi*10^(-7);//magnetic constant
B_s=U_o*M_s;//Saturation flux density
disp(M_s,'the saturation magnetization=');
disp(B_s,'Saturation flux density=');