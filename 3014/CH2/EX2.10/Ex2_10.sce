clc 
 
//given that
r = 0.53 // radius of hydrogen atom in angstrom
m_e = 9.1e-31 // mass of electron in kg
h = 6.63e-34 // Plank constant
printf("Example 2.10")
h_bar = h / (2*%pi) // constant
del_x = 2*r // calculation of uncertainty in position
del_p = h_bar/(2*del_x*1e-10) // calculation of uncertainty in momentum
p = del_p
E = p^2/(2*m_e*1.6e-19)// Calculation of energy in eV
printf("\n Kinetic energy needed by an electron to be \n confined in electron is %f eV.\n\n\n",E)
// When problem is solved by del_x*del_p = h_bar, then minimum value of kinetic energy will become 13.6eV

