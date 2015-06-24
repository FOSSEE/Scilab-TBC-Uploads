//Problem 6.10: Calculate the equivalent capacitance of two capacitors of 6 μF and 4 μF connected (a) in parallel and (b) in series

//initializing the variables:
C1 = 6E-6; // in Farads
C2 = 4E-6; // in Farads

//calculation:
// in Parallel
Cp = C1 +C2
// in Series
Cs = 1/[(1/C1) + (1/C2)]

printf("\n\nResult\n\n")
printf("\n (a)Capacitance in parallel %.2E F",Cp)
printf("\n (b)Capacitance in Series %.2E F\n",Cs)