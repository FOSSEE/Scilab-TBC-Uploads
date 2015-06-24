clear all; clc;

disp("Scilab Code Ex 6.26 : ")

//Given:
M = 5; //kNm
sigma_y = 500; //MPa
r = 16; //mm
h = 80; //mm
w = 120; //mm
r_h = r/h;
w_h = w/h;
k = 1.45; 
c = h/(2000);
t = 20/1000; //m

//Calculations:
I = (1/12)*(t)*(h/1000)^3
sigma_max = (k*M*c)/(I*1000);

//Display:
    
 printf("\n\nThe maximum normal stress in the steel = %1.0f MPa',sigma_max);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------


