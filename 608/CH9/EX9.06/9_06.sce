//Problem 9.06: Determine the e.m.f. induced in a coil of 200 turns when there is a change of flux of 25 mWb linking with it in 50 ms

//initializing the variables:
N = 200; // no. of turns
dt = 0.050; // change of time in sec
u0 = 4*%pi*1E-7;
dPhi = 0.025; // change of flux in Wb

//calculation:
E = -1*N*dPhi/dt

printf("\n\nResult\n\n")
printf("\n Induced e.m.f. = %.0f V\n",E)