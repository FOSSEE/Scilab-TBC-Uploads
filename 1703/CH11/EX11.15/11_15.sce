clear
clc
//initialisation of variables
d= 7.5 //in
s= 15 //in
l= 36 //ft
h1= 34 //ft
h2= 12 //ft
L= 10 //ft
g= 32.2 //ft/sec^2
f= 0.008
l1= 20 //ft
d1= 4 //in
h3= 110 //ft
w= 62.4 //lb/ft^3
l2= 180 //ft
//CALCULATIONS
Q= (%pi/4)*(d)^2*(s/12)*2*(l/60)/144
v= Q/((%pi/4)*(d1/12)^2)
a= (d/4)^2*(d/12)*(l*2*%pi/60)^2
H= h1-h2-(L*a/g)-(v^2*0.5/g)-(4*f*l1*v^2/(2*g*(d1/12)))
H1= h1+h3+(L*a/g)+(v^2*0.5/g)+(4*f*l2*v^2/(2*g*(d1/12)))
dh= (H1-H)*w/144
NP= dh*(%pi/4)*d^2
//RESULTS
printf ('Head at piston = %.2f ft of water absolute',H)
printf ('\n Head at piston = %.2f ft of water absolute',H1)
printf ('\n Difference on head of piston = %.f lb/in^2',dh)
printf ('\n Net load on piston = %.f lb',NP)

//The answer is a bit different due to rounding off error in textbook

