clc 
//initialisation of variables
b1= 3.2 //ft
b2= 1.3 //ft
h1= 1.86 //ft
h2= 1.63 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
a1= b1*h1
a2= b2*h2
Q= a1*a2*sqrt(2*g)*sqrt(h1-h2)/(sqrt(a1^2-a2^2))
//RESULTS
printf ('Discharge = %.1f cuses ',Q)
