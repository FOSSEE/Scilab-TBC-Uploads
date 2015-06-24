// Example 7.5, Page No-334
clear
clc

R1=100*10^3
R2=10*10^3
R3=20*10^3
C1=0.01*10^-6
Vsat=14

// Part A
T=4*R1*R2*C1/R3
Tn=T*1000
printf('Time period T= %d ms', Tn)

// Part B
f=1/T
printf('\nfrequency f= %d Hz', f)

// Part C
printf('\nPeak value is +14V and -14V')

// Part D
Vp=R2*Vsat/R3
printf('\nTriangular wave oscillates between  %d V and - %d V', Vp, Vp)
