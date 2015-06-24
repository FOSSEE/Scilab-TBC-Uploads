clc 
//initialisation of variables
H1= 10 //ft
H2= 2 //ft
Cd= 0.61
d1= 8 //ft
g= 32.2 //ft/sec^2
d2= 3 //ft
//CALCULATIONS
a= d2^2/144
H0= H1*d2/(d1-d2)
t= %pi*(d1/2)^2*((2/5)*(H1^(5/2)-H2^(5/2))+2*H0^2*(sqrt(H1)-sqrt(H2))+(4/3)*H0*(H1^(3/2)-H2^(3/2)))/(60*Cd*a*sqrt(2*g)*(H1+H0)^2)
//RESULTS
printf ('time required to lower the water level = %.2f min',t)
