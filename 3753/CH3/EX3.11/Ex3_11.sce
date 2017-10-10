//Example number 3.11, Page number 6.36

clc;clear;close

// Variable declaration
Tc1=4.185 // K
M1=199.5// unitless
M2=203.4// unitless

// Calculations
Tc2=Tc1*(M1/M2)**(1/2) // in K

// Result
printf("New critical temperature for mercury = %0.3f K",Tc2)
