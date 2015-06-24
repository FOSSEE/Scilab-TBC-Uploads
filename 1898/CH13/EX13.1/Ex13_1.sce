clear all; clc;

disp("Scilab Code Ex 13.1 : ")

//Given:
l = 7.2*1000; //mm
E = 200; //GPa
ro = 75; //mm
ri = 70; //mm
sigma_y = 250; //MPa

//Calculations:
I = (%pi/4)*(ro^4 - ri^4)
A = (%pi)*(ro^2 -ri^2);

Pcr = (%pi^2*(E*10^6)*I*(1000)^-2)/(l^2); //Pcr = (%pi^2*EI)/(l^2)

sigma_cr = (Pcr*1000)/A;

if(sigma_cr<sigma_y)
   
    printf("\n\nThe maximum allowable axial load that the column can support    = %1.1f kN',Pcr);
end

//-------------------------------------------------------------------------END--------------------------------------------------------------------------------------------
