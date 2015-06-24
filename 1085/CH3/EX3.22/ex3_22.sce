//Exam:3.22
clc;
clear;
close;
N=6.023*10^23;//avogadro number
T=1000;//absolute temperature
R=8.314;//constant
H_f=100*1000;//enthalpy of formation of vacancies(in J/mol)
n=N*exp(-(H_f)/(R*T));//number of vacancies created during heating(in per mol)
V=5.5*10^(-6);//volume of 1 mole of the crystal in m^3
n_1=n/V;//number of vacancies created during heating(in per m^3)
disp(n_1,'number of vacancies created during heating(in per m^3)=');