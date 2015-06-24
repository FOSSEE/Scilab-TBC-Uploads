//Problem 9.14: Calculate the mutual inductance between two coils when a current changing at 200 A/s in one coil induces an e.m.f. of 1.5 V in the other.

//initializing the variables:
dI1dt = 200; // change of current with change in time in A/s
N = 2; // no. of coils
E2 = 1.5; // in Volts

//calculation:
M = abs(E2)/dI1dt

printf("\n\n Result \n\n")
printf("\n mutual inductance, M = %.4f H\n", M)