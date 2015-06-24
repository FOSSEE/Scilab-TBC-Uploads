clc 
 
//given that
v = 3e7 // Velocity of moving electron in m/s
m = 9.1e-31 // mass of electron in kg
h = 6.63e-34 // Plank constant
c = 3e8 // speed of light in m/s
printf("Example 2.3")
h_bar = h / (2*%pi) // constant
del_p = m*v/(sqrt(1-(v/c)^2)) // calculation of uncertainty in momentum
del_x = h_bar/(2*del_p) // Calculation of uncertainty in position
printf("\n Uncertainty in position of particle is %f angstrom.\n\n\n",del_x*1e10)
//Answer in book is 0.0194 angstrom which is due to using approximate values at intermediate steps
 
