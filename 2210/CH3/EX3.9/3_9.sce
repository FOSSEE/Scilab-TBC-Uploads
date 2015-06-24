//Chapter 3, Problem 9
clc
Z0=50                           //characteristic impedance in ohm
Zl0=5                         //ratio of Z/Z0 

//calculation
Z0t=sqrt(Zl0)
Z0t1=Z0*Z0t
printf("Impedance = %.2f ohm",Z0t1)
