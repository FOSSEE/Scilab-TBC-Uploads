clc 
 
//given that
l = 30 // width of potential well in angstrom
x = l/2
del_x = 2 // interval of length at centre in angstrom
h = 6.63e-34 // Plank constant
n = 1 // ground state
printf("\nExample 2.30")
phi_x = ((sqrt(2/l))*sin(n*%pi*x/l))^2 
p = phi_x*del_x // Calculation of probability at centre
printf("\n Probability of finding particle at centre is %d percent.\n\n\n",p*100)
// Answer given in book is 16 percent. It is due to wrong calculation 
