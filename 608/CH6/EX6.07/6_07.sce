//Problem 6.07: (a) A ceramic capacitor has an effective plate area of 4 cm2 separated by 0.1 mm of ceramic of relative permittivity 100. Calculate the capacitance of the capacitor in picofarads. (b) If the capacitor in part (a) is given a charge of 1.2 μC what will be the pd between the plates?

//initializing the variables:
A = 4E-4; // in m2
d = 0.1E-3; // in m
e0 = 8.85E-12; // in F/m
er = 100;
Q = 1.2E-6; // in coulomb

//calculation:
C = e0*er*A/d
V = Q/C

printf("\n\nResult\n\n")
printf("\n (a)Capacitance  %.2E F",C)
printf("\n (b)P.d.= %.0f Volts(V)\n",V)