
clc
//initialisation of variables
d= 6 //in
d1= 2 //in
v= 0.59 //ft/sec
L= 1.25 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
Cc= d^2/(d1^2*(sqrt(L*(2*g)/v^2)+1))
//RESULTS
printf (' Coefficient of conraction = %.3f ',Cc)
