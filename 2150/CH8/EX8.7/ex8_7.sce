// Exa 8.7
clc;
clear;
close;
// Given data
V1 = 745;// in µV
V1 = V1 * 10^-6;// in V
V2 = 740;// in µV
V2 = V2 * 10^-6;// in V
Av = 5*10^5;
CMRR = 80;// in dB
// Formula CMRR in dB= 20*log(Av/Ac)
Ac= Av/(10^(CMRR/20));
disp(Ac,"The common mode gain is");
V_o = Av*(V1-V2)+Ac*((V1+V2)/2);// in V
disp(V_o,"The output voltage in V is");

// Note: In the book the calculation of finding the value of common mode gain  (i.e. Ac) is wrong, so the answer in the book is wrong
