// Question 5 
clc;
clear;
L_BL=0.6d-3;   //beat length
lamda=1.4d-6;   //wavelength
L_BL1=70;
Bh=lamda/L_BL;     //computing high briefringence
Bl=lamda/L_BL1;     //computing low briefringence
printf("\nHigh briefringence is %.2e.\nLow briefringence is %.1e.",Bh,Bl);
