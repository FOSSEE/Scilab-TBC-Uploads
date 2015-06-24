//Exa 8.4
clc;
clear;
close;
// Given data
h_i = 726.1;
h_o = 25.03;
T_o = 298;// in K
s_i = 1.582;
s_o = 0.087;
h2 = 669;
s2 = 1.677;
h3 = 52.17 + (0.9 * 567.7);
s3 = 0.1748 + (0.9 * 1.7448);
sai_i = (h_i - h_o) - (T_o * (s_i - s_o));// in kcl/kg
disp(sai_i,"The availablibity per kg of steam entering in kcl/kg is :");
sai_e = (0.25 * ((h2 - h_o) - (T_o * (s2 - s_o)))) + (0.75 * ((h3 - h_o) - (T_o * (s3 - s_o)))) ;// in kcl/kg
disp(sai_e,"The availablibity per kg of steam leaving in kcl/kg is :");
w_rev = sai_i - sai_e;// in kcl/kg
disp(w_rev,"reveseble work per kg of steam in kcl/kg");

// Note: There is calculation error in evaluating the value of availability per kg of steam leaving in kcl/kg . so the answer in the book is wrong and coding is right.
