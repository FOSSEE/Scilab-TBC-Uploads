//Example 14.10 // Energy to create defect
clc;
clear;
//given data :
a=2.82D-10;// interionic distance in m
T=298;// temperture in kelvin
k=8.625D-5;// Boltzmann constant eV/k
n=5D11;// density of defects in per m3
V=(2*a)^3;//volume of unit cell
p=4;// no. of ion pairs
N=p/V;// no. of ion pairs per m3
E=2*k*T*log(N/n);// energy in eV
disp(E, "Energy to create defect in eV")
