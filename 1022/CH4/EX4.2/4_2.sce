clc
//initialisation of variables
T= 68 //F
d= 1.0 //gm/cm^3
mu= 10^-2 //gm/cm s
SIm= 10^-4 //m^2/s
m= 10.76 //ft
//CALCULATIONS
SI= mu*SIm
BU= SI*m
//RESULTS
printf ('SI Units= %.2e m^2/s',SI)
printf (' \n British Units= %.2e ft/s',BU)
