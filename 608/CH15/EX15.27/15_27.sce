//Problem 15.27: A transformer has a rated output of 200 kVA at a power factor of 0.8. Determine the rated power output and the corresponding reactive power.

//initializing the variables:
VI = 200000; // in VA
pf = 0.8; // power factor

//calculation:
P = VI*pf
Q = VI*sin(acos(pf))

printf("\n\n Result \n\n")
printf("\n rated power output is %.0fW and the corresponding reactive power is %.0f var",P,Q)