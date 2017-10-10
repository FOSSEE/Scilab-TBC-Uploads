////
//Variable Declaration
kAbykI = 2.0       //Ratio of rate constants
kA = 0.1           //First order rate constant for rxn 1, 1/s 
kI = 0.05          //First order rate constant for rxn 2, 1/s 
//Calculations
tmax = 1/(kA-kI)*log(kA/kI)

//Results
printf("\n Time required for maximum concentration of A: %4.2f s",tmax)

