//Exam:3.24
clc;
clear;
close;
H_f=68*1000;//enthalpy of formation of vacancies(in J/mol)
T_1=0;//temp (in K)
T_2=300;//temp (in K)
R=8.314;//constant
n=exp(-H_f/(R*T_2));//equilibrium concentration of vacancies in aluminium at 300 K
disp(n,'equilibrium concentration of vacancies in aluminium at 300 K=');