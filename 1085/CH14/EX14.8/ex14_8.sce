//Exam:14.8
clc;
clear;
close;
//Each cubic unit cell of ferrous ferric oxide contains 8 Fe2+ and 16 Fe3+ ions and
n_b=32;//
U_B=9.273*10^(-24);//Bohr_magneton
a=0.839*10^(-9);//the unit cell edge length in m
V=a^3;//volume(in m3)
M_s=n_b*U_B/V;//the saturation magnetization
disp(M_s,'the saturation magnetization=');