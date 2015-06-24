//1.1
clc;
Ic=8*10^-3;
//let dv/dt =A
A=190*10^6;
C=Ic/A*10^12;
printf("Equivalent capacitance of depletion layer = %.1f uF", C)