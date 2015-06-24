clc();
clear;
// To calculate the resultant voltage across the capacitors
Q=2*10^-10;   //charge in coulomb
d=4;   //plate seperation in mm
d=d*10^-3;    //plate seperation in m
epsilon_r=3.5;
epsilon_0=8.85*10^-12;    //f/m
A=650;    //area in mm^2
A=A*10^-6;    //area in m^2
V=(Q*d)/(epsilon_0*epsilon_r*A);
printf("voltage across the capacitor is %f Volts",V);
