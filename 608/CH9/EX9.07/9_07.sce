//Problem 9.07: A flux of 400 μWb passing through a 150-turn coil is reversed in 40 ms. Find the average e.m.f. induced.

//initializing the variables:
N = 150; // no. of turns
dt = 0.040; // change of time in sec
u0 = 4*%pi*1E-7;
dPhi = 800E-6; // change of flux in Wb

//calculation:
//Since the flux reverses, the flux changes from C400 μWb to 400 μWb, a total change of flux of 800 μWb
E = -1*N*dPhi/dt

printf("\n\nResult\n\n")
printf("\n Induced e.m.f. = %.0f V\n",E)