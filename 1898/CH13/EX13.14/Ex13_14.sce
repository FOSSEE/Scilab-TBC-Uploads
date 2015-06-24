
clear all; clc;

disp("Scilab Code Ex 13.14 : ")

//Given:
K = 2;
d= 60; //mm
L = 1200; //mm
e = 80; //mm
c = d;
A = 60*120; //mm^2
l = 60; //mm
b = 120;//mm


//Calculations:
sl_ratio = (K*L)/(d);

if(sl_ratio>26 & sl_ratio<50)
    sigma_allow = (3718)/(sl_ratio^2);
    sigma_max = sigma_allow;
    
    I = (1/12)*(l*b^3);
    coeffP = (1/A) + (e*c)/(I);
    P = sigma_max/coeffP;
    P = P/1000; //kN
    
     printf('\n\nThe eccentric load that can be supported = %1.2f kN',P);
end

//Answer given in the textbook varies.

//-------------------------------------------------------------------------END-------------------------------------------------------------------------------------
    
    
    
