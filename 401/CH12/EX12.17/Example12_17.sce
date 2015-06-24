//Example 12.17
//Program to calculate:
//(a)The optimium receiver bandwidth
//(b)The peak to peak signal power to rms noise ratio

clear;
clc ;
close ;

//Given data
Tr=12*10^(-9);              //s - SYSTEM RISE TIME
fo=20*10^6;                 //Hz - NOMINAL PULSE RATE
fd=5*10^6;                  //Hz - PEAK TO PEAK FREQUECY DEVIATION
M=60;                       //APD MULTIPLICATION FACTOR
R=0.7;                      //APD RESPONSIVITY
B=6*10^6;                   //Hz - BASEBAND NOISE BANDWIDTH
Ppo=10^(-7);                //Watt - PEAK OPTICAL POWER
in_sq_bar=10^(-17);         //A^2 - RECEIVER MEAN SQUARE NOISE CURRENT

//(a)The optimium receiver bandwidth
Bopt=1/Tr;
To=1/fo;

//(b)The peak to peak signal power to rms noise ratio
SNR=3*(To*fd*M*R*Ppo)^2/((2*%pi*Tr*B)^2*in_sq_bar);

//Displaying the Results in Command Window
printf("\n\n\t (a)The optimium receiver bandwidth is %0.1f MHz.",Bopt/10^6);
printf("\n\n\t (b)The peak to peak signal power to rms noise ratio is %0.1f dB.",10*log10(SNR));