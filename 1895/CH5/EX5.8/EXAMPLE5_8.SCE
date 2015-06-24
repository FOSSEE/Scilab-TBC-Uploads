//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.8(PAGENO 210)");

//given
deltaf1 = 75*10^3//frequency deviation 
f_m = 8*10^3//modulation frequency
deltaf2 = 2*deltaf1//if modulation signal amplitude is doubled, the frequency deviation becomes  double

//calculation
BW1 = 2*(deltaf1 +f_m)//bandwidth
BW2 =  2*(deltaf2 +f_m)//new bandwidth

//result
printf("\n\nBandwidth of a signal when modulating signal amplitude is doubled = %.2fHz",BW2);
