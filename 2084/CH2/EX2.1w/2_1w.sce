//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.1w
//calculation of magnitude and direction of vector

//given data
xcomp=25; //value of component along X axis
ycomp=60; //value of component along Y axis
theta=90; //angle between X and Y axis

//calculation
A=sqrt((xcomp*xcomp)+(ycomp*ycomp)+(2*xcomp*ycomp*cosd(theta)));
alpha=atand(ycomp/xcomp);

disp(A,'magnitude of the vector is');
disp(alpha,'direction of the vector is');

