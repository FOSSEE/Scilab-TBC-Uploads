clear all; clc;


disp("Scilab Code Ex 1.12 : ")

//Given:
l_bc = 50; //Length of BC in mm.
l_db = 75; // mm.
l_ed = 40; // mm.
l_ab = 25; // mm.
f_diagonal = 3000; //N
a1 = l_ab*l_ed; //Area of face AB in mm^2.
a2 = l_bc*l_ed ; //mm^2.
a3 = l_db*l_ed ; // mm^2.

//Internal loadings - The free body diagram of the inclined member is shown in 1-26b. 

//Equilibrium Equations

//Balancing forces along the x- direction.
f_ab = f_diagonal*(3/5); //Force on segment AB in N
V = f_ab; //Shear force acting on the sectioned horizontal plane EDB in N

//Balancing forces along the Y direction.
f_bc = f_diagonal*(4/5); //Force on segment BC in N.

//Average compressive stresses along the horizontal and vertical planes:

avg_comp_ab = f_ab/a1; // N/mm^2
avg_comp_bc = f_bc/a2; // N/mm^2

//Average shear stress acting on the horizontal plane defined by EDB :

avg_shear = f_ab/a3; // N/mm^2

//Display:


printf('\n\nThe Force on segment AB                  = %.2f N',f_ab);
printf('\nThe Shear Force on sectioned plane EDB   = %.2f N',V);
printf('\nThe Force on segment BC                  = %.2f N',f_bc);
printf('\nThe average compressive stress along AB  = %.2f N/mm^2',avg_comp_ab);
printf('\nThe average compressive stress along BC  = %.2f N/mm^2',avg_comp_bc);
printf('\nThe average shear stress along EDB       = %.2f N/mm^2',avg_shear);

//-------------------------------------------------------------------------------END---------------------------------------------------------------------------


