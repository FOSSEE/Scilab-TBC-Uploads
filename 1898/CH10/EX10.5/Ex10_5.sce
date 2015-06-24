clear all; clc;

disp("Scilab Code Ex 10.5 : ")

//Given:
ep_x = 250;//(*10^-6) Normal Strain
ep_y = -150; //*(10^-6) Normal Strain
gamma_xy = 120; //*(10^-6) Shear Strain

//Orientation of the element:
thetas = 90 - 2*8.35;
thetas1 = thetas/2;

//Maximum in-plane shear strain:

l = (ep_x - ep_y)/2;
tou = gamma_xy/2;
R = sqrt( l^2 + tou^2);
max_inplane_strain = 2*R;


strain_avg = (ep_x + ep_y)/2;


//Display:

printf('\n\nThe orientation of the element            = %1.1f degrees ',thetas1);
printf('\nThe maximum in-plane shear strain         = %1.0f *10^-6 ',max_inplane_strain);
printf('\nThe average strain                        = %1.0f *10^-6 ',strain_avg);

//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------
