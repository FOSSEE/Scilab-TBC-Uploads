clc
//initialisation of variables
c= 0.1 //M
Ka= 6.3*10^-5
pKw= 14
//CALCULATIONS
pH= -0.5*log10(Ka)+0.5*pKw+0.5*log10(c)
//RESULTS
printf (' pH of a buffer solution = %.2f ',pH)
