clear all; clc;

disp("Scilab Code Ex 6.23 : ")

//Given:
M = 60; //kNm
Est = 200; //GPa
Econc = 25; //GPa
d = 25;//mm
r = d/2;
w = 300;//mm
ht =400; //mm

//Section Properties:
n = Est/Econc;
Ast = 2*%pi*r^2;
A = n*Ast;

p = [1 52.37 -20949.33]
h = roots(p)
h = h(2);

I = (1/12)*(w*h^3) +w*h*(h/2)^2 + A*(ht - h)^2;

//Normal Stress:
sigma_conc_max = (M*1000*h*1000)/(I);
sigma_conc = (M*1000*(ht-h)*1000)/(I);
sigma_st = n*sigma_conc;

//Display:

    
 printf("\n\nThe normal stress in each steel reinforcing rod = %1.2f MPa',sigma_st);
 printf("\nThe maximum normal stress in the concrete = %1.2f MPa',sigma_conc_max);
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------


