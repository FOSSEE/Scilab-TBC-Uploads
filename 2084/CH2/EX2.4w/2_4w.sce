//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.4w
//calculation of direction of resultant vector

//given data
//OA=OB=OC=F all the three vectors have same magnitude
//xcompOA=F*cos30=(F*(sqrt(3)))/2
//xcompOB=F*cos360=F/2
//xcompOC=F*cos135=-F/(sqrt(2))
//xcompr=xcompOA + xcompOB + xcompOC

//ycompOA=F*cos60=F/2
//ycompOB=F*cos360=-(F*(sqrt(3)))/2
//ycompOC=F*cos135=F/(sqrt(2))
//ycompr=ycompOA + ycompOB + ycompOC

//calculation
theta=atand((1-sqrt(3)-sqrt(2))/(1+sqrt(3)+sqrt(2)));

disp(theta,'the angle(in degree) made by OA+OB-OC vector with X axis is');
