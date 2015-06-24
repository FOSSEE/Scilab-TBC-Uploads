 //ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.47(PAGENO 264)");

//given
f_m = 2*10^3//modulating frequency for first case
delta_f1 = 5*10^3//frequency deviation for first case
f_m1 = 1*10^3//modulating frequency for second case
//beeta = (k_f*a_m)/(w_m) = delta_f/f_m

//calculations
beeta = delta_f1/f_m
f_B1 = 2*(beeta + 1)*f_m//bandwidth for first case
//beeta1 = (k_f*3*a_m)/(.5*w_m) = delta_f/f_m  therefore
beeta1 = 6*beeta
delta_f2 = beeta1 * f_m1 //frequency deviation for second case
f_B2 = 2*(beeta1 + 1)*f_m1//bandwidth for second case

//results
printf("\n\ni.Bandwidth for first case = %.2f Hz",f_B1);
printf("\n\nii.a.Frequency deviation for second case =%.2f Hz",delta_f2);
printf("\n\n   b.Bandwidth for second case = %.2f Hz",f_B2);
