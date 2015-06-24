clc 
 
//given that
del_x = 1e-9 // Uncertainty in position in m
h = 6.63e-34 // Plank constant
m = 200 // mass of ball in gram
printf("Example 2.17")
h_bar = h / (2*%pi) // constant
del_v = h_bar/(2*del_x*m/1000) // Calculation of uncertainty in momentum
printf("\n Uncertainty in velocity of ball is %e m/s.\n\n\n",del_v)
// Answer in book is 2.64e-25 m/s
