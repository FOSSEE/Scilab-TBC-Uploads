clear all; clc;


disp("Scilab Code Ex 1.14 : ")

//Given:
shear_allow = 55; //MPa
l_ac = 200; //mm
l_cd= 75; //mm
l_de = 50; //mm
l_ce = l_cd + l_de;
load_d =15; //kN
load_e = 25; //kN

//Internal Shear Force:
//summation Mc = 0

f_ab = ((load_d*l_cd +load_e*(3/5)*l_ce)/l_ac);
c_x =-load_d + (load_e*(4/5)); //resolving C in x dir
c_y = load_d + (load_e*(3/5)); //resolving C in y dir

f_c = sqrt(c_x^2 + c_y^2); //kN
V = f_c/2;

//Required Area
A = ((V*10^3)/(shear_allow)); //A = V/Allowable shear in mm^2
d = ((sqrt((4*A)/%pi))) // Area = (%pi\4)d^2 in mm^2

chosen_d = ceil(ceil(d))+1;

//Displaying Results:


printf("\n\nThe force at AB           = %.2f kN",f_ab);
printf("\nThe resultant force at C  = %.2f kN",f_c);
printf("\nThe area of pin           = %.2f mm^2",A);
printf("\nThe diameter of pin       = %.2f mm",chosen_d);

//---------------------------------------------------------------END--------------------------------------------------------------------------------------



