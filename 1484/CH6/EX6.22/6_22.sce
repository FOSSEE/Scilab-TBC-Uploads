clc 
//initialisation of variables
w= 62.4 //lb/ft^3
za= 150 //ft
zd= 80 //ft
g= 32.2 //ft/sec^2
w= 62.4 //lb/ft^3
v1= 5.25 //ft/sec
//CALCULATIONS
p= (w/144)*(za-zd-145*v1^2/(2*g))
//RESULTS
printf ('pressure = %.3f lbs/in^2',p)
