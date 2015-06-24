clear all; clc;

disp("Scilab Code Ex 1.16 : ")

//Given:
bearing_allow = 75; //MPa
tensile_allow = 55; //MPa
d_shaft = 60; //mm
r_shaft = d_shaft/2; //mm
area_shaft = %pi*(r_shaft^2); //Area = pi*r^2
d_collar = 80; //mm
r_collar = d_collar/2; //mm
area_collar = %pi*(r_collar^2); //Area = pi*r^2
thick_collar = 20; //mm

//Normal Stress:
P1 = (tensile_allow* area_shaft)/3; //Tensile stress = 3P/A.
P1_kN = P1/1000;


//Bearing Stress:
bearing_area = area_collar-area_shaft; //mm^2
P2 = (bearing_allow*bearing_area)/3; //Bearing stress = 3P/A.
P2_kN= P2/1000;

if(P2_kN<P1_kN)
    big = P2_kN;
else big = P1_kN;
    end
    
//Displaying Results:

printf("\n\nThe load calculated by Normal Stress               = %.1f kN",P1_kN);
printf("\nThe load calculated by Bearing Stress              = %.1f kN",P2_kN);
printf("\nThe largest load that can be applied to the shaft  = %.1f kN",big);

//----------------------------------------------------------------------------END----------------------------------------
