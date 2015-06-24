
clc 
//given that
del_x = 4e-10 // Uncertainty in position in m
h = 6.63e-34 // Plank constant

printf("Example 2.2")
h_bar = h / (2*%pi) // constant
del_p = h_bar/(2*del_x) // Calculation of uncertainty in momentum
printf("\n Uncertainty in momentum of particle is %e kgm/sec.\n\n\n",del_p)
// Answer in book is given as 1.32e-23 kgm/sec
