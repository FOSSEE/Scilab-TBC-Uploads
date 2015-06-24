// Example 2.20
clc;
clear;
close;
// Given data
m=2;// molecular mass
UGC= 8.3143;// universal gas constant in kJ/kg-mole-K
Cp= 14.41;// in kJ/kg-K
R= UGC/m;// in kJ/kgK
Cv= Cp-R;// in kJ/kgK
gama= Cp/Cv;
disp(R,"The value of R in kJ/kgK is :")
disp(Cv,"The value of Cv in kJ/kgK is : ")
disp(gama,"The value of gama is : ")
