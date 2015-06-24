//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.31(PAGENO 257)");

//given
f_m1 = 2*10^3//modulating frequency for first case
delta_f1= 5*10^3//frequency deviation for first case
f_m2 = 1*10^3//modulating frequency for second case
delta_f2 = 3*5*10^3//modulating frequency for second case

//calculations
BW1 = 2*(delta_f1 + f_m1)//bandwidth of the FM signal for first case
BW2 = 2*(delta_f2 + f_m2)//bandwidth of the FM signal for secpnd case

//results
printf("\n\ni.Bandwidth of the FM signal for first case = %.2f Hz",BW1)
printf("\n\nii.Bandwidth of the FM signal for second case = %.2f Hz",BW2)
