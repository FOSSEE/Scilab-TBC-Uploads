//Problem 7.03: A magnetizing force of 8000 A/m is applied to a circular magnetic circuit of mean diameter 30 cm by passing a current through a coil wound on the circuit. If the coil is uniformly wound around the circuit and has 750 turns, find the current in the coil.

//initializing the variables:
H = 8000; // in A/m
d = 0.30; // in m
N = 750; // no. of turns
Pi = 3.14;

//calculation:
l = Pi*d
I = H*l/N

printf("\n\nResult\n\n")
printf("\n current I = %.2f Ampere(A)\n",I)