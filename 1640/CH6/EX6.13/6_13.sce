clc 
//initialisation of variables
i= 1/5000
C= 100
b= 50 //ft
h= 10 //ft
Q= 1000 //cuses
g= 32.2 //ft/sec^2
//CALCULATIONS
f= 2*g/C^2
m= (b*h)/(b+2*h)
v= Q/(b*h)
r= (i-(f*4/(2*g*m)))/(1-(2^2/(g*h)))
s= i-r
//RESULTS
printf ('Slope = %.6f  ',s)
