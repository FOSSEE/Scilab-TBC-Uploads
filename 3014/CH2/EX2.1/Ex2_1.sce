 clc
//given that
del_x = 0.2 // Uncertainty in position in angstrom
h = 6.63e-34 // Plank constant

printf("Example 2.1")
h_bar = h / (2*%pi) // constant
del_p = h_bar/(2*del_x*1e-10) // Calculation of uncertainty in momentum
printf("\n Uncertainty in momentum of particle is %e kgm/sec \n\n\n",del_p)
