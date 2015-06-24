//Example 9.1
//Note: MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Program to determine:
//(a)The theoretical quantum limit at the receiver in terms of quantum
//efficiency and energy of incident photon
//(b)The minimum incident optical power

clear;
clc ;
close ;

syms h f eeta;

//(a)The theoretical quantum limit at the receiver in terms of quantum
//efficiency and energy og incident photon
BER=10^(-9);               //BIT ERROR RATE
z_min=-log(BER)
E_min=z_min*h*f/eeta;
disp(E_min,"(a)The theoretical quantum limit at the receiver in terms of quantum efficiency and energy of incident photon is =");
printf(" which is equivalent to %0.1f h*f/eeta.",z_min);

//(b)The minimum incident optical power
h1= 6.626*10^(-34);               //J/K - PLANK's CONSTANT
f1=2.998*10^14;                   //Hz - FREQUENCY
Bt=10*10^6;                       //bit/s - SIGNALING RATE
eeta1=1;                          //*100 percent - QUANTUM EFFICIENCY
Po_binary=z_min*h1*f1*Bt/(2*eeta1);
Po=10*log10(Po_binary/10^(-3));
printf("\n\n (b)The minimum incident optical power is %0.1f pW or %0.1f dBm.",Po_binary/10^(-12),Po);