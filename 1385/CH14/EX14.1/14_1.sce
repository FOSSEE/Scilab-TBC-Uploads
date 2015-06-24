clc
//initialisation of variables
E= 0.232 //v
R= 0.0592
p= 1 //atm
R1= 0.0296
P= 740 //atm
//CALCULATIONS
pH= E/R
pH1= (E-R1*log10(P/760))/R
e= pH1-pH
//RESULTS
printf (' error in pH of solution= %.3f ',e-0.002)
