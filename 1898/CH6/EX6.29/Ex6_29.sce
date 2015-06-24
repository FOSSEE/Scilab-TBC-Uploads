clear all; clc;

disp("Scilab Code Ex 6.29 : ")

//Given:
ep1 = 0.01;
ep2 = 0.05;
sig1 = 1050;//N/mm^2
sig2 = 1330;//N/mm^2
sig3 = 280; //N/mm^2
y = 0.3; //cm
h = 3; //cm
w = 2; //cm

//Calculations:
yy = (h/2)-y
T1 = (1/2)*(sig3*yy*w);
y1 = y +(2/3)*(yy);
T2 = yy*sig1*w;
y2 = y+(0.5*yy);
T3 = (0.5*y*sig1*w);
y3 = (2/3)*(y);

M = 2*(T1*y1 + T2*y2 + T3*y3);
M = M/1000;

//Display:

    
 printf("\n\nThe bending moment applied that will cause a strain of 0.05mm/mm = %1.2f kNm',M);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------


