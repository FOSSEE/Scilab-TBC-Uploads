//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.2w
//calculation of resultant of three vectors

//given data
theta1=37; //value of angle(in degree) of first vector with X axis
theta2=0; //value of angle(in degree) of second vector with X axis
theta3=90; //value of angle(in degree) of third vector with X axis
x=5; //magnitude(in m) of first vector
y=3; //magnitude(in m) of second vector
z=2; //magnitude(in m) of third vector

//calculation
xcomp1=x*cosd(theta1); //xcomponent(in m) of first vector
ycomp1=x*sind(theta1);//ycomponent(in m) of first vector
xcomp2=y*cosd(theta2);//xcomponent(in m) of second vector
ycomp2=y*sind(theta2);//ycomponent(in m) of second vector
xcomp3=z*cosd(theta3);//xcomponent(in m) of third vector
ycomp3=z*sind(theta3);//ycomponent(in m) of third vector

xcompr=xcomp1+xcomp2+xcomp3; //xcomponent(in m) of resultant vector
ycompr=ycomp1+ycomp2+ycomp3; //ycomponent(in m) of resultant vector

r=sqrt((xcompr*xcompr)+(ycompr*ycompr)); //magnitude(in m) of resultant vector
theta=atand(ycompr/xcompr); //value of angle(in degree) of resultant vector with X axis

disp(r,'magnitude(in m) of resultant vector is');
disp(theta,'value of angle(in degree) of resultant vector with X axis');
