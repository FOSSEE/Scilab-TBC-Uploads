clc 
//initialisation of variables
v= 5 //ft/sec
Q= 500 //cuses
w= 25 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
h= (Q/v)/w
E= h+(v^2/(2*g))
//RESULTS
printf ('Specific energy = %.2f ft ',E)
