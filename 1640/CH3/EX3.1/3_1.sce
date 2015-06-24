clc 
//initialisation of variables
Q= 16 //gpm
w= 62.4 //lb/ft^3
d= 1 //in
h= 2+(5/12) //ft
g= 32.2 //ft/sec^2
x= 11.5 //ft
h1= 1.2 //in
//CALCULATIONS
Cd= Q*10/(60*w*(%pi*(d/12)^2/4)*sqrt(2*g*h))
Cv= sqrt(x^2/(4*(h1/12)*h*12^2))
Cc= Cd/Cv
Cr= (1-Cv^2)/Cv^2
//RESULTS
printf ('Cr = %.3f  ',Cr)
