//Problem 6.14: A capacitor is to be constructed so that its capacitance is 0.2 μF and to take a p.d. of 1.25 kV across its terminals. The dielectric is to be mica which, after allowing a safety factor of 2, has a dielectric strength of 50 MV/m. Find (a) the thickness of the mica needed, and (b) the area of a plate assuming a two-plate construction. (Assume r for mica to be 6)

//initializing the variables:
C = 0.2E-6; // in Farads
V = 1250; // in Volts
E  = 50E6; // in V/m
e0 = 8.85E-12; // in F/m
er = 6;

//calculation:
d = V/E
A = C*d/e0/er

printf("\n\nResult\n\n")
printf("\n (a)Thickness %.2E m",d)
printf("\n (b)Area of plate is %.2E m2 \n",A)