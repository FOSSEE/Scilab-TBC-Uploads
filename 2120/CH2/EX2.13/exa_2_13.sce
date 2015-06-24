// Exa 2.13
clc;
clear;
close;
// Given data
T1= 300;// in K
T2= 900;// in K
m=2;// in kg
Cp= '40+600/sqrt(T)+7000/T';// in kJ/kg mole K
delta_H=m* integrate('40-600/sqrt(T)+7000/T','T',T1,T2);// in kJ/kg mole
delta_H= delta_H/17.03;// in kJ/kg
disp(delta_H,"Change in enthalpy in kJ/kg is : ")
