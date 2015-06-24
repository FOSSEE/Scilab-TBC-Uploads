//clear//
//Caption: Program to calculate Fiber Birefringence BETA_f
//Example2.5
//page 65
clear;
close;
clc;
Lambda = input('Enter the wavelength of Optical Signal');
Lp = input('Beat Length');
BETA_f_FORMULA1 = 2*%pi/Lp;
disp(BETA_f_FORMULA1,"The fiber birefriengence using formula 1");
BETA_f_FORMULA2 = Lambda/Lp;
disp(BETA_f_FORMULA2,"The fiber birefriengence using formula 2");
//Result
//Enter the wavelength of Optical Signal 1300e-09
//Beat Length 8e-02
//The fiber birefriengence using formula 1       78.539816  
//The fiber birefriengence using formula 2       0.0000162
