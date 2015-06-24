//Problem 7.07: An iron ring of mean diameter 10 cm is uniformly wound with 2000 turns of wire. When a current of 0.25 A is passed through the coil a flux density of 0.4 T is set up in the iron. Find (a) the magnetizing force and (b) the relative permeability of the iron under these conditions.

//initializing the variables:
N = 2000; // no. of turns
d = 0.10; // in m
B = 0.4; // in Tesla
I = 0.25; // in Amperes
u0 = 4*%pi*1E-7;

//calculation:
l = %pi*d
H = N*I/l
ur = B/(u0*H)

printf("\n\nResult\n\n")
printf("\n (a)Magnetic field strength H = %.0f A/m",H)
printf("\n (b)relative permeability of the iron = %.0f ",ur)