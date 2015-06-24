clear all; clc;

disp("Scilab Code Ex 5.3 : ")

//Given:
T1 = 4250; //kNmm
T2 = -3000; //kNm
T3 = T1+T2; //kNm
r = 75; //mm

//Section Property:
J = (%pi/2)*(r^4); //polar moment of inertia

//Shear Stress:
c_a = 75; //mm
tou_a = (T3*c_a*1000)/J; //tou = Tc/J

c_b = 15; //mm
tou_b = (T3*c_b*1000)/J; //tou = Tc/J

//Display:

printf('\n\nThe shear stress developed at A   = %1.2f MPa',tou_a);
printf('\nThe shear stress developed at B   = %1.3f MPa',tou_b);

//--------------------------------------------------------------------------------------END-------------------------------------------------------------------------------

