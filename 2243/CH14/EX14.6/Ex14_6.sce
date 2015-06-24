clc();
clear;
//Given :
P = 10; // Power in W
lambda =5000; // wavelength in A
SI = 7*10^3; // Sun's radiation intensity in W/cm^2
// 1 A = 1.0*10^-8 cm
I = P/(lambda*10^-8)^2; //Intensity in W/cm^2
Ratio = (I)/SI; 
printf("Intensity =  %.0f x 10^6 kW/cm^2 \n",I*10^-9);
printf("Intensity of this laser source is %.1f x 10^6 times the intensity of Sun radiation",Ratio*10^-6);
//Textbook : Only order of 10 is considered in the result
