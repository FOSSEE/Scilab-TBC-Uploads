// Exa 2.17
clc;
clear;
close;
// Given data
u='196+0.718*t';
pv= '0.278*(t+273)';
duBydt= 0.718;
Cv= duBydt;// in kJ/kg-K
h= u+pv;
h='273.351+1.005*t';
dhBydt= 1.005;// in kJ/kg-K
Cp= dhBydt;// in kJ/kg-K
disp(Cv,"The value of Cv in kJ/kg-K is : ")
disp(Cp,"The value of Cp in kJ/kg-K is : ")
