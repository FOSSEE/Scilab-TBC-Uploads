clear all; clc;

disp("Scilab Code Ex 3.6 : ")

//Given:
d_o = 0.025; //m
l_o =0.25; //m
F =165; //kN
delta = 1.2; //mm
G_al = 26; //GPa
sigma_y = 440; //MPa

//Calculations:

//Modulus of Elasticity:
A = (%pi/4)*(d_o^2);
avg_normal_stress = (F*10^3)/A;
avg_normal_strain = delta/l_o;
E_al = avg_normal_stress/ avg_normal_strain;

E_al = E_al/10^6;

//Contraction of Diameter:
nu = (E_al/(2*G_al))-1;
strain_lat = nu*(avg_normal_strain) ;
d_contraction = strain_lat* d_o ;


//Display:

printf("\n\nThe Modulus of Elasticity                    = %10.1f GPa",E_al);
printf("\nThe contraction in diameter due to the force = %10.4f mm",d_contraction);

//------------------------------------------------------------------------------END----------------------------------------------------------------------------------------
