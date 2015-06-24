clc
//initialisation of variables
clear
r=1.4
g= 32.2 //ft/sec^2
R= 53.3 //lbf ft/lbm
T1= 760 //R
p2= 2 //lbf/in^2
p1= 3 //lbf/in^2
//CALCULATIONS
V2= sqrt(2*r*R*g*T1*(1-(p2/p1)^((r-1)/r))/(r-1))
//RESULTS
printf ('Velocity in working section = %.f ft/sec',V2)
