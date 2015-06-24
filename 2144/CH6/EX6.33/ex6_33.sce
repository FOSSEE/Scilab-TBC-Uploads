// Exa 6.33
clc;
clear;
close;
// Given data
T1 = 400;// in degree C
T1 = T1 + 273;// in K
T2 = 72.7;// in degree C
T2 = T2 + 273;// in K
Eta = ((T1-T2)/T1)*100;// in %
disp("For carnot cycle : ")
disp(Eta,"Rankine efficiency in % is : ")
H1 = 3248;// in kJ/kg
h_f2 = 304.5;// in kJ/kg
del_H = 809.2;// in kJ/kg
Eta = (del_H/(H1-h_f2))*100;// in %
disp("For Rankine cycle : ")
disp(Eta,"Rankine efficiency in % is");
