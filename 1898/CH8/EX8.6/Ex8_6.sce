clear all; clc;

disp("Scilab Code Ex 8.6 : ")

//Given:
P = 40; //kN
l_ab = 0.4; //m
l_bc = 0.8; //m

//Stress Components:

//Normal Force:
A = l_ab*l_bc;
sigma = P/A;

//Bendng Moments:
M_x = P*l_ab/2;
cy = l_ab/2;
Ix = (1/12)*(l_bc*l_ab^3); //I = (1/12)*(bh^3)
sigma_max_1 = (M_x*cy)/Ix; //sigma = My/I

M_y = P*l_bc/2;
cx = l_bc/2;
Iy = (1/12)*(l_ab*l_bc^3); //I = (1/12)*(bh^3)
sigma_max_2 = (M_y*cx)/Iy; //sigma = My/I

//Superposition:
stress_A = -sigma + sigma_max_1 + sigma_max_2;
stress_B = -sigma - sigma_max_1 + sigma_max_2;
stress_C = -sigma - sigma_max_1 - sigma_max_2;
stress_D = -sigma + sigma_max_1 - sigma_max_2;

e = abs((stress_B*l_ab)/(stress_A-stress_B));
h = abs((stress_B*l_bc)/(stress_A-stress_B));

//Display:


printf('\n\nThe normal stress at corner A           = %1.0f kPa',stress_A);
printf('\nThe normal stress at corner B           = %1.0f kPa',stress_B);
printf('\nThe normal stress at corner C           = %1.0f kPa',stress_C);
printf('\nThe normal stress at corner D           = %1.0f kPa',stress_D);
printf('\nThe line of zero stress along AB        = %1.4f m',e);
printf('\nThe line of zero stress along AD        = %1.3f m',h);

//------------------------------------------------------------------------END------------------------------------------------------------------------------




