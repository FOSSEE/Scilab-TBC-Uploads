clc
//initialisation of variables
Q= 0.5 //ft^3/sec
d= 3 //in
d1= 4 //in
d2= 2 //in
h= 12.7 //in
g= 32.2 //ft/sec^2
s= 13.6 //kg/m^3
//CALCULATIONS
k= (s-1)*(h/2)*2*g*(%pi/(Q*d^2*4))^2+((d1/d)^4-1)
C= (d1/d2)^2/(sqrt(k)+1)
//CALCULATIONS
printf (' cntraction coefficient= %.3f ',C)


//ANSWER GIVEN IN THE TEXTBOOK IS WRONG
