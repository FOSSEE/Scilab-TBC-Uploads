//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.6
//calculation of the slope of curve at a given point 

//given data
AB=5; //length of AB line segment
BC=4; //length of BC line segment
DE=5; //length of DE line segment
EF=-4; //length of EF line segment

//calculation
m1=AB/BC; //formula of slope,m1=dy/dx at x=2
//m2=0 since tangent to curve at x=6 is parallel to x axis
m2=0;
m3=DE/EF; //formula of slope,m2=dy/dx at x= 10

disp(m1,'the slope of the curve at x=2 is');
disp(m2,'the slope of the curve at x=6 is');
disp(m3,'the slope of the curve at x=10 is');

