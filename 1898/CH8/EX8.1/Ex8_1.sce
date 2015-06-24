clear all; clc;

disp("Scilab Code Ex 8.1 : ")

//Given:
di = 1.2*1000; //m
ri = di/2;
t = 12; //mm
sigma = 140; //MPa

//Cylindrical Pressure Vessel:

p1 = (t*sigma)/ri; //sigma = pr/t

//Spherical Vessel:

p2 = (2*t*sigma)/(ri); //sigma = pr/2t

//Display:

printf("\n\nThe maximum internal pressure the cylindrical pressure vessel can sustain    = %1.1f N/mm^2',p1);
printf('\nThe maximum internal pressure a spherical pressure vessel can sustain        = %1.1f N/mm^2',p2);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------
