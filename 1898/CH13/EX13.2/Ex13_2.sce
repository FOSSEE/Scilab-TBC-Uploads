clear all; clc;

disp("Scilab Code Ex 13.2 : ")

//Given:
E = 200; //GPa
I = 15.3*10^6; //mm^4
l= 4*1000; //mm
A = 5890; //mm^2
sigma_y = 250; //MPa

//Calculations:

Pcr = ((%pi^2)*E*10^6*I*1000^-2)/(l^2); //Pcr = (%pi^2*EI)/(l^2)

sigma_cr = (Pcr*1000)/A;

if(sigma_cr>sigma_y)
    Pcr = (sigma_y*A);
    Pcr = Pcr/1000; //in kN
end

//Display:

printf("\n\nThe maximum allowable axial load that the column can support    = %1.1f kN',Pcr);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------
