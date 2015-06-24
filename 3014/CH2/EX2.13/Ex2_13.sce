clc 
 
//given that
del_x = 2e-9 // Uncertainty in position in m
h = 6.63e-34 // Plank constant
m = 9.1e-31 // mass of electron in Kg
printf("Example 2.13")
h_bar = h / (2*%pi) // constant
del_p = h_bar/(2*del_x) // Calculation of uncertainty in momentum
del_v = del_p/m
printf("\n Uncertainty in velocity of particle is %e m/s.\n\n\n",del_v)
