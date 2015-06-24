//Problem 7.12: A silicon iron ring of cross-sectional area 5 cm2 has a radial air gap of 2 mm cut into it. If the mean length of the silicon iron path is 40 cm, calculate the magnetomotive force to produce a flux of 0.7 mWb.

//initializing the variables:
A = 5E-4; // in m2
l = 0.4; // in m
r = 2E-3; // in m
u0 = 4*%pi*1E-7;
Phi = 0.7E-3; // in Wb

//calculation:
//For the silicon iron: 
B = Phi/A
//From the B–H curve for silicon iron, corresponding to value of B
Hs = 1650
mmfs = Hs*l
//For the air gap:
Ha = B/u0
mmfa = Ha*r
mmft = mmfs + mmfa

printf("\n\nResult\n\n")
printf("\n Total mmf to produce a flux of 0.7 mWb = %.0f A\n",mmft)