//Problem 22.03: A three-phase 2-pole motor is to have a synchronous speed of 6000 rev/min. Calculate the frequency of the supply voltage.

//initializing the variables:
p = 2/2; // number of pairs of poles
ns = 6000/60; // in rev/sec

//calculation:
//ns is the synchronous speed, f is the frequency in hertz of the supply to the stator and p is the number of pairs of poles.
f = p*ns

printf("\n\n Result \n\n")
printf("\nfrequency is %.0f Hz",f)