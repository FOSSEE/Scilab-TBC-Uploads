clc();
clear;
// To calculate the dielectric displacement
V=10;   //potential in volts
d=2*10^-3;    //plate seperation in m
epsilon_r=6;    //dielectric constant
epsilon_0=8.85*10^-12;    //f/m
E=V/d;
D=epsilon_0*epsilon_r*E;
printf("dielectric displacement in cm^-2 is");
disp(D);

//answer given in the book is wrong in the 7th decimal point
