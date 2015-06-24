clc
//initialisation of variables
p= 0.0024 //slug/ft^3
u= 10 //ft/sec
v= 3.75*10^-7 //slug
d= 0.25//in
u1= 100 //ft/sec
//CALCULATIONS
R= u*d*p/(12*v)
f= 16/R
F1= f*p*u^2*%pi*d/(2*12)
R1= R*10
f1= 0.0791/R1^0.25
F2= f1*p*u1^2*%pi*d/(2*12*10)
C= F2/F1
//RESULTS
printf (' Drag force per foot length = %.2e lbf/ft',F1)
printf (' \n resistance coefficient = %.2f ',C)
