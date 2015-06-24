//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.9(PAGENO 211)");

//given
f_m = 5*10^3//modulating frequency
f_c = 50*10^6//carrier frequency
deltaf = 20*10^3//frequency deviation

//calculations
m_f = deltaf/f_m//modulation index
BW = deltaf*3.8//referring to the Schwartz bandwidth curve 

//results 
printf("\n\ni.Modulation index = %.2f",m_f);
printf("\n\nii.Bandwidth of the FM signal = %.2f Hz",BW);
