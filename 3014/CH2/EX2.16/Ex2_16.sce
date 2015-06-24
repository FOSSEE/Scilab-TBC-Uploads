clc 
 
//given that
c = 3e8 // speed of light in m/s
v = c/10 // Velocity of moving proton in m/s
v_error = 1 // Percentage error in measurement of velocity 
m = 1.67e-27 // mass of electron in kg
h = 6.63e-34 // Plank constant

printf("Example 2.16")
h_bar = h / (2*%pi) // constant
del_v = v*v_error/100// calculation of uncertainty in position
del_x = h_bar/(2*m*del_v) // calculation of uncertainty in momentum
printf("\n Uncertainty in position of particle is %e m.\n\n\n",del_x)
// Answer in book is 1.04e-13 m
