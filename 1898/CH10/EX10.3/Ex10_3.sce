clear all; clc;

disp("Scilab Code Ex 10.3 : ")

//Given:
ep_x = -350;//(*10^-6) Normal Strain
ep_y = 200; //*(10^-6) Normal Strain
gamma_xy = 80; //*(10^-6) Shear Strain

//Orientation of the element:
tan_thetap = -(ep_x - ep_y)/(gamma_xy);
thetap1 = (0.5)*(atan(tan_thetap));

//Maximum in-plane shear strain:

l = (ep_x - ep_y)/2;
tou = gamma_xy/2;
R = sqrt( l^2 + tou^2);
max_inplane_strain = 2*R;

gamma_xy_1 = (-l*sin(2*thetap1)+ tou*cos(2*thetap1))*2;
strain_avg = (ep_x + ep_y)/2;

thetap1 = thetap1*(180/%pi);
thetap2 = (90 + thetap1);
thetap =[thetap1 thetap2];

//Display:

printf('\n\nThe orientation of the element            = %1.1f degrees, %1.1f  degrees ',thetap);
printf('\nThe maximum in-plane shear strain         = %1.0f *10^-6 ',max_inplane_strain);
printf('\nThe average strain                        = %1.0f *10^-6 ',strain_avg);

//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------
