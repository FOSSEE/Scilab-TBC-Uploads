clear all; clc;

disp("Scilab Code Ex 5.6 : ")

//Given:
di = 30; //mm
ri= (di/2000); //m
d0 = 42; //mm
ro = (d0/2000); //m
P = 90; //kW
max_shear = 50; //MPa

//Calculations:
c = ro; //m
J = (%pi/2)*((ro^4)-(ri^4)); //Polar moment of inertia of hollow shaft
T = (max_shear*J)/c; //tou max = Tc/J

//P = 2(%pi)fT
f = (P)/(2*%pi*T*10^3);

//Display:


printf('\n\nThe required frequency of rotation of the shaft    = %1.1f Hz',f);

//---------------------------------------------------------------------------END------------------------------------------------------------------------


