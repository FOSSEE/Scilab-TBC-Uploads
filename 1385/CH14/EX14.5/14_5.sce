clc
//initialisation of variables
E= 0.034 //v
E1= -0.280 //v
E2= -0.699 //v
E3= 0.0592
//CALCULATIONS
pH= (E1-E-E2)/E3
pH1= (E-E2+E1)/E3
//RESULTS
printf (' pH of the unkown solution= %.2f ',pH)
printf (' \n pH of the unkown solution= %.2f ',pH1)

