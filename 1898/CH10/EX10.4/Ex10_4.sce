clear all; clc;

disp("Scilab Code Ex 10.4 : ")

//Given:
ep_x = 250;//(*10^-6) Normal Strain
ep_y = -150; //*(10^-6) Normal Strain
gamma_xy = 120; //*(10^-6) Shear Strain

//Construction of the circle:
strain_avg = (ep_x + ep_y)/2;
tou = gamma_xy/2;
R = sqrt((ep_x - strain_avg)^2 + (tou^2));

//Principal Strains:
ep1 = (strain_avg + R);
ep2 = (strain_avg - R);
strain = [ep1 ep2];

tan_thetap = (tou)/(ep_x - strain_avg);
thetap1 = (atan(tan_thetap))/2;
thetap1 = thetap1*(180/%pi);

//Display:

printf('\n\nThe principal strains are              = %1.0f *10^-6, %1.0f*10^-6 ',strain);
printf('\nThe orientation of the element         = %1.2f degrees',thetap1);
printf('\nThe average strain                     = %1.0f *10^-6 ',strain_avg);

//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------



