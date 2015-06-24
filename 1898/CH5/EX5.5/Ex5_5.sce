clear all; clc;

disp("Scilab Code Ex 5.5 : ")

//Given:
P = 3750; //W
N = 175; //rpm
allow_shear = 100; //MPa

//Calculations:
ang_vel = (2*%pi*N)/60; // rad/s
T = P/ang_vel; //P = T*angular velocity

c = ((2*T*1000)/(%pi*allow_shear))^(1/3);
d = round(2*c);

//Display:


printf('\n\nThe required diameter of the shaft   = %1.0f mm',d);

//------------------------------------------------------------------END------------------------------------------------------------------------------
