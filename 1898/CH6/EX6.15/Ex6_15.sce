clear all; clc;

disp("Scilab Code Ex 6.15 : ")

//Given:
udl = 5; //kN/m
l1 = 3;//m
l2 = 6; //m
t = 20/1000; //mm
yb = 0.15;//m

//Section Property:
I_bar1 = (1/12)*(0.25)*(0.02^3);
Ad2 = (0.25)*(0.02)*(yb+(t/2))^2;
I_bar2 = (1/12)*(0.02)*(0.3^3);
I = 2*(I_bar1 + Ad2) + I_bar2;

//Bending stress:
c = 0.15 + t;
M= 22.5; //kNm

sigma_max = (M*c)/(I*1000);

sigma_B = (M*yb)/(I*1000);

//Display:

 printf('\n\nThe absolute maximum bending stress is = %1.1f MPa',sigma_max);

     
//-----------------------------------------------------------------END--------------------------------------------------------------------------

