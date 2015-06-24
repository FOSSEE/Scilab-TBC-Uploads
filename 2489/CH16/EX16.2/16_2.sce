clc
//Intitalisation of variables
clear
c= 0.01 //M
ka= 1.75*10^-5
pkw= 14
ka1= 1.79
//CALCULATIONS
pH= 0.5*pkw-0.5*log(ka)+0.5*log(c)-ka1
//RESULTS
printf ('pH of solution = %.2f ',pH)
