//Example number 3.8, Page number 3.34

clc;clear;close

// Variable declaration
d=7300                  // density in (kg/m**3)
N=6.02*10**26           // Avagadro Number
A=118.7                 // Atomic Weight
E=1.9                 // Effective mass
e=1.6*10**-19

// Calculations
n=(d*N)/A // no. of electrons
m=E*9.1*10**-31 // in kg
x=4*%pi*10**-7*n*e**2 // in kg/m^2
lamda_L=sqrt(m/x) // in m
      
// Result
printf("Number of electrons per unit volume = %0.1e per m^3",n)
printf("\nEffective mass of electron ''m*'' = %0.2e kg",m)
printf("\nPenetration depth = %0.5f Angstroms",(lamda_L*10**8))
// The answer given in the text book is wrong
