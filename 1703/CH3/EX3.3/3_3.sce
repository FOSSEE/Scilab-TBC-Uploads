
clc
//initialisation of variables
clear
h= 20 //ft
Q= 4.81 //cuses
C= 1
g= 32.2 //ft/sec^2
d= 10 //in
//CALCULATIONS
d= ((Q*4*144/(d^2*%pi))^2*100^2/((Q*4*144/(d^2*%pi))^2+2*g*h))^0.25
//RESULTS
printf ('Smallest Diameter = %.1f in',d)
