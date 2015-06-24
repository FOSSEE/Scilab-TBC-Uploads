clc 
//initialisation of variables
l= 24 //ft
b= 12 //ft
f= 0.006
d= 4 //in
l1= 25 //ft
H1= 6 //ft
H= 20 //ft
g= 32.2 //ft/sec^2
Cd= 0.6
//CALCULATIONS
a= %pi*(d/12)^2/4
A= l*b
H2= H1+H
t= 2*A*sqrt((1.5+(4*f*l1/(d/12)))/(2*g))*(sqrt(H2)-sqrt(H))/a
t1= 2*A*sqrt((1.5+(4*f*l1/(d/12)))/(2*g))*sqrt(H1)/a
t2= 2*A*sqrt(H1)/(Cd*a*sqrt(2*g))
//RESULTS
printf ('Time taken to lower the pipe = %.f sec ',t)
printf ('\n Time taken to lower the pipe = %.f sec ',t1)
printf ('\n Time taken to lower the pipe = %.f sec ',t2)
