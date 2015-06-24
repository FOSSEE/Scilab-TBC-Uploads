clc
//initialisation of variables
v= 120 //ft/min
S= 1.5 //in
w= 8000 //lb
//CALCULATIONS
ga= v^2*0.0000517/S
F= w*ga
//RESULTS
printf ('total force decessary to decelarate the load= %.f lb',F-3)
