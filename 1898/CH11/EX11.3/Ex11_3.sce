clear all; clc;

disp("Scilab Code Ex 11.3 : ")

//Given:
udl = 12; //kN/m
h_by_a = 1.5;
sigma_allow = 9; //MPa
tou_allow = 0.6; //MPa

//Shear and Moment Diagrams:
V_max = 20; //kN
M_max =10.67; //kNm

//Bending Stress:
S_reqd = (M_max)/(sigma_allow*1000);
c = h_by_a/2;
a_cube = (S_reqd*c*12)/(1.5^3); //S_reqd = I/c
a = a_cube^(1/3);

 
A = a*h_by_a*a;
tou_max = (1.5*V_max)/(A*1000);


if(tou_max>tou_allow)
    a_sqr = (3/2)*(V_max)/(h_by_a*tou_allow*1000);
    a =sqrt(a_sqr);
end

//Display:

     printf("\n\nThe smallest width for the laminated wooden beam = %1.3f m', a);

//----------------------------------------------------------------------END-----------------------------------------------------------------------------
