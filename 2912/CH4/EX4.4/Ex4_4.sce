//chapter 4
//example 4.4
//Find wavelength and maximum order possible
//page 76
clear;
clc;
//given
d=0.282; // in nanometer (spacing constant)
n=1; // order
theta=8.35; // in degree (glancing angle)
//calculate
d=d*1E-9; // since d is in nanometer
// Since 2dsin(theta)=n(lambda)
// therefore we have
lambda=2*d*sind(theta)/n; 
printf('\nThe wavelength is \t%1.2E m',lambda);
lambda_1=lambda*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t=%.3f Angstrom',lambda_1);
theta_1=90; // in degree (for maximum order theta=90)
n_max=2*d*sind(theta_1)/lambda; // calculation of maximum order. 
printf('\nThe maximum order possible is \tn=%.f',n_max);
//Note: In question value of theta=8 degree and 35 minutes but solution uses theta=8.35 degree
// I am using theta=8.35 degree
