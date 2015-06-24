clear all; clc;

disp("Scilab Code Ex 10.1 : ")

//Given:
ep_x = 500; //Normal Strain
ep_y = -300; //Normal Strain
gamma_xy = 200; //Shear Strain
theta = 30*(%pi/180);
theta = theta*-1;

ep_x_new = ((ep_x+ep_y)/2) + ((ep_x - ep_y)/2)*cos(2*theta) + (gamma_xy/2)*sin(2*theta);

gamma_xy_new = -((ep_x - ep_y)/2)*sin(2*theta) + (gamma_xy/2)*cos(2*theta);
gamma_xy_new = 2*gamma_xy_new;

phi = 60*(%pi/180);
ep_y_new = (ep_x+ep_y)/2 + ((ep_x - ep_y)/2)*cos(2*phi) + (gamma_xy/2)*sin(2*phi);

//Display:


printf('\n\nThe equivalent strain acting on the element in the x plain oriented at 30 degrees clockwise    = %1.1f *10^-6',ep_x_new);
printf('\nThe equivalent strain acting on the element in the y plain oriented at 30 degrees clockwise    = %1.1f *10^-6',ep_y_new);
printf('\nThe equivalent shear strain acting on the element                                              = %1.0f *10^-6',gamma_xy_new);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------


