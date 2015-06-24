// Exa 8.5
clc;
clear;
close;
// Given data
T_o = 298;// in K
m2 = 25000;
s2 = 16775;
m3 = 75000;
s3 = 17448;
m1 = 1000000;
s1 = 1582;
Q = -16;// in MJ
Q = Q * 10^3;// in kJ
I = (T_o * ((m2 * s2) + (m3 * s3) - (m1 * s1))) - Q;// in cal/hr
I=I*10^-3;// in kcal/hr
disp(I,"The irreversiblity in kcal/hr");

// Note: There is calculation error in evaluating the value of the irreversibility in kcal/hr. so the answer in the book is wrong and coding is right.
