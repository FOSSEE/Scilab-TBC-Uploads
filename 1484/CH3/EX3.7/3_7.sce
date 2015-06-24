clc 
//initialisation of variables
s= 1/10
d1= 6 //in
d2= 2 //in
l= 20 //in
p= 15 //lbs/in^2
p1= 6 //lbs/in^2
K= 0.95
g= 32.2 //ft/sec^2
//CALCULATIONS
H= (l*s/12)-(p1*144/(2*g))+(p*144/(2*g))
C= sqrt(2*g)*(%pi*(d1/12)^2)/(4*(sqrt((d1^2/d2^2)^2-1)))
Q= C*K*sqrt(H)*374.7
//RESULTS
printf ('Discharge passing through the pipe= %.f Gallons/minute ',Q)
