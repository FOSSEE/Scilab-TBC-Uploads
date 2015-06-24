clc
//initialisation of variables
u1= 80 //ft/sec
c= 62
s= 0.25
l= 11 //ft
w= 62.3 //lb/ft^3
u1= 80 //ft/sec
d= 2 //lbf/in^2
//CALCULATIONS
u= u1*c/(l*w*s)
P= ((u1/u)^2)*s*d*144/(l*w)
//RESULTS
printf (' water velocity = %.3f ft/sec',u)
printf (' w\n pressure drop = %.3f lbf/ft^2 per ft length',P)
