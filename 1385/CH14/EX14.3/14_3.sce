clc
//initialisation of variables
e= 0.323 //v
R= 0.0592
c= 0.001 //molar
//CALCULATIONS
pH= (e-R*log10(c))/R
//RESULTS
printf (' pH of the unkown solution= %.2f ',pH)
