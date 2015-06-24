clear all; clc;

disp("Scilab Code Ex 6.27 : ")

//Given:
sigma_y = 250; //MPa
t = 12.5; //mm
w = 200; //mm
h = 225; //mm

//Maximum Elastic Moment:
yy = (h+t)/2;
I1 = (1/12)*(w*t^3) + (w*t*yy^2);
I = (1/12)*(t*h^3) + 2*(I1);
c = 125; //mm

My = (sigma_y*I)/(c); //Flexure Formula

//Plastic Moment:
C1= sigma_y*t*(h/2);
C2= sigma_y*t*(w);
Mp = (2*56.25*C1) + (2*yy*C2);

//Shape Factor:
k = Mp/My;

//Display:

    
 printf("\n\nThe shape factor for the beam = %1.2f ',k);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------

