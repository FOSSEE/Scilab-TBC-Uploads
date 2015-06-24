//Problem 7.13: Figure 7.4 shows a ring formed with two differentmaterials—cast steel and mild steel. The dimensions are:
//                      mean length          cross-sectional area
//   Mild steel          400 mm                   500 mm2
//   Cast steel          300 mm                   312.5 mm2
//Find the total mmf required to cause a flux of 500 μWb in the magnetic circuit. Determine also the total circuit reluctance.

//initializing the variables:
A1 = 5E-4; // in m2
A2 = 3.125E-4; // in m2
l1 = 0.4; // in m
l2 = 0.3; // in m
u0 = 4*%pi*1E-7;
Phi = 0.5E-3; // in Wb

//calculation:
//For the mild steel: 
B1 = Phi/A1
//From the B–H curve for Mild steel, corresponding to value of B
Hm = 1400
mmfm = Hm*l1
//For the cast steel:
B2 = Phi/A2
//From the B–H curve for cast steel steel, corresponding to value of B
Hc = 4800
mmfc = Hc*l2
mmft = mmfm + mmfc
//Reluctance
S = mmft/Phi

printf("\n\nResult\n\n")
printf("\n Total mmf to produce a flux of 0.5 mWb = %.0f A",mmft)
printf("\n Total circuit reluctance = %.2E /H",S)