clear all; clc;

disp("Scilab Code Ex 11.6 : ")

//Given:
tou_allow = 50*10^6; //MPa
T = 7.5; //Nm
R_ah = 150; //N
R_av = 475; //N
l_ac = 0.25; //m

mc = R_ah*l_ac;
m = R_av*l_ac;

M_c = sqrt(m^2 + mc^2);

k = sqrt(M_c^2 + T^2);
c1 = (2*k)/(%pi*tou_allow);
c = c1^(1/3);

d = 2*c*1000;

//Display:

     printf("\n\nThe smallest allowable diameter of the shaft = %1.1f mm', d);

//----------------------------------------------------------------------END------------------------------------------------------------------------------
