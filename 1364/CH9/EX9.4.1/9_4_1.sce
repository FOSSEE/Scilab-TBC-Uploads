clc
//initialisation of variables
U= 30 //ft/sec
g= 32.2 //ft/sec^2
l= 500//ft
r= 1/25
//CALCULATIONS
F=(U^2/(l*g))
R= sqrt(r)
Um= U*R
//RESULTS
printf (' Froude number= %.4f ',F)
printf (' \n speed= %.f ft/sec',Um)
