// Calculating resistance.
clc;
clear;

L=2.5*(10^-2); // Length of rectangular cross-section.
B=0.05*(10^-2);// Breadth of rectangular cross-section.
A=L*B;

l=1*(10^3);

p=1.724*(10^-8);

R=p*l/A;

disp('ohms',R,'The Resistance of the copper strip =')
