//Problem 7.11: A closed magnetic circuit of cast steel contains a 6 cm long path of cross-sectional area 1 cm2 and a 2 cm path of cross-sectional area 0.5 cm2. A coil of 200 turns is wound around the 6 cm length of the circuit and a current of 0.4 A flows. Determine the flux density in the 2 cm path, if the relative permeability of the cast steel is 750.

//initializing the variables:
A1 = 1E-4; // in m2
A2 = 0.5E-4; // in m2
l1 = 0.06; // in m
l2 = 0.02; // in m
N1 = 200; // no. of turns about 6 cm coil
I = 0.4; // in Amperes
u0 = 4*%pi*1E-7;
ur = 750;

//calculation:
//Reluctance 
S1 = l1/(u0*ur*A1) // for 6 cm
S2 = l2/(u0*ur*A2) // for 2 cm
St = S1 + S2
Phi = N1*I/St
B2 = Phi/A2

printf("\n\nResult\n\n")
printf("\n flux density in the 2 cm path = %.2f T\n",B2)