clc
//Intitalisation of variables
clear
c= 0.1 //N
ka= 5.75*10^-10 
//CALCULATIONS
cH= sqrt(c*ka)
pH= -log10(cH)
//RESULTS
printf ('cH = %.2e ',cH)
printf ('\n pH of the solution = %.2f ',pH)
