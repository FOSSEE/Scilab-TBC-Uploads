//Example 5.15, Page number 5.32

clc;clear;close

// variable declaration
L=10 // in km
n1=1.55 //unitless
delta=0.026//unitless
C=3*10**5

// Calculations
delta_T=(L*n1*delta)/C //unitless
B_W=10/(2*delta_T) // Hz/km

// Result
printf("Total dispersion = %.1f ns",(delta_T/10**-9))
printf("\nBandwidth length product = %.2f Hz-km",(B_W/10**5))

// Answer given in the text book is wrong"
