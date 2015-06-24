// Example 8.8, Page No-380
clear
clc

Vref=7.15
Vo=5
k=Vref/Vo
printf('(R1b+R2)/R2= %.2f', k)
k1=k-1
printf('\nR1 = %.2f * R2', k1)

// For min voltage of 2V
Vom=2
km=Vref/Vom
printf('\n(R1a+R1b+R2)/R2= %.3f', km)
km1=km-1.43
printf('\nR1a = %.3f * R2', km1)

R1a=10000
R1b=2000
R2=R1a/2.145
R2n=R2/1000
printf('\nR2= %.2f kohm', R2n)
R1=6000
R3=(R1*R2)/(R1+R2)
R3n=R3/1000
printf('\nR3= %.2f kohm', R3n)
