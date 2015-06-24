// Example 7.3, Page No-329
clear
clc

R1=116*10^3
R2=100*10^3
Vsat=14

// Part A
f=1000
T=1/f
// As log value is approx 1
RC=T/2
RC1=RC*1000
printf('RC= %.1f *10^-3 sec', RC1)

// Part B
C=0.01*10^-6
R=RC/C
Rn=R/1000
printf('\nR= %d kohm', Rn)

// Part C
Vmax=2*Vsat*(R2/(R1+R2))
printf('\nMaximum value of differential input voltage= %.2f V', Vmax)
