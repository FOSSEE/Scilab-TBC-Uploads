clear

clc
//initialisation of variables
d= 1/3 //ft
g= 32.2 //ft/sec^2
d1= 4 //in
d2= 1.6 //in
h1= 5.7 //ft
h2= -1.9 //ft
Q= 0.3 //cuses
H1= 34 //ft
H2= 19 //ft
H3= 7 //ft
H4= 9.2 //ft
h3= 2.9//ft
h4= 3.9 //ft
Et= 54 //ft-lb/lb
//CALCULATIONS
v1= sqrt(2*g*(h1-h2)/((d1/d2)^4-1))
Q1= %pi*v1*d^2/4
k= Q/Q1
P= (H1+H2)*H3/H4
P1= P-h3
r= P+h1-h2-h4
V= v1^2/(2*g)
E= r+V
dE= Et-E
//RESULTS
printf ('Coefficienct of venturi meter = %.4f ',k)
printf ('\n Pressure of venturi throat = %.2f ft of water',P1)
printf ('\n Loss in energy = %.1f ft-lb/lb',dE)

//The answer is a bit different due to rounding off error in textbook

