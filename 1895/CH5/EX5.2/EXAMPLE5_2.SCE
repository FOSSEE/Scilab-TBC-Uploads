//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.2(PAGENO 199)");

//given
f_c = 107.6*10^6//carrier frequency
f_m = 7*10^3//modulationg frequency
deltaf = 50*10^3//frequency deviation

//calculations
cs = 2*deltaf//carrier swing
f_H = f_c + deltaf//highest frequency 
f_L = f_c - deltaf//lowest frequency 
m_f = deltaf/f_m//modulating index

//results
printf("\n\ni.Carrier frequency = %.2f Hz",cs);
printf("\n\nii.a.Highest frequency attained by the modulating signal = %.2f Hz",f_H);
printf("\n\n   b.Lowest frequency attained by the modulating signal = %.2f Hz",f_L);
printf("\n\niii.modulating index of the FM wave = %.3f",m_f);
