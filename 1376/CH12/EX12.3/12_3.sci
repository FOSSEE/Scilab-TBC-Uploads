//12.3
clc;
d=10^-4;
A=6*10^-3;
permitivity_absolute=8.854*10^-12;
permitivity_relative=1
C=permitivity_absolute*permitivity_relative*A*10^12/d;
printf("capacitance=%.2f pF",C)