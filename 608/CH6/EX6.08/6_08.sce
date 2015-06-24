//Problem 6.08: A waxed paper capacitor has two parallel plates, each of effective area 800 cm2. If the capacitance of the capacitor is 4425 pF determine the effective thickness of the paper if its relative permittivity is 2.5

//initializing the variables:
A = 800E-4; // in m2
C = 4425E-12; // in Farads
e0 = 8.85E-12; // in F/m
er = 2.5;

//calculation:
d = e0*er*A/C

printf("\n\nResult\n\n")
printf("\n Thickness  %.2E m\n",d)