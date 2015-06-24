clear all; clc;

disp("Scilab Code Ex 13.6 : ")

//Given:
z1 = 4*1000; //mm
e = 200; //mm
KLy = 0.7*z1;
Iy = 20.4*10^6;
E = 200*10^3; //N/mm^2
sigma_y =250; //MPa

//y-y Axis Buckling:
Pcry = (%pi^2*E*10^6*Iy)/(KLy^2); //Pcr = (%pi^2*EI)/(l^2)
Pcry = Pcry/1000;

//x-x Axis Yielding:
Kx= 2;
KLx = Kx*z1;
c = (z1-KLy)/2;
rx = 89.9;

//Solved by applying the Secant Formula and then finding Px by trial and error:

trial_Px = 419.4; //kN

A = 7850;//mm^2
sigma = (trial_Px*1000)/(A);

if(Pcry>trial_Px & sigma<sigma_y)
printf('\n\nThe maximum eccentric load that the column can support = %1.1fkN',trial_Px);
printf('\nFailure will occur about the x-x axis.');

end

//--------------------------------------------------------------------------END------------------------------------------------------------------------------------
