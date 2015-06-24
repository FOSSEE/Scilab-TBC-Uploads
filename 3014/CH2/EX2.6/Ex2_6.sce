clc 
//given that
v = 600 // Velocity of moving electron in m/s
v_error = 0.005 //Percentage error in measurement of velocity
m = 9.1e-31 // mass of electron in kg
h = 6.63e-34 // Plank constant
printf("Example 2.6")
h_bar = h / (2*%pi) // constant
p = m*v
del_p = v_error*p/100 // calculation of uncertainty in momentum
del_x = h_bar/(del_p) // Calculation of uncertainty in position
printf("\n Uncertainty in position of particle is %e m.\n\n\n",del_x)
// Answer in book is 0.39e-2 m 
