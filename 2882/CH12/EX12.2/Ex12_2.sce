//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 378 and 379
clear;
clc;

//Given

fc=1000D3;//frequency of carrier wave in hertz
fa1=450;//lowest audio frequency of modulating signal in hertz
fa2=1650;//highest audio frequency of modulating signal in hertz

//Solution

disp("(i)");
FS=fa2-fa1;//frequency span of each sideband in hertz
printf("Frequency span of each sideband = %d Hz",FS);

disp("(ii)");
FMAX=fc+fa2;//maximum upper side frequency in hertz
printf("Maximum upper side frequency = %.2f kHz",FMAX/10^3);

disp("(iii)");
FMIN=fc-fa2;//minimum upper side frequency in hertz
printf("Minimum upper side frequency = %.2f kHz",FMIN/10^3);

disp("(iv)");
CW=FMAX-FMIN;//channel width in hertz
printf("Channel width = %.1f kHz",CW/10^3);
