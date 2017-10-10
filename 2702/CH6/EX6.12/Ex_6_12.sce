// Exa 6.12
clc;
clear;
close;
// Given data
L= 50;// in µH
L= L*10^-6;// in H
C1= 300;// in pF
C1= C1*10^-12;// in F
C2= 100;// in pF
C2= C2*10^-12;// in F
C_eq= C1*C2/(C1+C2);// in F
f= 1/(2*%pi*sqrt(L*C_eq));// in Hz
disp(f*10^-6,"Frequency of oscillations in MHz is : ")
Bita= C2/C1;
// (iii)
// A*Bita >=1, so A*Bita= 1  (for sustained oscillations)
Amin= 1/Bita;
disp(Amin,"Minimum gain to substain oscillations is : ")

