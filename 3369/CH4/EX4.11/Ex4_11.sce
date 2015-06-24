//Chapter 4, Exmaple 11, page 146
//Claculate the first Townsend's ionization coefficient
clc
clear
t = 0.2*10**-6 // transit time of electrons in seconds
d = 0.05 // m
ve = d/t
TC = 35*10**-9 // Time constant
a = 1/(ve*TC)
printf("\n Electron drift velocity = %e m/s",ve)
printf("\n alpha = %e m^-1",a)

// Answers may vary due to round of error
