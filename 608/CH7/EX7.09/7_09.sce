//Problem 7.09: Determine the reluctance of a piece of mumetal of  length 150 mm and cross-sectional area 1800 mm2 when the relative permeability is 4000. Find also the absolute permeability of the mumetal.

//initializing the variables:
A = 18E-4; // in m2
l = 0.15; // in m
u0 = 4*%pi*1E-7;
ur = 4000;

//calculation:
S = l/(u0*ur*A)
u = u0*ur

printf("\n\nResult\n\n")
printf("\n (a)Reluctance S = %.0f /H",S)
printf("\n (b)Absolute permeability, μ = %.2E H/m\n",u)