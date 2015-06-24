//Problem 6.09: A parallel plate capacitor has nineteen interleaved plates each 75 mm by 75 mm separated by mica sheets 0.2 mm thick. Assuming the relative permittivity of the mica is 5, calculate the capacitance of the capacitor.

//initializing the variables:
n = 19; // no. of plates
L = 75E-3; // in m
B = 75E-3; // in m
d = 0.2E-3; // in m
e0 = 8.85E-12; // in F/m
er = 5;

//calculation:
A = L*B
C = e0*er*A*(n-1)/d

printf("\n\nResult\n\n")
printf("\n Capacitance %.2E F\n",C)