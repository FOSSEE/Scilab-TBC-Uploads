
clc 
//initialisation of variables
D= 10 //ft
H1= 17 //ft
H2= 5 //ft
d= 3 //in
Cd= 0.62
g=32.2 //ft/s^2
//CALCULATIONS
t1= (2*%pi*D^2/4)*(sqrt(H1)-sqrt(H2))/(Cd*sqrt(2*g)*%pi*(d/12)^2/4)
t2= %pi*(14/15)*H2^(5/2)*4/(Cd*%pi*(d/12)^2*sqrt(2*g))
t= t1+t2
//RESULTS
printf ('time required to empty the vessel = %.f sec',t)
