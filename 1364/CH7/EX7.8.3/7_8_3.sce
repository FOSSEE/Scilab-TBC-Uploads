clc
//initialisation of variables
U= 352 //ft/km.hr
a= 0.0315
d= 0.629 //kg/m^3
//CALCULATIONS
b= 2*a
V= U*(1+b)
P= d*U^2*b*0.002378*(1+a)
//RESULTS
printf (' axial velocity= %.f ft/sec',V)
printf (' \n pressure increase = %.f lbf/ft^2',P)
