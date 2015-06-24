//Problem 3.05: Calculate the cross-sectional area, in mm2, of a piece of copper wire, 40 m in length and having a resistance of 0.25 ohms. Take the resistivity of copper as 0.02E-6ohm m.

//initializing the variables:
R = 0.25; // in ohms
L = 40; // in m
p = 0.02E-6; // in ohm m

//calculation:
A = p*L*1E6/R

printf("\n\nResult\n\n")
printf("\nC.S.A %.1f Ohms\n",A)
