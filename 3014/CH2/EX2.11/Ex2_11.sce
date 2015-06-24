clc 
 
//given that
del_t = 2.5e-14 // lifetime in exited state in micro sec
h = 6.63e-34 // Plank constant
printf("Example 2.11")
h_bar = h / (2*%pi) // constant
del_E = h_bar/(1.6e-19*del_t*1e-6) // calculation of uncertainty in momentum
printf("\n Minimum error in measurement of energy of this state is %e eV.\n\n\n",del_E)

