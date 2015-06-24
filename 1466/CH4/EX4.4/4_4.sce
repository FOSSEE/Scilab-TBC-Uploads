
clc
//initialisation of variables
Cd= 0.6
g= 32.2 //ft/sec^2
D= 12 //ft
H1= 6 //ft
H2= 4 //ft
d1= 8 //in
//CALCULATIONS
T= ((2*%pi)/(Cd*(%pi/4)*(d1/12)^2*sqrt(2*g)))*((2/3)*(D/2)*(H1^(3/2)-H2^(3/2))-(1/5)*(H1^(5/2)-H2^(5/2)))
//RESULTS
printf (' Time required  to lower the level of water = %.1f sec',T)
