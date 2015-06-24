clc
//initialisation of variables
S= 5 //ft
F= 70 //lbf
a= 4 //degrees
l= 1 //ft
d= 0.002378 //slug/ft^3
u= 120 //ft/sec
//CALCULATIONS
L= F*cosd(a)
D=F*sind(a)
S1= S*l
p= 0.5*d*u^2
Cl= L/(p*S1)
Cd= D/(p*S1)
//RESULTS
printf (' coefficient of lift= %.2f',Cl)
printf (' \n coefficient of drag= %.4f',Cd)
