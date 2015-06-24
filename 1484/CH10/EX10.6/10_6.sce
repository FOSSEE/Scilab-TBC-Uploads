
clc 
//initialisation of variables
a= 60 //degrees
d= 4 //in
Cd= 0.62
h= 5 //ft
w= 30 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
H1= 10*sind(a)
H2= H1-h
T= (2*w/tand(a))*(2/3)*(H1^(3/2)-H2^(3/2))/(Cd*sqrt(2*g)*%pi/(4*(d/12)^2))*100
//RESULTS
printf ('time required to lower water level= %.f secs',T)
