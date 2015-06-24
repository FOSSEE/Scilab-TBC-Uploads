//Exa 9.6
clc;
clear;
close;
// Given data
p1 = 11;// in bar
p2 = 1.2;// in bar
H_w1 = 781.1;//in kJ/kg
L1 = 2000;// in kJ/kg
t1 = 120;// in degree c
t1 = t1 + 273;// in K
t2 = 104.81;// in degree c
t2 = t2 + 273;// in K
H_dry2 = 2683.4;// in kJ/kg
C_p = 2.607;// in kJ/kgK
// From Hw1+x*L1 = H_dry2+Cp*(t1-t2)
x = (H_dry2 + (C_p * (t1 - t2)) - H_w1) / L1;
disp(x,"Dryness fraction of steam is :");
x1 = (H_dry2 - H_w1)/L1;
disp(x1,"Maximum dryness fraction of steam is :");
