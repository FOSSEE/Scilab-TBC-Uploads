clc 
//given that
del_v = 5.5e-20 // Uncertainty in velocity in m/s
h = 6.63e-34 // Plank constant
m = 1 // mass of dust particle in mg
printf("Example 2.20")
h_bar = h / (2*%pi) // constant
del_x = h_bar/(2*del_v*m*1e-6) // Calculation of uncertainty in momentum
printf("\n Uncertainty in position of ball is %f angstrom.\n\n\n",del_x*1e10)
// Answer in book is 9.6 angstrom

