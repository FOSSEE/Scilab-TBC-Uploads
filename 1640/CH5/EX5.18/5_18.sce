clc 
//initialisation of variables
A= 10000 //ft^2
H1= 50 //ft
H2= 40 //ft
l= 1500 //ft
d= 6 //in
f= 0.0075
g= 32.2 //f/sec^2
//CALCULATIONS
t= 2*A*sqrt((1.5+(4*f*l/(d/12)))/(2*g))*(sqrt(H1)-sqrt(H2))/(%pi*(d/12)^2/4)
//RESULTS
printf ('Time taken to lower the level of water = %.f sec ',t)
