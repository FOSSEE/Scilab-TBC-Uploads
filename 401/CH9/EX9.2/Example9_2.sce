//Example 9.2
//Program to calculate incident optical power to achieve given SNR

clear;
clc ;
close ;

//Given data
SNR=50;                          //dB - SIGNAL TO NOISE RATIO GIVEN
h= 6.626*10^(-34);               //J/K - PLANK's CONSTANT
Lambda=1*10^(-6);                //metre - OPERATING WAVELENGTH
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
B=5*10^6;                        //MHz - POST DETECTION BANDWIDTH
eeta=1;                          //*100 percent - QUANTUM EFFICIENCY

//Incident optical power to achieve given SNR
Po=2*h*c*B*10^(SNR/10)/(eeta*Lambda);

//Displaying the Result in Command Window
printf("\n\n The incident optical power is %0.1f nW or %0.1f dBm.",Po/10^(-9),10*log10(Po/10^(-3)));