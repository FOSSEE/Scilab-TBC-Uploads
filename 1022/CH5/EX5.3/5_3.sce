clc
//initialisation of variables
d= 13.6 //gm/cm^3
g= 980 //cm/s^2
D= 0.4 //mm
angle= 130 //degrees
s= 514 //dyn/cm
//CALCULATIONS
h= (4*s*cosd(angle))/(d*g*D*10^-1)
//RESULTS
printf (' Difference in mercury level= %.2f cm (depression)',h)
