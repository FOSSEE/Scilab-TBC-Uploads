
clc 
//initialisation of variables
d= 1 //ft
h= 4 //ft
h1= 3 //ft
p= 25 //percent
g= 32.2 //ft/sec^2
//CALCULATIONS
h2= ((h/4)-(h1/4))*h*2
w= sqrt(h2*2*g/(d/2)^2)
N= w*60/(2*%pi)
h3= (h-h1^2/4)*2
w1= sqrt(h3*2*g/(d/2)^2)
N1= w1*60/(2*%pi)
//RESULTS
printf ('original volume= %.1f R.P.M ',N1)
