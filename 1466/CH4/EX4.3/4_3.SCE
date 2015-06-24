
clc
//initialisation of variables
d= 0.62
g= 32.2 //ft/sec^2
b= 4 //ft
H1= 4 //ft
a= 1 //ft
//CALCULATIONS
D= (2/3)*sqrt(2*g)*d*b*((H1+a)^1.5-(H1)^1.5)
D1= sqrt(2*g)*d*a*b*sqrt(H1+a)
Dt= D+D1
//RESULTS
printf (' Quantity of water flowing thourght the pipe =%.1f ft^3/sec',Dt)
