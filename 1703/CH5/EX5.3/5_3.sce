clear
clc
//initialisation of variables
g= 32.2 //ft/swc^2
Q= 40 //cuses
w= 5.5 //ft
h= 9 //in
d= 0.75 //ft
V= 3 //ft/sec
//CALCULATIONS
D= ((Q*2)^2/(g*(w*2)^2))^(1/3)
v= Q*d/w
D1= sqrt((2*v^2*d/g)+h/64)-(d/2)
dD= D1-d
El= -dD+((v^2*(1-(V/v)^2))/(2*g))
Els= Q*El*62.4/550
//RESULTS
printf('Critical depth = %.2f ft',D)
printf('\n Rise in level = %.f ft',D1)
printf ('\n Horse-power lost = %.3f hp',Els) 

//The answer is a bit different due to rounding off error in textbook

