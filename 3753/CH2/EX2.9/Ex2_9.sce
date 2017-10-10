//Example number 2.9, Page number 2.35

clc;clear;close

// Variable declaration
t=0.7*10**-3 // in s
E=8.8*10**10 // V
rho=2800 // kg/m^3

// Calculation
f=(1/(2*t))*sqrt(E/rho)       // Fundamental frequency

// Result
printf("Fundamental frequency,f = %.e Hz",f)
