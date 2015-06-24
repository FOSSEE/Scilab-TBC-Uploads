//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.15(PAGENO 220)");

//given
deltaf = 10*10^3//frequency deviation
f_m = 1*10^3//modulating frequency

//calculations
BW = 2*(deltaf + f_m)//bandwidth of FM signal
BW_DSB = 2*f_m//bandwidth of DSB FC(AM)

//results
printf("\n\ni.Bandwidth of FM signal = %.2f Hz",BW);
printf("\n\nii.Bandwidth of DSB FC(AM) signal = %.2f Hz",BW_DSB);
