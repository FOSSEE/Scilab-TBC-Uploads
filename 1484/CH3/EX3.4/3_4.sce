clc 
//initialisation of variables
d= 4 //ft
d1= 5/4 //ft
g= 32.2 //ft/sec^2
h= 3 //ft
K= 1
//CALCULATIONS
C= (%pi/4)*d^2*sqrt(2*g)/(sqrt((d^2/d1^2)^2-1))
Q= K*sqrt(h)*C
V= Q/(%pi*d1^2/4)
//RESULTS
printf ('Velocity at the throat= %.2f ft/sec ',V)
