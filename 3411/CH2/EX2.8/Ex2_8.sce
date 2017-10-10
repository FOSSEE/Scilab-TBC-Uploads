//Example 2_8
clc();
clear;
//To calculate the wavelength
k=2
theta1=10            //units in degrees
dtheta=3             //units in degrees
dlamda=5*10^-9       //units in cm
lamda=(sin((theta1*%pi)/180)*dlamda*60*60)/(cos((theta1*%pi)/180)*dtheta*(%pi/180))   //units in cm
printf("Wavelength of the lines is %.7f cms",lamda)
lamda_dlamda=lamda+dlamda         //units in cm
N=6063
Ne=(N*k*lamda)/sin((theta1*%pi)/180)        //units in cm
printf("\nMinimum grating width required is %.1fcm",Ne)
