clc
//initialisation of variables
M= 18 //gms
k= 5.5*10^-8 //ohm^-1 cm^-1
lc= 349.8 //cm^2 equiv^-1 ohm^-1
la= 198 //cm^2 equiv^-1 ohm^-1
//CALCULATIONS
A= M*k
A0= lc+la
a= A/A0
a1= 1000*a/M
Kw= a1*a1
//RESULTS
printf ('degree of ionisation = %.1e ',a1)
printf ('\n ion product of water = %.1e ',Kw)
