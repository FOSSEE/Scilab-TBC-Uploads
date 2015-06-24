//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.33(PAGENO 258)");

//given
f_m = 7*10^3//modulating frequency
delta_f = 50*10^3//frequency deviation
f_c = 107.6*10^6//carrier frequency

//calculaitons
CS = 2*delta_f//carrier swing
m_f = delta_f/f_m//modulation index
f_h = f_c + delta_f//upper or highest frequency
f_l = f_c - delta_f//lower of lowest frequency

//results
printf("\n\ni.a.Carrier swing = %.2f Hz",CS);
printf("\n\n  b.Modulation index = %.4f ",m_f);
printf("\n\nii.a.Highest frequency attained by the FM signal = %.2f Hz",f_h);
printf("\n\n   b.Lowest frequency attained by the FM signal = %.2f Hz",f_l);
