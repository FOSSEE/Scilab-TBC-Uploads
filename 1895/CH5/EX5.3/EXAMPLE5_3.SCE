//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.3(PAGENO 199)");
//given
f_c = 105*10^6//carrier frequency 
f_H = 105.007*10^6//highest frequency or upper frequency
//calculations
deltaf = f_H - f_c//frequency deviation
cs = 2*deltaf//carrier swing
f_L = f_c - deltaf//lower frequency
//results
printf("\n\ni.Frequency deviation = %.4f Hz",deltaf);
printf("\n\nii.Carrier swing = %.2f Hz",cs);
printf("\n\niii.Lower frequency reached by the modulated wave = %.3f Hz",f_L);
