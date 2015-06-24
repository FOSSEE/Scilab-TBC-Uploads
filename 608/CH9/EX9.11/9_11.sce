//Problem 9.11: Calculate the coil inductance when a current of 4 A in a coil of 800 turns produces a flux of 5 mWb linking with the coil.

//initializing the variables:
I = 4; // in Amperes
N = 800; //turns
Phi = 0.005; // in Wb

//calculation:
L = N*Phi/I

printf("\n\n Result \n\n")
printf("\n Inductance L = %.0f H\n",L)