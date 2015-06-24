clear all; clc;

disp("Scilab Code Ex 3.3 : ")

//Given:
p = 10000; //N
E_al = 70*(10^3); //MPa
l_ab = 600; //mm
d_ab = 20; //mm
l_bc = 400; //mm
d_bc = 15; //mm

//Calculations:

a_ab = (%pi/4)*(d_ab^2);// Area of AB
a_bc = (%pi/4)*(d_bc^2);
stress_ab = p/a_ab;// Stress = load/area
stress_bc = p/a_bc;

e_ab = stress_ab/E_al; //Hookes's Law. Elastic strain.
e_bc = 0.045; //mm/mm . From the graph for stress_bc

elongation = (l_ab*e_ab)+ (l_bc*e_bc);
strain_rec = stress_bc/E_al; //Strain Recovery

e_og = e_bc-strain_rec;// mm/mm
rod_elong = e_og*l_bc;

//Display:

printf("\n\nThe elongation of the rod when load is applied           =%10.1f mm",elongation);
printf("\nThe permanent elongation of the rod when load is removed = %0.1f mm",rod_elong);

//-------------------------------------------------------------------------END----------------------------------------------------------------------------------
