clc
clear
//Initialization of variables
gam=0.0765 //lb/ft^3
Q=100 //ft^3/sec
d1=2.5 //ft
d2=9 //in
l=12 //ft
//calculations
A1=%pi/4 *d1^2
V1=Q/A1
A2=%pi*l*d2/12
V2=Q/A2
//results
printf("Mean velocity of flow at section 1 = %.1f ft/sec",V1)
printf("\n Mean velocity of flow at section 2 = %.2f ft/sec",V2)
