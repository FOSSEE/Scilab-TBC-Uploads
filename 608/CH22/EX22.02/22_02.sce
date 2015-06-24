//Problem 22.02: A stator winding supplied from a three-phase 60 Hz system is required to produce a magnetic flux rotating at 900 rev/min. Determine the number of poles.

//initializing the variables:
f = 60; // in Hz
ns = 900/60; // in rev/sec

//calculation:
//ns is the synchronous speed, f is the frequency in hertz of the supply to the stator and p is the number of pairs of poles.
p = f/ns
np = p*2

printf("\n\n Result \n\n")
printf("\nnumber of poles is %.0f", np)