clc
//Intitalisation of variables
clear
pki= 3.98
t1= 0.85 //mm
t2= 0.15 //mm
//CALCULATIONS
pH= pki+log10(t1/t2)
//RESULTS
printf ('pH of the solution = %.2f ',pH)
