//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 2.2.2
//OS=Windows 10
//Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
n1=1;//refractive index 1
theta1=30;//angle of incidence in degrees
n2=1.5;//refractive index 2

u=sind(theta1);
theta2=asind(u/n2);//angle of refraction in degrees case1

theta3=theta1//From figure 2.4(a) given theta3= theta1=30 degrees//angle of relection
v=n2*sind(theta1);
theta4=asind(v/n1)//angle of refraction in degrees case 2
mprintf("\n Angle of reflection=%.1f degrees",theta3);
mprintf("\n Angle of refraction case 1=%.1f degrees ",theta2);
mprintf("\n Angle of refraction case2=%.1f degrees ",theta4);
