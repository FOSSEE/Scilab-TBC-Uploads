//Problem 7.14: A section through a magnetic circuit of uniform cross-sectional area 2 cm2 is shown in Figure 7.5. The cast steel core has a mean length of 25 cm. The air gap is 1 mm wide and the coil has 5000 turns. The B–H curve for cast steel is shown on page 78. Determine the current in the coil to produce a flux density of 0.80 T in the air gap, assuming that all the flux passes through both parts of the magnetic circuit.

//initializing the variables:
A = 2E-4; // in m2
l1 = 0.25; // in m
l2 = 0.001; // in m
u0 = 4*%pi*1E-7;
N = 5000; // no. of turns
B = 0.8; // in tesla
ua = 1; // for air

//calculation:
//for the core
//From the B–H curve for Mild steel, corresponding to value of B = 0.8
H = 750
ur = B/(u0*H)
S1 = l1/(u0*ur*A)
//For the air gap:
S2 = l2/(u0*ua*A)
St = S1 + S2
//flux
Phi = B*A
//current
I = St*Phi/N

printf("\n\nResult\n\n")
printf("\n current = %.3f A",I)