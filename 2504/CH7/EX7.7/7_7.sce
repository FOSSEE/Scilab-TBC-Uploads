clc
//initialisation of variables
clear
p1= 50 //lbf/in^2
R= 96.3 //ft lbf/lbm R
T= 80 //F
p2= 20 //lbf/in^2
r= 1.31
u= 2.34*10^-7 //lbf sec/ft^2
e= 0.00005 //ft
m= 5*10^4 //lbm/sec
d= 1.5 //ft
g= 32.2 //ft/sec^2
f= 0.113
//CALCULATIONS
w1= p1*144/(R*(460+T))
V1= 4*(m/3600)/(%pi*w1*d^2)
Ma1= V1/(r*R*g*(460+T))^0.5
Re= w1*V1*d/(u*g)
dx= (((1/(r*Ma1^2))*10*(1-(p2/p1)^2))+log(p2/p1))*d/f
//RESULTS
printf ('density = %.3f lbm/ft^3',w1)
printf ('\n mean flow velocity = %.1f ft/sec',V1)
printf ('\n Match number = %.4f ',Ma1)
printf ('\n Reynolds number = %.2e ',Re)
printf ('\n Length of pipe = %.2e ft',dx)
