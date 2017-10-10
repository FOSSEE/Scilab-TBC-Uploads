//Example number 3.4, Page number 3.34

clc;clear;close

// Variable declaration
V=12*10**4 // in m^3
A=13200 // in m^2
x=2               // The absorption become 2*A of open window

// Calculation
T1=(0.16*V)/A      // Sabine's formula  
T2=(0.16*V)/(x*A) // in s
Td=T1-T2 // in s

// Result
printf("T1 = %0.2f second",T1)
printf("\nT2 = %0.2f second",T2)
printf("\nChange in Reverbration time = %0.3f second",Td)
