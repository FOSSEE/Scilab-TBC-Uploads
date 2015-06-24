clear all; clc;

disp("Scilab Code Ex 3.4 : ")

//Given:
P = 80; //kN
l_z = 1.5; //m
l_y = 0.05;//m
l_x = 0.1; //m

//Calculations:
A= l_x*l_y;
normal_stress_z = (P*(10^3))/A; //Pa

Est = 200; //GPa - from the tables.
strain_z = (normal_stress_z)/(Est*(10^9)); // Strain = stress/modulus of elasticity

axial_elong = strain_z*l_z; //elongation in the y direction

nu_st = 0.32; //Poisson's Ratio - from the tables.
strain_x = -(nu_st)*(strain_z); //strain in the x direction.
strain_y = strain_x;

//Elongations:
delta_x = strain_x*l_x;
delta_y = strain_y*l_y;

//Display:

printf("\n\nThe change in the length (z direction)       = %10.8f m",axial_elong);
printf("\nThe change in the cross section (x direction)= %10.8f m',delta_x);
printf("\nThe change in the cross section (y direction)= %10.8f m',delta_y);

printf("\n\nIn the standard form:")
printf("\nThe change in the length (z direction)       =  %10.2f x10^6m",(axial_elong*10^6));
printf("\nThe change in the cross section (x direction)= %10.2f x10^6m',(delta_x*10^6));
printf("\nThe change in the cross section (y direction)= %10.2f x10^6m',(delta_y*10^6));

//----------------------------------------------------------------------------END------------------------------------------------------------------------

