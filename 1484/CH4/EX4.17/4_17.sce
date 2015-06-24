clc 
//initialisation of variables
HL= 12.5 //ft
H1= 10.5 //ft
Cd= 0.62
h= 4 //ft
l= 3 //ft
n= 2
t= 5 //min
g= 32.2 //ft/sec^2
//CALCULATIONS
a1= n*l*l
A= t*60*(Cd*a1*sqrt(2*g)+Cd*a1*sqrt(2*g*H1))/((HL-H1)+(HL-H1)*sqrt(H1))/4
//RESULTS
printf ('Area= %.f sq ft',A)
