//Problem 21.01: An 8-pole, wave-connected armature has 600 conductors and is driven at 625 rev/min. If the flux per pole is 20 mWb, determine the generated e.m.f.

//initializing the variables:
Z = 600; // no. of conductors
c = 2; // for a wave winding
p = 4; // no. of pairs
n = 625/60; // in rev/sec
Phi = 20E-3; // in Wb

//calculation:
//Generated e.m.f., E = 2*p*Phi*n*Z/c
E = 2*p*Phi*n*Z/c

printf("\n\n Result \n\n")
printf("\n the generated e.m.f is %.0f V ",E)