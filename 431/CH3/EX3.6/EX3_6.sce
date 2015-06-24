//Calculating the value of primary current
//Chapter 3
//Example 3.6
//page 207
clear;
clc; 
disp("Example 3.6")
I0=1.5;                //no-load current
phi0=acosd(0.2)
I2=40;                 //secondary current in amperes
phi2=acosd(0.8)
r=3;                    //ratio of primary and secondary turns
I1=I2/r;            
I1c=(I1*cosd(phi2))+(I0*cosd(phi0));
I1s=(I1*sind(phi2))+(I0*sind(phi0));
I=sqrt(I1c^2+I1s^2);
printf("I1=%fA",I)

