// Exa 4.2
clc;
clear;
close;
// Given data
e = 1.6*10^-19;//in C
Eg= 1.48*e;// in J
R=1;// in Ω
i_p= 100;// in mA
i_p= i_p*10^-3;// in A
i_F= 10;// in mA
i_F= i_F*10^-3;// in A
Popt= 1.25;// in mW
Popt= Popt*10^-3;// in W
nitaP= Popt/((i_p^2*Eg/e)+i_F^2*R)*100;// in %
disp(nitaP,"Power efficiency in % is : ")

