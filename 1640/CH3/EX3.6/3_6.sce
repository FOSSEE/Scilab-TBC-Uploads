clc 
//initialisation of variables
D= 4 //ft
d= 2 //in
H1= 6 //ft
H2= 2 //ft
t= 4 //min
g= 32.2 //ft/sec^2
w= 62.4 //lb/ft^3
H= 5 //ft
//CALCULATIONS
Cd= (2*(%pi/4)*D^2*(sqrt(H1)-sqrt(H2)))/(t*60*(%pi/4)*(d/12)^2*sqrt(2*g))
Q= Cd*(%pi/4)*(d/12)^2*sqrt(2*g*H)*w*60/10
//RESULTS
printf ('Cd = %.3f ',Cd)
printf ('\n Discharge = %.1f gpm',Q)
