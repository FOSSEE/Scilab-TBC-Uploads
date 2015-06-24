clear all; clc;

disp("Scilab Code Ex 10.7 : ")

//Given:
ep_x = -400;//(*10^-6) Normal Strain
ep_y = 200; //*(10^-6) Normal Strain
gamma_xy = 150; //*(10^-6) Shear Strain

//Maximum in-plane Shear Strain:
strain_avg = (ep_x+ ep_y)/2;
tou = gamma_xy/2;

R = sqrt((-ep_x + strain_avg)^2 + tou^2); 
strain_max = strain_avg + R;
strain_min = strain_avg - R;

max_shear_strain = strain_max - strain_min;

//Absolute Maximum Shear Strain:
abs_max_shear = max_shear_strain;

//Display:

printf('\n\nThe maximum in-plane principal strain     = %1.0f *10^-6 ',strain_max);
printf('\nThe minimum in-plane principal strain     = %1.0f *10^-6 ',strain_min);
printf('\nThe maximum in-plane shear strain         = %1.0f *10^-6 ',max_shear_strain);
printf('\nThe absolute maximum shear strain         = %1.0f *10^-6 ',abs_max_shear);
printf('\nThe average strain                        = %1.0f *10^-6 ',strain_avg);
//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------


