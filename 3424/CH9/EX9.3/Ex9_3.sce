clc
//Initialization of variables
Re = 5*(10^5) //Reynold's number
U = 10 //ft/s
vW = 1.21*(10^-5) // ft^2/s for water
vA = 1.57*(10^-4) // ft^2/s for air
vG = 1.28*(10^-2) // ft^2/s for glycerine
// Calculations
Xcr = Re/U
Dcr = 5*(5*(10)^4/10)^0.5
XcrW = Re*vW/U
DcrW = vW*5*(5*(10)^4/10)^0.5
XcrA = Re*vA/U
DcrA = vA*5*(5*(10)^4/10)^0.5
XcrG = Re*vG/U
DcrG = vG*5*(5*(10)^4/10)^0.5
// results
printf(" the ratio of length (boundary laminar) to v is %.f s/ft ",Xcr)
printf("\n the ratio of thickness (boundary laminar) to v is %.f s/ft ",Dcr)
printf("\nthe length of boundary layer for water is %.3f ft",XcrW)
printf("\nthe thickness of the layer for water is %.5f ft",DcrW)
printf("\nthe length of boundary layer for air is %.3f ft",XcrA)
printf("\nthe thickness of the layer for air is %.5f ft",DcrA)
printf("\nthe length of boundary layer for gylcerine is %.3f ft",XcrG)
printf("\nthe thickness of the layer for gylcerine is %.5f ft",DcrG)
