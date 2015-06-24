clc
//initialisation of variables
kw= 10^-14 
ka= 2.69*10^-5
c= 0.1 //N
//CALCULATIONS
pH= -log10(sqrt(kw*ka/c))
//RESULTS
printf ('pH = %.2f ',pH)
