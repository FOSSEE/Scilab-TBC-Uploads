

clc
//initialisation of variables
Cd= 0.98
g= 32.2 //ft/sec^2
H= 2 //ft
//CALCULATIONS
v= sqrt(2*g*H)
t= H/v
h= 0.5*g*t^2
//RESULTS
printf ('Vertical distance fallen in this ttime = %.f ft',h) 
//The answer given in textbook is wrong.
