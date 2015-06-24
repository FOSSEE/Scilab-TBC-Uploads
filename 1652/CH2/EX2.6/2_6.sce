clc
//Initialization of variables
t=1622 //years
per=1 //percent
//calculations
Nratio=1-per/100
x=t*log10(Nratio) / log10(0.5)
//results
printf("Time taken = %.1f years",x)
