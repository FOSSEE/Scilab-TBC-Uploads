//Problem 7.06: A coil of 300 turns is wound uniformly on a ring of non-magnetic material. The ring has a mean circumference of 40 cm and a uniform cross sectional area of 4 cm2. If the current in the coil is 5 A, calculate (a) the magnetic field strength, (b) the flux density and (c) the total magnetic flux in the ring.

//initializing the variables:
N = 300; // no. of turns
l = 0.40; // in m
A = 4E-4; // in m2
I = 5; // in Amperes
u0 = 4*%pi*1E-7;
ur = 1
//calculation:
H = N*I/l
B = u0*ur*H
Phi = B*A

printf("\n\nResult\n\n")
printf("\n (a)Magnetic field strength H = %.0f A/m\",H)
printf("\n (b)Flux Density = %.2E T",B)
printf("\n (c)total magnetic flux = %.2E Wb",Phi)