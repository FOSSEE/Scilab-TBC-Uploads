//Example 12.2
//Program to determine the required electrical and optical SNR

clear;
clc ;
close ;

//Given data
BER=10^(-9);              //BIT ERROR RATE

//Optical SNR
SNR_op=(erfinv(1-2*BER))*2*sqrt(2); //erfc(x)=1-erf(x)

//Electrical SNR
SNR_el=((erfinv(1-2*BER))*2*sqrt(2))^2; //erfc(x)=1-erf(x)

//Displaying the Results in Command Window
printf("\n\n\t  Optical SNR is %1.0f or %0.1f dB.",SNR_op,10*log10(SNR_op));
printf("\n\n\t  Electrical SNR is %1.0f or %0.1f dB.",SNR_el,10*log10(SNR_el));