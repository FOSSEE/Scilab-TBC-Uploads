clc
//initialisation of variables
v= 3.732*10^-7 //slug/ft sec
y= 0
//CALCULATIONS
vbyy= 40000*(1-50*y)
q= v*vbyy
//RESULTS
printf (' viscous shear stress= %.4f lbf/ft^2 ',q)
