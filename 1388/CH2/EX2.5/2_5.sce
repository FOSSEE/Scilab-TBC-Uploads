clc
//initialisation of variables
M= 38.3 //mg cm^-1
d= 13.55 //g cm^-3
p= 0.9982 //g cm^-3
g= 980.7 //cm/sec^2
l= 4.96  //cm
//CALCULATIONS
r= sqrt(M*10^-3/(d*%pi))
R= r*p*g*l/2
//RESULTS
printf (' surface tension = %.1f ergs cm^-2 ',R)
