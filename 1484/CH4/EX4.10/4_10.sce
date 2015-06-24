
clc 
//initialisation of variables
d= 1 //ft
h1= 10 //ft
h2= 2 //ft
Cd= 0.6
g= 32.2 //ft/sec^2
t= 12.6
//CALCULATIONS
A= %pi*d^2/4
a= 1/144
T1= (A/(a*Cd*sqrt(2*g)))*(1/3)*(h1^1.5-(h1-h2)^1.5-h2^1.5)+t
T2= 2*A*(h2^0.5)/(Cd*a*sqrt(2*g))
T= T1+T2
//RESULTS
printf ('Total time = %.2f sec',T)


