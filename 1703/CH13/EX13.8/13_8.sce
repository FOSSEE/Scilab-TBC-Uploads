
clc
//initialisation of variables
d= 4 //in
h= 12 //in
h1= 9 //in
g= 32 //ft/sec^2
//CALCULATIONS
H= 2*(1-(h1/h))
A= sqrt((H*2*g/((d/24)^2)))
A1= sqrt((H*2*g*2/((d/24)^2)))
//RESULTS
printf ('speed when the axial is zero = %.f radn/sec ',A)
printf ('\n speed when the axial is zero = %.f radn/sec ',A1)
