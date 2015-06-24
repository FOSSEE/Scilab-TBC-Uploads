clear all; clc;

disp("Scilab Code Ex 10.2 : ")

//Given:
ep_x = -350;//(*10^-6) Normal Strain
ep_y = 200; //*(10^-6) Normal Strain
gamma_xy = 80; //*(10^-6) Shear Strain

//Orientation of the element:
tan_thetap = (gamma_xy)/(ep_x - ep_y);
thetap1 = (0.5)*(atan(tan_thetap));

//Principal Strains:

k = (ep_x + ep_y)/2;
l = (ep_x - ep_y)/2;
tou = gamma_xy/2;
R = sqrt( (l)^2 + tou^2);
ep1 = R + k;
ep2 = k -R ;
ep = [ep1 ep2];

ep_x1 = k + l*cos(2*thetap1)+ tou*sin(2*thetap1);
thetap1 = thetap1*(180/%pi);
thetap2 = (90 + thetap1);
thetap =[thetap1 thetap2];


//Display:

printf('\n\nThe orientation of the element in the positive counterclockwise direction    = %1.2f degrees, %1.2f  degrees ',thetap);
printf('\nThe principal strains are                                                    = %1.0f *10^-6 , %1.0f *10^-6 ',ep);
printf('\nThe principal strain in the new x direction is                               = %1.0f *10^-6 ',ep_x1);

//----------------------------------------------------------------------END---------------------------------------------------------------------------------------
