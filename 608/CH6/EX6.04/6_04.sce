//Problem 6.04: Two parallel rectangular plates measuring 20 cm by 40 cm carry an electric charge of 0.2 μC. Calculate the electric flux density. If the plates are spaced 5 mm apart and the voltage between them is 0.25 kV determine the electric field strength.

//initializing the variables:
Q = 0.2E-6; // in Coulomb
A = 800E-4; // in m2
d = 0.005; // in m
V = 250; // in Volts

//calculation:
D = Q/A
E = V/d

printf("\n\nResult\n\n")
printf("\n (a)Electric flux density D %.2E C/m2",D)
printf("\n (b)Electric field strength E %.2E V/m\n",E)