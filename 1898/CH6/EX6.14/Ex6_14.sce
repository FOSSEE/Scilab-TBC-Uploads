clear all; clc;

disp("Scilab Code Ex 6.14 : ")

//Given:
b = 60; //mm
h = 120; //mm
sigma_max = 20; //N/mm^2
c = b;

//Part (a):
I = (1/12)*b*h^3;
M1 = (sigma_max*I)/(c); //sigma_max = Mc/I Flexure Formula
M1 = M1*10^-6; //in kN/m

//Part (b):
y0=60;
y1=-60

M2 = integrate('-(20*y^2)','y',y0,y1);
M2 = M2*10^-6;

F = (0.5*sigma_max*b*b);
c = 2*(60 -(0.5*b)); //distance between centroids of both the volumes.
M = F*c/1000;

//Display:
    
 printf("\n\nThe internal moment M calculated using : ");
 printf('\na)The flexure formula = %1.2f kNm',M1);
 printf('\nb)The resultant of the stress distribution using the basic principles = %1.2f kNm',M2);

     
//-----------------------------------------------------------------END--------------------------------------------------------------------------

