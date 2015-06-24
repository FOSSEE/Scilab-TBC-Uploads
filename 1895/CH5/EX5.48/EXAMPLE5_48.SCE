//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.48(PAGENO 264)");

//given
delta_f = 75*10^3//frequency deviation
f_M = 15*10^3//modulating frequency

//calculations
//we have w_m = 2*%pi*f_M where f_M = 15KHz,we get
D = delta_f/f_M//deviation ratio
//by using thr given formula, the bandwidth will be
f_B1 = 2*(D+2)*f_M
//Using Carson's rule, the bandwidt will be 
f_B2 = 2*(D+1)*f_M

//results 
printf("\n\ni.Bandwidth calculation using thr given formula = %.2f Hz",f_B1)
printf("\n\nii.Bandwidth calculation using the carson rule = %.2f Hz",f_B2)
