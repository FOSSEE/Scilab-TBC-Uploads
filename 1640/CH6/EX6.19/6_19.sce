clc 
//initialisation of variables
b1= 4 //ft
b2= 2 //ft
h1= 2 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
Qmax= 3.09*b2*h1^1.5
v1= Qmax/(b1*h1)
H= h1+(v1^2/(2*g))
Qmax2= 3.09*b2*H^1.5
h2= 2*H/3
//RESULTS
printf ('Qmax = %.2f cfs ',Qmax)
printf ('\n Qmax = %.2f cfs ',Qmax2)
printf ('\n h2 = %.3f ft ',h2)
