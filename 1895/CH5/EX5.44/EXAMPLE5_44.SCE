//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.44(PAGENO 263)");

//given
f_c  = 20*10^6//carrier frequency
delta_f = 100*10^3//frequency deviation
f_m1 = 1*10^3//modulation index for first case
f_m2 = 100*10^3//modulation index for second case
f_m3 = 500*10^3//modulation index for third case 

//calculations
beeta1 = delta_f/f_m1
beeta2 = delta_f/f_m2
beeta3 = delta_f/f_m3
m_f1 = delta_f/f_m1//modulation index for first case
m_f2 = delta_f/f_m2//modulation index for second case
m_f3 = delta_f/f_m3//modulation index for third case
f_B1 = 2*delta_f//bandwidth for first case since it is a WBFM signal
f_B2 = 2*(beeta2 + 1)*f_m2//bandwidth for second case
f_B3 = 2*f_m3//bandwidth for third case since it is a NBFM signal

//results
printf("\n\ni.a.Modulation index for first case = %.2f ",m_f1);
printf("\n\n  b.Bandwidth for first case = %.2f Hz",f_B1);
printf("\n\nii.a.Modulation index for second case = %.2f ",m_f2);
printf("\n\n  b.Bandwidth for second case = %.2f Hz",f_B2);
printf("\n\niIi.a.Modulation index for third case = %.2f ",m_f3);
printf("\n\n  b.Bandwidth for third case = %.2f Hz",f_B3);
printf("\n\nNote:Their is error in first case modulating frequency in text book")
