clear all; clc;

disp("Scilab Code Ex 13.3 : ")

//Given:
E = 200;//GPa
Ix = 13.4*10^-6;
Iy = 1.83*10^-6;
l = 8;
KLx = 0.5*l; //m
KLy = 0.7*(l/2); //m
rx = 66.2; //mm
ry = 24.5; //mm

Pcrx = (%pi^2*E*10^6*Ix)/(KLx^2); //Pcr = (%pi^2*EI)/(l^2)
Pcry = (%pi^2*E*10^6*Iy)/(KLy^2); //Pcr = (%pi^2*EI)/(l^2)

Pcr = min(Pcrx,Pcry);
A = 3060; //mm^2
sigma_cr = Pcr/A;

sl_ratio_x = (KLx*1000)/(rx);
sl_ratio_y = (KLy*1000)/(ry);
s_ratio = max(sl_ratio_x, sl_ratio_y);

//Display:

printf("\n\nThe maximum load that the column can support without buckling    = %1.0f kN',Pcr);
printf("\nThe largest slenderness ratio                                    = %1.1f N/mm^2',s_ratio);
//----------------------------------------------------------------------END--------------------------------------------------------------------------------



