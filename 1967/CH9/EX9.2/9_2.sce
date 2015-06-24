clc
//initialisation of variables
clear
M= 28 //gms
T= 25 //C
I= 13.9*10^-40 // gcm^2
s= 2
//CALCULATIONS
S= 4.576*(1.5*log10(M)+2.5*log10(273.2+T)-0.5055)
S1= 4.576*(log10(I)+log10(273.2+T)-log10(s)+38.82)
//RESULTS
printf ('Standard entropy = %.1f E.U.mole^-1',S)
printf ('\n Standard entropy = %.1f E.U.mole^-1',S1)
