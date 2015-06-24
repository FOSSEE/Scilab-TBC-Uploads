clc 
//initialisation of variables
L= 16 //in
H= 9 //in
h= 18 //in
g= 32.2 //ft/sec^2
w= 2 //ft
Cd= 0.63
W= 62.4 //lbs/ft^3
//CALCULATIONS
Q= 2*Cd*sqrt(2*g)*(L/12)*(H/12)^1.5/3
v= Q/(w*(h/12))
H1= v^2/(2*g)
Q1= 2*Cd*sqrt(2*g)*(L/12)*(((H/12)+H1)^1.5-H1^1.5)*W*6/3
//RESULTS
printf ('Discharge = %.f gpm ',Q1)
