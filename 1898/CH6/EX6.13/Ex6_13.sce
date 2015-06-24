clear all; clc;

disp("Scilab Code Ex 6.13 : ")

//Given:
l_ab = 4; //m
l_cd = 4; //m
l_bc = 6; //m
Rb = 8; //kN
uvl = 2; //kN/m

//Moment diagram:
p = [-1/18 0 -3.6 17.6]
x = roots(p)
y = x(3);

//Display:
    
 printf('\n\nV becomes zero at x = %1.2f m',y);

     
//-----------------------------------------------------------------END--------------------------------------------------------------------------





