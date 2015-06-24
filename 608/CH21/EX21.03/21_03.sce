//Problem 21.03: An 8-pole, lap-wound armature has 1200 conductors and a flux per pole of 0.03 Wb. Determine the e.m.f. generated when running at 500 rev/min.

//initializing the variables:
Z = 1200; // no. of conductors
p = 1; // let, no. of pairs
c = 2*p; // for a lap winding
Phi = 30E-3; // in Wb
n = 500/60; // in rev/sec

//calculation:
//Generated e.m.f., E = 2*p*Phi*n*Z/c
E = 2*p*Phi*n*Z/c

printf("\n\n Result \n\n")
printf("\n Generated e.m.f. is %.0f V ",E)