
clc
// given that
del_d=-2.5*10^-3 //Deformation in diameter in mm
d_0=10   //Initial diameter in mm
v=0.34 //Poisson ratio for brass
E=97*10^3 //Modulus of elasticity in MPa
printf("Example 9.2\n")

e_x=del_d/d_0 // Strain in x-direction
printf("\n Strain in x-direction is %.1e",e_x) 

e_z=-e_x/v 
printf("\n Strain in z-direction is %.2e",e_z)
      
sigma=e_z*E      // Stress produced
F=sigma*%pi*(d_0^2)/4

printf("\n Applied force is %d N",F)
// Answer in book is 5600N. It is due to rounding off at intermediate steps

