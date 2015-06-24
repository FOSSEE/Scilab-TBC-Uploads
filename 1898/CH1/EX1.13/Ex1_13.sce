
clear all; clc;


disp("Scilab Code Ex 1.13 : ")

//Given:
shear_allow = 90; //MPa
tensile_allow = 115; //MPa

l_AP = 2; //m
l_PB = 1; //m
resultant_A = 5.68; //kN
resultant_B = 6.67; //kN
v_a = 2.84; //kN
v_b = 6.67; //kN


//Diameter of the Pins:
A_A = (v_a*10^3)/(shear_allow*10^6); //Area of pin A
da = (sqrt((4*A_A)/%pi))*10^3 // d = (square root of(area*4/pi)) in mm
A_B = (v_b*10^3)/(shear_allow*10^6) ; //Area of pin B
db = (sqrt((4*A_B)/%pi))*10^3 // Area = (%pi\4)d^2 in mm^2

chosen_da = ceil(da);
chosen_db = ceil(db);

//Diameter of Rod:
A_bc = (resultant_B*10^3)/(tensile_allow*10^6); //Area of BC
dbc = (sqrt((4*A_bc)/%pi)*10^3); // Area  = %pi\4)d^2
chosen_dbc = ceil(dbc);

//Displaying Results:

printf ("\n\n The diameter of pin A   = %.3f mm",da);
printf ("\n The diameter of pin B   = %.3f mm",db);
printf ("\n The diameter of rod BC  = %.2f mm",dbc);
printf ("\n\n\nThe chosen diameters are: ");
printf ("\n The diameter of pin A   = %.3f mm",chosen_da);
printf ("\n The diameter of pin B   = %.3f mm",chosen_db);
printf ("\n The diameter of rod BC  = %.2f mm",chosen_dbc);

//-----------------------------------------------------------------------END--------------------------------------------------------------------




 
