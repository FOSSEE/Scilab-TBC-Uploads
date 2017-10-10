clear
clc
//Example 3.8 CHANGE IN PIEZOMETRIC HEAD FOR PIPE FLOW
del_h=1/12; //deflection[ft]
//Specific weights
g_Hg=847; //[lbf/ft^3]
g_water=62.4; //[lbf/ft^3]
h=(del_h*((g_Hg/g_water)-1)) //[ft]
//Piezometric pressure
pz=h*g_water //[psf]
printf("\nBetween the points 1 and 2,\nthe change in piezometric pressure = %.1f psf \nand piezometric head = %.2f ft.\n",pz,h)