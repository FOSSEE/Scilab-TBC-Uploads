clear all; clc;

disp("Scilab Code Ex 6.20 : ")

//Given:
M =20; //kN
Iy = 0.96*10^-3; //m^4
Iz = 7.54*10^-3; //m^4
theta = 57.1*(%pi/180);


//Internal moment Components:
My = M*sin(theta); 
Mz = M*cos(theta); 

//Bending Stress:
y_p = -0.2; //y Coordinate of P
z_p = 0.35; //z Coordinate of P

theta1 = (%pi/2)-(theta);
yp = -z_p*sin(theta1)+ y_p*cos(theta1);
zp = z_p*cos(theta1) + y_p*sin(theta1);

//Eq 6-17

sigma_p = ((Mz*-yp)/Iz) + ((My*zp)/Iy) ;
sigma_p = sigma_p/10^3;

//Orientation of the Nuetral Axis:
alpha = atan((Iz/Iy)*tan(theta));
alpha = alpha*(180/%pi);

//Display:

    
 printf("\n\nThe maximum normal stress at point P = %1.2f MPa',sigma_p);
 printf("\nThe orientation of the nuetral axis = %1.1f degrees',alpha);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------
