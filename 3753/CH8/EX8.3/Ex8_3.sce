//Example number 8.3, Page number 8.17


clc;clear;close

// Variable declaration
a=(2*2.82*10^-10) // in m
delta_Hs=1.971*1.6*10^-19 // unitless
k=1.38*10^-23 // Constant
T=300 // in K

// Calculations
V=a^3                           // Volume of unit cell of NaCl
N=4/V                            // Total number of ion pairs
n=N*exp(-delta_Hs/(2*k*T))  //concentration in per m^3

// Result
printf("Volume of unit cell of NaCl = %.3e m^3",V)
printf("\nTotal number of ion pairs ''N'' = %.2e",N)
printf("\nThe concentration of Schottky defects per m^3 at 300K = %.2e",n)
