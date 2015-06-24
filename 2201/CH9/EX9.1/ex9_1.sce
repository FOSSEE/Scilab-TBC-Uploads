// Exa 9.1
clc;
clear;
close;
// Given data
V_TN = 0.7;// in V
W = 45*10^-4;// in cm
L = 4;// in µm
L = L * 10^-4;// in cm
t_ox = 450;// in Å
t_ox = t_ox*10^-8;// in cm
V_GS = 1.4;// in V
Miu_n = 700;// in cm^2/V-s
Epsilon_ox = (8.85*10^-14)*(3.9);// in F/cm
k_n = (W*Miu_n*Epsilon_ox)/(2*L*t_ox);// A/V^2
disp(k_n*10^3,"The value of k_n in mA/V^2 is : ")
I_D = k_n*((V_GS-V_TN)^2);// in A
disp(I_D*10^3,"The current in mA is ");

// Note: There is a calculation error to find the value of k_n, So the answer in the book is wrong
