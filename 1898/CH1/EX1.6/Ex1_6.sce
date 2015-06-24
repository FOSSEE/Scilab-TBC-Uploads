clear all; clc;


disp("Scilab Code Ex 1.6 :")

//Given:
netf_b = 18*(10 ^3); //N Net force at B.
netf_c = 8*(10^3); //N Net force at C.
f_a = 12 *(10^3); //N Force at A.
f_d = 22* (10^3); //N Force at D.
w = 35; //mm Width.
t = 10; //mm Thickness.

//calculations:
p_bc = netf_b + f_a; //N Net force in region BC.
a = w*t; //m^2 The area of the cross section.
avg_normal_stress = p_bc/a; //Average Normal Stress.



// Displaying results:

printf('\n\n Net force in the region BC                                 = %.2f N',p_bc);
printf('\nThe Area of cross section                                   = %.2f m^2',a);
printf('\nThe Average Normal Stress in the bar when subjected to load = %.2f MPa',avg_normal_stress);

//---------------------------------------------------------END----------------------------------------------------------------------------------------
