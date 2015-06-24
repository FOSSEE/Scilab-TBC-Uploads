clc 
//given that
del_t = 2e-12 // lifetime of exited state in  sec
h = 6.63e-34 // Plank constant
printf("Example 2.18")
h_bar = h / (2*%pi) // constant
del_E = h_bar/(1.6e-19*2*del_t) // calculation of uncertainty in momentum
printf("\n Minimum error in measurement of energy of this state is %e eV.\n\n\n",del_E)
// Answer in book is 1.65e-4 eV


 
