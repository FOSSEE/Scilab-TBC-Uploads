clc 
 
//given that
del_x = 5000 // Uncertainty in position in angstrom
h = 6.63e-34 // Plank constant
m = 200 // mass of ball in gram
v = 6 // velocity of moving ball in m/s
printf("Example 2.15")
h_bar = h / (2*%pi) // constant
del_p = h_bar/(2*del_x*1e-10) // Calculation of uncertainty in momentum
p = m*v/1000 // Calculation of momentum
per_error = del_p*100/p // Calculation of percentage error in calculation of momentum
printf("\n Uncertainty in momentum of ball is %e kgm/s.",del_p)
printf("\n Percentage error in calculation of momentum is %e.\n\n\n",per_error)

