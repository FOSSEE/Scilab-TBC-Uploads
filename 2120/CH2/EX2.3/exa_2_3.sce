// Exa 2.3
clc;
clear;
close;
// Given data
Qp= 1230; // kJ/kg
Qv= 795; // kJ/kg
t1= 16;// in °C
t2= 96;// in °C
R_U= 8.314;
delta_T= t2-t1;// in °C
Cp= Qp/delta_T;// in kJ/kg °C
disp(Cp,"The value of Cp in kJ/kg°C")
Cv= Qv/delta_T;// in kJ/kg °C
disp(Cv,"The value of Cv in kJ/kg°C")
R= Cp-Cv;// in kJ/kg °C
disp(R,"The value of R in kJ/kg°C")
molecular_weight= R_U/R;
disp(molecular_weight,"Molecular weight of the gas is : ")
