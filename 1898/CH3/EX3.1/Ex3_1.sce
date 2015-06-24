clear all; clc;

disp("Scilab Code Ex 3.1 : ")

//Given:
offset = 0.2; //%
a_x = 0.0016; //mm/mm
a_y = 345; //Mpa

//Refer to the given graph.

//Calculations:

//Modulus of Elasticity
E = a_y/(a_x*10^3); //E is the slope in GPa.

//Yield Strength:
sigma_ys = 469; //Graphically, for a strain of 0.002mm/mm

//Ultimate Stress:
sigma_u = 745.2; //Mpa B is the peak of stress strain graph.

//Fracture Stress:
ep_f = 0.23; //mm/mm
sigma_f = 621; //Mpa from the graph.

//Display:

printf("\n\nThe Modulus of Elasticity is          = %10.1f GPa",E);
printf("\nThe Yield Strength from the graph     =    %0.2f MPa",sigma_ys);
printf("\nThe Ultimate Stress from the graph is =%10.1f MPa",sigma_u);
printf("\nThe Fracture Stress from the graph is =%10.1f MPa",sigma_f);

//-------------------------------------------------------------------------END----------------------------------------------------------------------------------


