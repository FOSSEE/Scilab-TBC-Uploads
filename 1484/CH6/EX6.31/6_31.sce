
clc 
//initialisation of variables
d= 50 //ft
d1= 6 //in
l= 500 //ft
H1= 20 //ft
f= 0.0075
g=32.2
//CALCULATIONS
a= %pi*(d1/12)^2/4
T= 2*sqrt(4*f*l/(d1/12))*(H1^0.5)/(a*sqrt(2*g)*2/1963)
//RESULTS
printf ('time rquired for the tanks to same level= %.f sec',T) 

