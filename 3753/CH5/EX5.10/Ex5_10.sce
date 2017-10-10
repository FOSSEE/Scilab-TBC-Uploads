//Example 5.10, Page number 5.30

clc;clear;close

// variable declaration
n1=1.53 //unitless
delta=0.0196//unitless

// Calculations
N_a=n1*(2*delta)**(1/2) // numerical aperture
A_a=asin(N_a)//degree
// Result
printf("Numerical aperture = %.3f",N_a)
printf("\nAcceptance angle = %.2f degrees",(A_a*180/%pi))
