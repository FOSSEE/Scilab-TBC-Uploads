clc
//initialisation of variables
M= 60
k= 500
v= 8 //ft/sec
w= 100 //ft
h1= 5 //ft
g= 32.2 //ft/sec^2
x= 1.95 //ft
//CALCULATIONS
Q= k*M^(2/3)
A= Q/v
md= A/w
h= md-h1
ha= v^2/(2*g)
H= h+x^2-1+h1-1
//RESULTS
printf ('height above the crest of the air = %.2f ft of water',H)
