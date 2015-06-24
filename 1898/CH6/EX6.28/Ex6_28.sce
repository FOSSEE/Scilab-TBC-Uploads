clear all; clc;

disp("Scilab Code Ex 6.28 : ")

//Given:
sigma_y = 250; //MPa
t = 15/1000; //m
w = 100/1000; //m
h = 120/1000; //m
c = 10/1000; //m

//Calculations:
d = ((sigma_y*t*w)+(sigma_y*t*h))/(sigma_y*t*2);

T = sigma_y*t*d*10^3;
C1 = sigma_y*t*c*10^3;
C2 = sigma_y*t*w*10^3;

Mp = (T*d/2)+(C1*c/2)+(C2*(c+t/2));

//Display:

    
 printf("\n\nThe plastic moment that can be resisted by the beam = %1.1f kNm',Mp);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------

