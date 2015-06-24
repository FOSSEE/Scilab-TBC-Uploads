//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.34(PAGENO 259)");

//given
f_c = 100*10^6//carrier frequency
f_u = 100.007*10^6//upper frequency

//calculations
delta_f = f_u - f_c//frequency deviation
CS = 2*delta_f//carrier swing
f_l = f_c - delta_f//lower frequency reached by the modulated FM wave 

//results
printf("\n\ni.Frequency deviation = %.2f Hz",delta_f);
printf("\n\nii.Carrier frequency = %.2f Hz",CS);
printf("\n\niii.Lower frequency reached by the modulated FM wave = %.2f Hz",f_l);
