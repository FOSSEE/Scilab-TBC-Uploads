clc
//Initialization of variables
wl=256*10^-9 //m
t=1 //mm
C=0.050 //mol/L
T=0.16
t2=2 //mm
//calculations
E=-log10(T) /(C*t)
A1=-log10(T)
A2=E*C*t2
Tr=10^(-A2)
//results
printf("Transmittance = %.3f",Tr)
