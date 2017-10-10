//Example number 8.4, Page number 8.18

clc;clear;close

// Variable declaration
N=6.023*10^23 // constant
delta_Hv=1.6*10^-19 //unitless
k=1.38*10^-23 //constant
T=500 // in K
mv=5.55;     // molar volume
x=2*10^-8;     // numbber of cm in 1 angstrom

// Calculations
n=N*exp(-delta_Hv/(k*T))/mv // in per cm^3
a=(n/(5*10^7*10^6))*x; // in cm

// Result
printf("The number that must be created on heating from 0 to 500K is n = %.2e per cm^3",n) // into cm^3
printf("\nAs one step is 2 Angstorms, 5*10^7 vacancies are required for 1cm")
printf("\nThe amount of climb down by the dislocation is : %.4f cm",a*10^8)
