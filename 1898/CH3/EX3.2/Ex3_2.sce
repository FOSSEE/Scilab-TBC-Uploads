clear all; clc;

disp("Scilab Code Ex 3.2 : ")

//Given:
stress_b = 600; //MPa
strain_b = 0.023; //mm/mm
stress_a = 450; //Mpa
strain_a = 0.006; //mm/mm

//Calculations:

//Permanent Strain:
E = stress_a/strain_a;
strain_cd = stress_b/E; //The recovered elastic strain
perm_strain = strain_b - strain_cd; //mm/mm

//Modulus of Resilience:
ur_initial = (0.5*stress_a*strain_a);//MJ/m^3
ur_final = (0.5*stress_b*strain_cd); //MJ/m^3

//Display:

printf("\n\nThe Permanent Strain is              =%10.5f mm/mm",perm_strain);
printf("\nThe Initial Modulus of Resilience is = %0.2f MJ/mm^3",ur_initial);
printf("\nThe Final Modulus of Resilience is   = %0.2f MJ/mm^3",ur_final);


//------------------------------------------------------------------------------END-------------------------------------------------------------------------------
