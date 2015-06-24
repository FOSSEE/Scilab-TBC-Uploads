clear all; clc;

disp("Scilab Code Ex 6.18 : ")

//Given:
M = 12; //kNm
l_bc = 0.2; //m
l_be = 0.4; //m

//Internal Moment Components:
My = (-4/5)*M;
Mz = (3/5)*M;

Iy = (1/12)*(l_be*l_bc^3);
Iz = (1/12)*(l_bc*l_be^3); 

//Bending Stress:
sigma_B = (-Mz*1000*(l_be/2))/Iz + (My*1000*(-l_bc/2))/Iy;
sigma_B = sigma_B/10^6;
sigma_C = (-Mz*1000*(l_be/2))/Iz + (My*1000*(l_bc/2))/Iy;
sigma_C = sigma_C/10^6;
sigma_D = (-Mz*1000*(-l_be/2))/Iz + (My*1000*(l_bc/2))/Iy;
sigma_D = sigma_D/10^6;
sigma_E = (-Mz*1000*(-l_be/2))/Iz + (My*1000*(-l_bc/2))/Iy;
sigma_E = sigma_E/10^6;

//Orientation of Nuetral Axis:
z = (0.45)/(sigma_E + sigma_B);

//theta = -atan(4/3);
tanA = (Iz/Iy)*(-4/3);
alpha = atan(tanA);
alpha = alpha*(180/%pi);


//Display:

    
 printf("\n\nThe normal stress at B = %1.2f MPa',sigma_B);
 printf("\nThe normal stress at C = %1.2f MPa',sigma_C);
 printf("\nThe normal stress at D = %1.2f MPa',sigma_D);
 printf("\nThe normal stress at E = %1.2f MPa',sigma_E);
 printf("\nThe orientation of the nuetral axis = %1.1f degrees',alpha);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------

