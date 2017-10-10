//Example number 3.1, Page number 3.32

// importing modules
clc;clear;close

// Variable declaration
V=2265 // m^3
A=92.9 // Coefficient
x=2               // The absorption become 2*A of open window

// Calculation
T=(0.16*V)/A      // Sabine's formula  
T2=(0.16*V)/(x*A) // in s

// Result
printf("Reverbration time = %0.1f s",T)
printf("\nFinal Reverbration time = %0.2f s",T2)
printf("\nThus the reverbration time is reduced to one-half of its initial value")
