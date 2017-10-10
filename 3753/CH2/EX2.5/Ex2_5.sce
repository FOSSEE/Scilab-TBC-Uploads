//Example number 2.5, Page number 2.34


clc;clear;close

// Variable declaration
lamda=6000*10**-10 // in m
t=0.003*10**-2 // in m

// Calculations
delta_mu=lamda/(4*t) // unitless

// Result
printf("Birefringence of the crystal delta/mu=%0.3f",delta_mu)
