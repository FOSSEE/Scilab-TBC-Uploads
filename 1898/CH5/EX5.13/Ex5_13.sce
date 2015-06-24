clear all; clc;

disp("Scilab Code Ex 5.13 : ")

//Given:
 l = 1.2; //m
 a = 40; //mm
 tou_allow = 56; //MPa
 phi_allow = 0.02; //rad
 G = 26; //GPa
 alpha = (60*%pi)/180; //degrees
 
 //Calculations:
 T_shear1 = (tou_allow*a^3)/(20*1000); // allowable shear stress = (20T)/(a^3)
 T_twist1 = (phi_allow*a^4*G*10^3)/(46*l*10^6); //angle of twist =(46TL)/(a^4*G)
 
 T1 = min(T_shear1, T_twist1);
 
//Circular Cross Section:
c_ = (a*a*sin(alpha))/(%pi*2);
c = sqrt(c_);

J = (%pi/2)*(c^4);
T_shear2 = (tou_allow*J)/(c*1000);
T_twist2 = (phi_allow*J*G*10^3)/(l*10^6);

 T2 = min(T_shear2, T_twist2);


//Display:

printf('\n\nThe largest torque that can be applied at the end of the triangular shaft    = %1.2f Nm',T1);
printf('\nThe largest torque that can be applied at the end of the circular shaft      = %1.2f Nm',T2);


//------------------------------------------------------------------------------END------------------------------------------------------------------
