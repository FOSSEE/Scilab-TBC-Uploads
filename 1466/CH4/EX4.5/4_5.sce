
clc
//initialisation of variables
H1= 10//ft
H2=2 //ft
d= 0.62
so= 3 //in
w= 5 //ft
g= 32.2 //ft/sec^2
b= 2.5 //ft
b1= 7.5 //ft
//CALCULATIONS
A1= w*b
A2= w*b1
a= so^2/144
T= (2*A1*(H1^0.5-H2^0.5))/(d*a*(1+(A1/A2))*sqrt(2*g))
//RESULTS
printf (' Time required  to lower the level of water = %.1f sec',T)
