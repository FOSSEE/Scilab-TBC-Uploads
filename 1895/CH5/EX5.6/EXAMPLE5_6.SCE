//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.6(PAGENO 210)");

//given
deltaf = 75*10^3//frequency deviation
f_m = 15*10^3//modulating frequency

//calculation
BW = 2*(deltaf+f_m)//bandwidth 

//result
printf("\n\nBandwidth of a commercial FM transmission = %.2f Hz",BW);
