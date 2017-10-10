////
//Variable Declaration
T = 22.0           //Temperature of the reaction,°C
k1 = 7.0e-4        //Rate constants for rxn 1, 1/s
k2 = 4.1e-3        //Rate constant for rxn 2, 1/s 
k3 = 5.7e-3        //Rate constant for rxn 3, 1/s 
//Calculations
phiP1 = k1/(k1+k2+k3)

//Results
printf("\n Percentage of Benzyl Penicillin that under acid catalyzed reaction by path 1: %4.2f ",phiP1*100)

