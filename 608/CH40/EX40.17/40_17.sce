//Problem 40.17: A concentric cable has a core diameter of 10 mm. The inductance of the cable is 4 x 10^-7 H/m. Ignoring inductance due to internal linkages, determine the diameter of the sheath. Assume that the relative permeability is 1.

//initializing the variables:
u0 = 4*%pi*1E-7; 
ur = 1;
da = 0.010; // in m
L = 4E-7; // in H/m

//calculation:
//diameter of the sheath
db = da*(%e^(L/(u0*ur/(2*%pi))))

printf("\n\n Result \n\n")
printf("\n diameter of the sheath is %.4f m",db)