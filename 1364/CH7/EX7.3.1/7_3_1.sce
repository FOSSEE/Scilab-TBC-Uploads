clc
//initialisation of variables
v= 40 //ft/sec
a= 90 //degrees
d= 0.08 //lb/ft^3
l= 10 //ft
b= 10 //ft
//CALCULATIONS
du= v/cosd(a/2)
m= d*l*b*v
F= m*du/322
//CALCULATIONS
printf (' force on the bend = %.1f lbf',F)
