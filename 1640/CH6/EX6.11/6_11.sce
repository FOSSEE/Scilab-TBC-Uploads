clc 
//initialisation of variables
d= 8 //ft
i= 1/1200
C= 90
a= 308 //degrees
//CALCULATIONS
h= 0.95*d
A= (d/2)^2*(a*(%pi/180)-sind(a))/2
m= 0.29*d
Q= A*C*sqrt(m*i)
//RESULTS
printf ('Discharge = %.f cuses ',Q)
