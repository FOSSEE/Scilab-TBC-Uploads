//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.2w
//calculation of length of the image of an object placed horizontal at a distance from the mirror.

//given data
u=-30; //object distance of point A(in cm)
f=-10; //focal length of the mirror(in cm)
//r=2f=20 cm
//image of B is formed at centre of curvature since it is located at the centre of curvature.

//calculation
v=1/((1/f)-(1/u)); //mirror formula

disp(v+(2*-f),'length(in cm) of the image is'); 
 
