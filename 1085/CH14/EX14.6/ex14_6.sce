//Exam:14.6
clc;
clear;
close;
V=((2.87)^3)*10^(-30)//Volume of unit cell of BCC iron (in m^3)
N=2//Number of atoms in the unit cell
M=1750*10^3;//saturation magnetization of BCC Iron A/m
M_Net=V*M*(1/N)//net magnetic moment per atom
Bohr_magneton=9.273*10^(-24);//Bohr_magneton (magnetic moment) in A/m2
M_moment=M_Net/Bohr_magneton;//The magnetic moment (in units of U_B)
disp(M_moment,'The magnetic moment (in units of U_B)=');