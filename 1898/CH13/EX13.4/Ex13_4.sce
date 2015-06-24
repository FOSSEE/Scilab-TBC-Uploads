clear all; clc;

disp("Scilab Code Ex 13.4 : ")

//Given:
E = 70;//GPa
Ix = 61.3*10^-6;
Iy = 23.2*10^-6;
l = 5;
KLx = 2*l; //m
KLy = 0.7*(l); //m
FS = 3; //Factor of safety
sigma_y = 215; //MPa


Pcrx = (%pi^2*E*10^6*Ix)/(KLx^2); //Pcr = (%pi^2*EI)/(l^2)
Pcry = (%pi^2*E*10^6*Iy)/(KLy^2); //Pcr = (%pi^2*EI)/(l^2)

Pcr = min(Pcrx,Pcry);
A = 7.5*10^-3; //mm^2
P_allow = Pcr/FS;
sigma_cr = (Pcr*10^-3)/A;


if(sigma_cr<sigma_y)

  printf("\n\nThe largest allowable load that the column can support     = %1.0f kN',P_allow);
end

//----------------------------------------------------------------------END--------------------------------------------------------------------------------

