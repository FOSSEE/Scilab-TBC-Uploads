//Problem 2.11: A current of 5 A flows in the winding of an electric motor, the resistance of the winding being 100. Determine (a) the p.d. across the winding, and (b) the power dissipated by the coil.

//initializing the variables:
I = 5; // in ampere
R = 100; // in ohms

//calculation:
V = I*R
P = I*R*I

printf("\n\nResult\n\n")
printf("\np.d(V): %.0f Volts(V)",V)
printf("\nPower(P): %.0f Watt(W)\n",P)