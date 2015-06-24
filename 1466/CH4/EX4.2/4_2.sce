
clc
//initialisation of variables
d= 0.62
g= 32.2 //ft/sec^2
b= 4 //ft
H1= 2 //ft
a= 2 //ft
//CALCULATIONS
D= (2/3)*sqrt(2*g)*d*b*((H1+a)^1.5-(H1)^1.5)
//RESULTS
printf (' Quantity of water flowing thourght the pipe = %.1f ft^3/sec',D)
