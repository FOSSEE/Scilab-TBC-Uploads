clc
//initialisation of variables
a= 0.25 //ft
v= 1.2 //oises
u= 10 //ft/sec
g= 32.2 //ft/sec^2
s= 0.9
d= 6 //in
//CALCULATIONS
q= -2*u*v*30.5/(a*454*g)
Q= %pi*u*(d/24)^2/2
R= u*s*30.5^2/(4*v)
//RESULTS
printf (' quantity flow = %.2f ft^3/sec',q) 
printf (' \n shear stress in the oil = %.2f lbf/ft^2',Q) 
printf (' \n Reynolds number = %.f ',R)
