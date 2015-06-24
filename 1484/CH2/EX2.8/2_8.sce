clc 
//initialisation of variables
M= 350 //tons
l= 50 //ft
w= 20 //ft
W= 100 //tons
h= 6 //ft
M1= 250 //tons
//CALCULATIONS
V= M*2240/64
d= V/(l*w)
BM= l*w^3/(12*w*l*d)
y= (((BM+(d/2))*(M/10))-(M1*h/10))/(W/10)
//RESULTS
printf ('Highest position of centre of gravity= %.2f ft ',y)
