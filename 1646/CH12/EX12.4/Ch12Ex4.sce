// Scilab Code Ex12.4 : Page-605 (2011)
clc; clear;
B = 0.0044;....// Magnetic flux density, weber/meter square
mu_o = 4*%pi*1e-07;....// Relative permeability of the material, henery/m 
I = 3300;....// Magnetization of a magnetic material, A/m
//B = mu_o*(I+H), solving for H  
H = (B/mu_o)- I;....// Magnetizing force ,A/m
printf("\nThe magnetic intensity,H = %3d A/m",H);
// Relation between intensity of magnetization and relative permeability 
mu_r = (I/H)+1;....//substitute the value of I and H 
printf("\nThe relative permeability, mu_r = %5.2f",mu_r);

//Result
// The magnetic intensity,H = 201 A/m
// The relative permeability, mu_r = 17.38 

