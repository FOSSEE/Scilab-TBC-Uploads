//Problem 43.01: A and B are two coils in close proximity. A has 1200 turns and B has 1000 turns. When a current of 0.8 A flows in coil A a flux of 100 μWb links with coil A and 75% of this flux links coil B. Determine (a) the self inductance of coil A, and (b) the mutual inductance.

//initializing the variables:
Na = 1200; 
Nb = 1000;
Ia = 0.8; // in amperes
Phia = 100E-6; // in Wb
xb = 0.75;

//calculation:
//self inductance of coil A
La = Na*Phia/Ia
//mutual inductance, M
Phib = xb*Phia
M = Nb*Phib/Ia

printf("\n\n Result \n\n")
printf("\n self inductance of coil A is %.2f H",La)
printf("\n mutual inductance, M is %.2E H",M)