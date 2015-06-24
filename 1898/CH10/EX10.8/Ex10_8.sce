clear all; clc;

disp("Scilab Code Ex 10.8 : ")

//Given:
ep_a = 60;//(*10^-6) Normal Strain
ep_b = 135; //*(10^-6) Normal Strain
ep_c = 264; //*(10^-6) Normal Strain

theta_a = 0;
theta_b = 60*(%pi/180);
theta_c = 120*(%pi/180);

//Using matrices to solve the equations: 
a1 = (cos(theta_a))^2;
b1 = (sin(theta_a))^2;
c1 = cos(theta_a)*sin(theta_a);

a2 = (cos(theta_b))^2;
b2 = (sin(theta_b))^2;
c2 = cos(theta_b)*sin(theta_b);

a3 = (cos(theta_c))^2;
b3 = (sin(theta_c))^2;
c3 = cos(theta_c)*sin(theta_c);

A = [a1 b1 c1 ; a2 b2 c2; a3 b3 c3 ]
b = [ep_a ; ep_b ; ep_c];
strain = A\b;

ep_x = strain(1);
ep_y = strain(2);
gamma_xy = strain(3);

strain_avg = (ep_x + ep_y )/2;
tou = gamma_xy/2;

R = sqrt((-ep_x + strain_avg)^2 + tou^2); 

ep1 = strain_avg + R;
ep2 = strain_avg - R;
ep = [ep1 ep2];

tan_thetap =atan(-tou/(-ep_x + strain_avg));
thetap = tan_thetap/2;
thetap2 = thetap*(180/%pi);

//Display:


printf('\n\nThe maximum in-plane principal strains are     = %1.0f *10^-6 , %1.1f *10^-6',ep);
printf('\nThe angle of orientation                       = %1.1f degrees',thetap2);

//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------


 
 





