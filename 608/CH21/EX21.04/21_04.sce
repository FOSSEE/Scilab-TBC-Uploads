//Problem 21.04: Determine the generated e.m.f. in problem 21.03 if the armature is wave-wound.

//initializing the variables:
Z = 1200; // no. of conductors
p = 4; // let, no. of pairs
c = 2; // for a wave winding
Phi = 30E-3; // in Wb
n = 500/60; // in rev/sec

//calculation:
//Generated e.m.f., E = 2*p*Phi*n*Z/c
E = 2*p*Phi*n*Z/c

printf("\n\n Result \n\n")
printf("\n Generated e.m.f. is %.0f V ",E)