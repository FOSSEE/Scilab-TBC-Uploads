clc
//initialisation of variables
H= 60 //ft
g= 32.2 //ft/sec^2
H1= 113 //ft
//CALCULATIONS
u= sqrt(H*20*g/113)
ui= 37.9 //ft/sec
nm= (100*4*20)/H1
//RESULTS
printf (' Velocity of the rim= %.2f ft/sec',u)
printf (' \n hydraulic efficiency of the turbine= %.2f percent',nm)
