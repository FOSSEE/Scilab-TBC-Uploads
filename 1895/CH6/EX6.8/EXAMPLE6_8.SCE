//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.8(PAGENO 297)");

//given
R_a = 50//antenna resistance
R_eq = 30//equivalent noise resistance of receiver
T_0 = 290//initial temperature in degree kelvin
//calculations
F = 1+(R_eq/R_a);//noise figure
F_dB = 10*log10(F)//noise figure in decibels
T_eq = T_0*(F-1)//equivalent temperature

//results
printf("\n\ni.Noise figure in decibels = %.2f dB",F_dB);
printf("\n\nii.Equivalent temperature  = %.2f degree kelvin",T_eq)
