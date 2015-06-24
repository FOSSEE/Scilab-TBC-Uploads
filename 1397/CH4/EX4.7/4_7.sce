//clc();
clear;
//To determine permeability
H=1800;       //magnetizing field in amp/m
phi=3*10^-5;        //magnetic flux in wb
A=0.2*10^-4;        //cross-sectional area in m^2;
B=phi/A;
mew=B/H;
printf("permeability is %f Henry/m",mew);

//answer in book is wrong
