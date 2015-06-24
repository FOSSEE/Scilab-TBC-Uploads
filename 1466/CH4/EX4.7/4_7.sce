
clc
//initialisation of variables
h1= 2.25 //in
dh1= 6 //in
h2= 4.125
dh2= 3 //in
dt1= 107 //sec
dt2= 120 //sec 
Cd= 0.62
g= 32.2 //ft/sec^2
d= 1.5 //in
//CALCULATIONS
r1= dh1/(dt1*12)
r2= dh2/(dt2*12)
k= Cd*%pi*(d/12)^2*sqrt(2*g)/4
A= k*(sqrt(h2)-sqrt(h1))/(r1-r2)
Q= r1*A+k*sqrt(h1)
//RESULTS
printf (' Area = %.1f ft^2',A)
printf (' \n Discharge = %.4f ft^3/sec',Q)
