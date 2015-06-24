//Problem 8.03: Determine the current required in a 400 mm length of conductor of an electric motor, when the conductor is situated at right-angles to a magnetic field of flux density 1.2 T, if a force of 1.92 N is to be exerted on the conductor.

//initializing the variables:
F = 1.92; // in newton
B = 1.2; // in tesla
l = 0.40; // in m
u0 = 4*%pi*1E-7;

//calculation:
I = F/(B*l)

printf("\n\nResult\n\n")
printf("\n (a)Current I = %.0f Amperes(A)",I)