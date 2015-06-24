//Problem 7.10: A mild steel ring has a radius of 50 mm and a crosssectional area of 400 mm2. A current of 0.5 A flows in a coil wound uniformly around the ring and the flux produced is 0.1 mWb. If the relative permeability at this value of current is 200 find (a) the reluctance of the mild steel and (b) the number of turns on the coil.

//initializing the variables:
A = 4E-4; // in m2
r = 0.05; // in m
I = 0.5; // in Amperes
Phi = 0.1E-3; // in Wb
u0 = 4*%pi*1E-7;
ur = 200;

//calculation:
l = 2*%pi*r
S = l/(u0*ur*A)
N = S*Phi/I

printf("\n\nResult\n\n")
printf("\n (a)Reluctance S = %.2E /H",S)
printf("\n (b)number of turns on the coil = %.0f ",N)