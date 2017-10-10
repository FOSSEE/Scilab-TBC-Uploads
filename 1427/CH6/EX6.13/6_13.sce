//ques-6.13
//Calculating emf of the cell and determining activity of HCl
clc
E=0.15;//emf of the cell (in V)
e1=-0.2224;//emf for Ag/Ag+ (in V)
E1=-e1;
pH=(E+e1)/(-0.0592);
//On taking antilog(pH)
H=0.06;
printf("The emf required is %.4f V and acticity of HCl is %.2f mol/L.",E1,H);
