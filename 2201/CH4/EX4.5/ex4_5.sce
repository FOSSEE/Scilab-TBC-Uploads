// Exa 4.5
clc;
clear;
close;
// Given data
n = 4.4*10^22;// total number of Ge atoms/cm^3
n_a = 1*10^8;// number of impurity atoms
N_A = n/n_a;// in atoms/cm^3
N_A = N_A * 10^6;// in atoms/m^3
n_i = 2.5*10^13;// in atoms/cm^3
n_i = n_i * 10^6;// in atoms/m^3
N_D = 10^3 * N_A;// in atoms/m^3
V_T = 26*10^-3;// in A
V_J = V_T*log( (N_A*N_D)/((n_i)^2) );// in V
disp(V_J,"The contact difference of potential in V is");
disp("For a silicon P-N junction")
n = 5*10^22;
N_A = n/n_a;// in atoms/cm^3
N_A = N_A * 10^6;// in atoms/m^3
N_D = 10^3 * N_A;// in atoms/m^3
n_i = 1.5*10^10;// in /cm^3
V_J = V_T*log(N_A*N_D/n_i^2);// in V
disp(V_J,"The contact difference of potential in V is");

// Note: There is a calculation error to find the value of V_J in the book, so the answer in the book is wrong.
