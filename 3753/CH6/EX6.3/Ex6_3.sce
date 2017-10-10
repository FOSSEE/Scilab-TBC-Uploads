//Example number 6.3, Page number 6.46

clc;clear;close


// Variable declaration
chi=0.5*10**-5;    // magnetic susceptibility
H=10**6;     // field strength(ampere/m)
mew0=4*%pi*10**-7; // coefficient

// Calculation
I=chi*H;     // intensity of magnetisation(ampere/m)
B=mew0*(I+H);    // flux density in material(weber/m**2)

// Result
printf("intensity of magnetisation is : %.f Ampere/m",I)
printf("\nflux density in material is : %.3f weber/m^2",B)
