clc
//initialisation of variables
w= 62.3 //lb/ft^3
d= 6 //in
t= 5/8 //in
k= 3*10^5 //lbf/in^2
E= 18*10^6 //lbf/in^2
M= 3 //tonf
//CALCULATIONS
u= sqrt(((M*2240)^2/w)*(t*2/d)*32.2*114*((t*2/(d*k))+(2/E)))
Q= (%pi*(d/2)^2/144)*u
//RESULTS
printf (' maximum permissible flow = %.2f ft^3/sec',Q)
