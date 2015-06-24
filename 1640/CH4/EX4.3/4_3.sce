clc 
//initialisation of variables
L= 11 //ft
H= 0.7 //ft
Cd= 0.6
g= 32.2 //ft/sec^2
h= 1.95 //ft
Q= 20.65 //cuses
Q1= 21.2 //cfs
//CALCULATIONS
Q= 2*Cd*sqrt(2*g)*L*H^1.5/3
vo= Q/(h*L)
h1= vo^2/(2*g)
Q1= 2*Cd*sqrt(2*g)*L*((H+(vo^2/(2*g)))^1.5-(vo^2/(2*g))^1.5)/3
v1= Q1/(L*h)
Q2= 2*Cd*sqrt(2*g)*L*((H+(v1^2/(2*g)))^1.5-(v1^2/(2*g))^1.5)/3
p= (Q2-Q1)*100/Q1
//RESULTS
printf ('discharge percent = %.3f per cent ',p)
