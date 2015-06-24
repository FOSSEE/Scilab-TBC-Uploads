clear all; clc;

disp("Scilab Code Ex 6.30 : ")

//Given:
sigma_y = 250; //MPa
t = 12.5; //mm
w = 200; //mm
h = 225; //mm
c = (h/2)+t;
I = 82.44*10^6;//mm^4
Mp = 188; //kN

//Calculations:
sigma_allow = (Mp*10^6*c)/(I);
y = (sigma_y*c)/(sigma_allow);

//Display:
    
 printf("\n\nThe point of zero normal stress = %1.2f mm',y);
 printf("\nThe Residual Stress distribution is shown in the text book.");
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------
