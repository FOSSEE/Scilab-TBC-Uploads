//Problem 9.09: An e.m.f. of 1.5 kV is induced in a coil when a current of 4 A reduced to 0 A in a 8 ms. find the inductance of the coil.

//initializing the variables:
E = 1500; // in Volts
dt = 0.008; // Change of time in sec
dI = 4; // change of current in A/s

//calculation:
L = abs(E)*dt/dI

printf("\n\n Result \n\n")
printf("\n Inductance L = %.0f H\n",L)