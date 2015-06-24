clc
//Initialization of variables
d = 1.23 // Kg/m^3
D = 10^-5 //m
SgH = 1.2*9800 //N/m^3
yA = 12 // N/m^3
uA = 1.79*(10^-5) //N.s/m^2
//calculations
U = (D^2)*(SgH - yA)/(18*uA) //m/s
tFALL = 2.44/U // s
Re = d*D*U/uA
//results
printf(" the time taken will be %.f s",tFALL)
printf("\n drag value is valid for %.6f reynolds number which is less than 1 ",Re)
