//Problem 7.05: Determine the magnetic field strength and the mmf required to produce a flux density of 0.25 T in an air gap of length 12 mm.

//initializing the variables:
B = 0.25; // in Tesla
u0 = 4*%pi*1E-7;
l = 12E-3; // in m

//calculation:
H = B/u0
mmf = H*l

printf("\n\nResult\n\n")
printf("\n (a)Magnetic field strength H = %.0f A/m",H)
printf("\n (b)mmf = %.0f A\n",mmf)