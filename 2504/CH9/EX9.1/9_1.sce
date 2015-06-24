clc
//initialisation of variables
clear
n=7
w= 62.4 //lbf/ft^3
v= 6 //ft/sec
d= 2 //in
u= 2.34*10^-5 //lbf/ft^3
f= 0.0178
g= 32.2 //ft/sec^2
R= 1.224
R1= 8 //ft/sec
//CALCULATIONS
r= (n+1)*(2*n+1)/(2*n^2)
Red= w*v*(d/12)/(u*g)
C= (d/Red)^(1/7)*R*(R1/f)^(4/7)
V = v*sqrt(f/8)
//RESULTS
printf ('Vmax/V = %.3f',r)
printf ('\n Red = %.2e',Red)
printf ('\n C = %.2f',C)
printf ('\n Velocity = %.3f ft/sec',V)
