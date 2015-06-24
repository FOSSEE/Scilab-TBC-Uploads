clc
//initialisation of variables
w= 4000 //lb/ft
l= 20 //ft
y= 0.96
A= 4.18 //in^2
Icq= 5.6 //in^4
d= 28 //in
b= 0.5 //in
T= 8000 //psi
d1= 0.75 //in
//CALCULATIONS
V= w*l/2
Ay= 2*A*((d/2)-y)
I= b*d^3/12+4*(Icq+A*((d/2)-y)^2)
p= (2*T*(%pi/4)*d1^2*I)/(V*Ay)
//RESULTS
printf ('Rivet spacing= %.2f in',p) 
