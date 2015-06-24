//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.49(PAGENO 265)");

//given
//x_NBFM(t) = A*cos(w_c*t + sin(w_m*t))
f_c = 200*10^3//carrier frequency
f_m_max = 15*10^3//maximum modulating frequency
f_m_min = 50//minimum modulating frequency
delta_f = 75*10^3//maximum frequency deviation

//calculations
beeta_min = delta_f/f_m_max;
beeta_max = delta_f/f_m_min;
//if beeta_1 =.5, where beeta_1 is the input beeta, then the required frequency multiplication will be
beeta_1 = .5
n = beeta_max/beeta_1//frequency multiplication 
delta_f1 = delta_f/n//maximum allowed frequency deviation

//results
printf("\n\ni.Frequency multiplication = %.2f ",n);
printf("\n\nii.Maximum allowed frequency deviation = %.2f Hz",delta_f1)  
