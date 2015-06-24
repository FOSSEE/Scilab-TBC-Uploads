clc
//Intitalisation of variables
clear
pki= 7
t1= 3 //drops
t2= 7 //drops
//CALCULATIONS
pH= pki+log10(t1/t2)
//RESULTS
printf ('pH of the solution = %.2f ',pH)
