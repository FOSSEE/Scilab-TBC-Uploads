// Exa 2.16
clc;
clear;
close;
// Given data
T1= 500;// in K
T2= 2000;// in K
m=1;// in kg
Cp= '11.515-172/sqrt(T)-1530/T';// in kcal/kg mole K
delta_H=m* integrate('11.515-172/sqrt(T)-1530/T','T',T1,T2);// in kcal/kg mole
disp(delta_H,"Change in enthalpy in kcal/kg mole is : ")
