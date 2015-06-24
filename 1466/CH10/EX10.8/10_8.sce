
clc
//initialisation of variables
Q=1.5//ft
w=1//ft
g=32.2//ft/sec^2
//CALCULATIONS
H1=(Q/(w*3.09))^(2/3)
h=2*H1/3
v=sqrt(2*g*H1/3)
V=1.76//ft/sec//by plotting
H=H1-(V*V/(2*g))
//RESULTS
printf (' depth of water at throat= %.2f ft',H)
