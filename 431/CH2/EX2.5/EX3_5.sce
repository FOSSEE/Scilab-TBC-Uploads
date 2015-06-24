//Calculating the current and power factor of the primary circuit
//Chapter 3
//Example 3.5
//page 206
clear;
clc; 
disp("Example 3.5")
I2=300;........................//Secondary current in amperes
N1=1200;                        //number of primary turns
N2=300;                         //number of secondary turns
I0=2.5;                         //load current in amperes
I1=(I2*N2)/N1;
phi0=acosd(0.2);
phi2=acosd(0.8);
I1c=(I1*cosd(phi2))+(I0*cosd(phi0));
I1s=(I1*sind(phi2))+(I0*sind(phi0));
I=sqrt(I1c^2+I1s^2);
phi=atand(I1s/I1c)
printf("primary power factor=%fdegrees",cosd(phi));