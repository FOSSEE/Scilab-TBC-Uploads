clear all; clc;

disp("Scilab Code Ex 1.15 : ")

//Given:
P= 20; //kN
d_hole = 40; //mm
normal_allow = 60; //MPa
shear_allow = 35; //MPa


//Diameter of Rod:
area1 = (P*10^3)/(normal_allow*10^6); //Area in m^2
d = ((sqrt((4*area1)/%pi))*1000); // Area = (%pi\4)d^2


//Thickness of disc:
V = P;
area2 = (V*10^3)/(shear_allow*10^6); //Area in m^2
thickness = (area2*10^6)/(d_hole*%pi);// A = pi*d*t
 

printf("\n\nThe cross sectional area of disc   = %.8f m^2",area1);
printf("\nThe diameter of rode               = %.2f mm",d);
printf("\nThe thickness of disc              = %.2f mm",thickness);

//------------------------------------------------------------------------END------------------------------------------------------------------------------------

