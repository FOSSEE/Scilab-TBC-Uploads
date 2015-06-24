// Scilab code Exa2.14 : : Page 93 (2011)
clc; clear;
T_h_1 = 2.7*24*3600; // Half life of Au-198, sec
T_h_2 = 3.15*24*3600; // Half life of Au-199, sec
S_1 = 99e-028; // Crossection for first reaction, Sq.m
S_2 = 2.6e-024; // Crossection for second reaction, Sq.m
I = 1e+018; // Intensity of radiation, per Sq.m per sec
L_1 = I*S_1;    // Decay constant of Au-197, per sec
L_2 = 0.693/T_h_1+I*S_2; // Decay constant of Au-198, per sec
L_3 = 0.693/T_h_2; // Decay constant of Au-199, per sec
N_0 = 6.022137e+023; // Avogadro number
N_1 = N_0/197; // Initial number of atoms of Au-197
t = 30*3600; // Given time, sec
p = [exp(-L_1*t)]/[(L_2-L_1)*(L_3-L_1)];
q = [exp(-L_2*t)]/[(L_1-L_2)*(L_3-L_2)];
r = [exp(-L_3*t)]/[(L_1-L_3)*(L_2-L_3)];
N3 = N_1*L_1*L_2*[p+q+r];
N_199 = N3;
L = L_3*N_199; // Disintegration rate of Au-199, per sec
printf("\nThe disintegration rate of Au-199 = %3.1e ", L);

// Result
// The disintegration rate of Au-199 = 1.9e+012  (Wrong answer in the textbook)