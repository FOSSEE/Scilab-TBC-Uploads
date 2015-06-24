clc 
 
//given that
E_eV = 0.5// kinetic energy of electron in KeV
del_x = 0.4 // Uncertainty in position in nm
h = 6.63e-34 // Plank constant
m = 9.1e-31 // mass of electron in kg
printf("Example 2.12")
h_bar = h / (2*%pi) // constant
E_J = E_eV*1e3*1.6e-19
p = sqrt(2*m*E_J) // Calculation of momentum in kgm/s
del_p = h_bar/(2*del_x*1e-9) // Calculation of uncertainty in momentum
per_error = del_p*100 / p // calculation of percentage error in momentum
printf("\n Percentage error in momentum is %f percent.\n\n\n",per_error)
// Answer in book is 1.08 percentage
