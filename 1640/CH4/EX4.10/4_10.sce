clc 
//initialisation of variables
L= 3 //ft
H= 6 //in
Cd= 0.62
Cd1= 0.59
a= 45 //degrees
g= 32.2 //ft/sec^2
//CALCULATIONS
H= ((2/3)*Cd*sqrt(2*g)*L*(H/12)^1.5/((8/15)*Cd1*sqrt(2*g)))^0.4
//RESULTS
printf ('depth of water = %.3f ft ',H)
