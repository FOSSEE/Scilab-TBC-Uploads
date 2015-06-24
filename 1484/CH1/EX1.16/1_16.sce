clc 
//initialisation of variables
d= 4 //ft
h= 6 //in
//CALCULATIONS
A= %pi*d^2/4
X= (h-d)
I0= (%pi*d^4/64)+4*%pi*(X)^2
h1= I0/(A*X)
h2= d-h1
//RESULTS
printf ('Depth of the axis be placed in order= %.1f ft ',h2) 
