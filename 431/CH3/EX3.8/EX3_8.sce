//Calculating the current and power factor of the primary circuit
//Chapter 3
//Example 3.8
//page 209
clear;
clc; 
disp("Example 3.8")
I2=30;........................//Secondary current in amperes
I0=2;                         //load current in amperes
V1=660;                        //primary voltage in volts
V2=220;                        //secondary voltage in volts
I1=(I2*V2)/V1;
phi0=acosd(0.225);
phi2=acosd(0.9);
I1c=(I1*cosd(phi2))+(I0*cosd(phi0));
I1s=(I1*sind(phi2))+(I0*sind(phi0));
I=sqrt(I1c^2+I1s^2);
phi=atand(I1s/I1c)
printf("I1=%fA",I)
printf("\nprimary power factor=%fdegrees",cosd(phi));
