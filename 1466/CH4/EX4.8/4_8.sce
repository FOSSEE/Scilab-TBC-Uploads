
clc
//initialisation of variables
Q= 4 //ft^2/sec
d= 6 //in
D= 1 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
V= Q/((%pi/4)*(d/12)^2)
V1= Q/((%pi/4)*D^2)
L=  (V-V1)^2/(2* g)
//RESULTS
printf (' Loss of head= %.2f ft',L)
