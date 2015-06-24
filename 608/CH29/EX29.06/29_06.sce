//Problem 29.06: A capacitor having a Q-factor of 300 is connected in parallel with a coil having a Q-factor of 60. Determine the overall Q-factor of the parallel combination.

//initializing the variables:
QL = 60; // Q-factor
Qc = 300; // Q-factor

//calculation:
QT = QL*Qc/(QL + Qc)

printf("\n\n Result \n\n")
printf("\n the overall Q-factor is %.0f \n",QT)