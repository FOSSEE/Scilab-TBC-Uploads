clc 
//initialisation of variables
za= 16 //ft
h1= 2 //ft
h2= 3 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
vc= sqrt(2*g*(za-h1-h2))
vb= vc*(h1/(2*h1))^2
r= -h1-h2-(vb^2/(2*g))
r1= r+34
//RESULTS
printf ('pressure head at B= %.1f ft lb',r1)
