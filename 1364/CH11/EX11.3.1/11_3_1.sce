clc
//initialisation of variables
Q= 400 //gallons
d= 4 //in
d1=6 //in
C= 0.66
g= 32.2 //ft/sec^2
w=62.4//lbf/ft^3
//CALCULATIONS
u1= (Q/60)*d1^2/(%pi*6.23)
u2= (d/d1)^2*u1
h= (u1-u2)^2/(2*g)
w=62.4//lbf/ft^3
p= (((u1^2-u2^2)/(2*g))-h)*w
h1= ((1/C)-1)^2*(u1^2/(2*g))
p1= (((u1^2-u2^2)/(2*g))+h1)*w
p2= (u1^2-u2^2)
//RESULTS
printf (' Loss of head due to the sudden enlargement= %.3f ft',h)
printf (' \n difference in pressure = %.1f lbf/ft^2',p)
printf (' \n difference in pressure = %.f lbf/ft^2',p1)
printf (' \n difference in pressure = %.1f lbf/ft^2',p2)
