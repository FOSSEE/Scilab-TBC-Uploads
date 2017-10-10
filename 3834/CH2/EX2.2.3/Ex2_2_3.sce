//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 2.2.3
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
n1=1.6;//refractive index in glass rod
n2=1;//refractive index of air
thetha2=90;//angle of refraction in degrees

v=n2/n1;
thethac=asind(v);//critical incident angle in degrees
mprintf("the critical incident angle=%.2f degrees ",thethac);
