clc 
//initialisation of variables
Cd= 0.8
g= 32.2 //f/sec^2
d= 3 //in
x= 6 //ft
l= 25 //ft
d1= 8 //ft
//CALCULATIONS
A= %pi*(d/12)^2/4
T= (2*l/(Cd*A*sqrt(2*g)))*(-2/3)*((d1-x)^1.5-d1^1.5)
//RESULTS
printf ('Time it take to emptify the boiler = %.f sec',T+6)
