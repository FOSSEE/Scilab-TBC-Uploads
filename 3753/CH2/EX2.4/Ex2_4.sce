//Example number 2.4, Page number 2.33


clc;clear;close

// Variable declaration
lamda=5000*10**-10 // in m
mu_0=1.5533 // unitless
mu_1=1.5442// unitless

// Calculations
t=lamda/(2*(mu_0 - mu_1)) // in m
         
// Result
printf("Thickness,t=%0.2f micro m",(t*10**6))
