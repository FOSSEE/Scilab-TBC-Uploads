clear all; clc;

disp("Scilab Code Ex 5.1 : ")

//Given:
r = 50; //mm
J = (%pi/2)*(r^4); //polar moment of inertia
tou_max = 56; //MPa
T = (tou_max*J)/(r*10^6); //toumax = Tc/J

//Display:


printf("\n\nThe resultant internal torque    = %1.0f kNm',T);

//-----------------------------------------------------------------END-------------------------------------------------------------------------------------------------


