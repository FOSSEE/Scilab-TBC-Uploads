clc
//initialisation of variables
clear
T= 25 //C
I= 4.33*10^-40 // gcm^2
I1= 2.78*10^-40 //g cm^2
s= 3
//CALCULATIONS
S= 4.576*(0.5*log10(I1^2*I)+1.5*log10(273.2+T)-log10(s)+58.51)
//RESULTS
printf ('Standard entropy = %.1f cal deg^-1 mole^-1',S)
