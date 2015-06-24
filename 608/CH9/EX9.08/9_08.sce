//Problem 9.08: Calculate the e.m.f. induced in a coil of inductance 12 H by a current changing at the rate of 4 A/s

//initializing the variables:
L = 12; // in Henry
u0 = 4*%pi*1E-7;
dIdt = 4; // change of current with change in time in A/s

//calculation:
E = -1*L*dIdt

printf("\n\nResult\n\n")
printf("\n Induced e.m.f. = %.0f V\n",E)