//Problem 28.06: An inductor of Q-factor 60 is connected in series with a capacitor having a Q-factor of 390. Determine the overall Q-factor of the circuit.

//initializing the variables:
QL = 60; // Q-factor
Qc = 390; // Q-factor

//calculation:
QT = QL*Qc/(QL + Qc)

printf("\n\n Result \n\n")
printf("\n the overall Q-factor is %.0f \n",QT)