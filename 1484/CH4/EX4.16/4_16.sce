clc 
//initialisation of variables
l= 70 //ft
b= 10 //ft
Hl= 10 //ft
H1= 6 //ft
h1= 4 //ft
h2= 2 //ft
w= 2 //ft
h3= 3 //ft
Cd= 0.6
g= 32.2 //ft/sec^2
//CALCULATIONS
t= (l*b)*(Hl+H1)/(Cd*h2*w*h1*sqrt(2*g*H1))
t1= 2*l*b*sqrt(Hl)/(Cd*h2*w*h3*sqrt(2*g))
//RESULTS
printf ('Time of filling= %.2f sec',t)
printf ('\n Time of emptying= %.2f sec',t1)
