// Example 8.5, Page No-371
clear
clc

Iadjmax=100*10^-6
R1=240
Vref=1.25

// First case: Vo=4
Vo=4
R2a1=(Vo-Vref)/(Vref/R1 + Iadjmax)
R2a=R2a1/1000
printf('\nR2= %.2f kohm', R2a)

// First case: Vo=12
Vo=12
R2b1=(Vo-Vref)/(Vref/R1 + Iadjmax)
R2b=R2b1/1000
printf('\nR2= %.2f kohm', R2b)
