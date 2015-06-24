clc
//initialisation of variables
St= 0.04 //N/m
d1= 5 //cm
d2= 15 //cm
//CALCULATIONS
W= St*10^3*2*4*%pi*((d2/2)^2-(d1/2)^2)
//REULTS
printf ('Work= %.2e dyn cm or erg',W)
