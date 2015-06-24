//Example 12.12
//Program to determine the average incident optical power required to 
//maintain given SNR

clear;
clc ;
close ;

//Given data
Lambda=1*10^(-6);                //metre - WAVELENGTH 
h= 6.626*10^(-34);               //J/K - PLANK's CONSTANT
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
k=1.38*10^(-23);                 //J/K - BOLTZMANN's CONSTANT
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
eeta=0.6;                        //*100 percent - QUANTUM EFFICIENCY
SNR_dB=45;                       //dB - CURRENT SNR
Rl=50*10^3;                      //Ohms - EFFECTIVE LOAD IMPEDANCE
T=300;                           //K - OPERATING TEMPERATURE
ma=0.5;                          //MODULATION INDEX
Fn_dB=6;                         //dB - NOISE FIGURE
B=10*10^6;                       //Hz - POST DETECTION BANDWIDTH

SNR=10^(SNR_dB/10);
Fn=10^(Fn_dB/10);

//Average incident optical power required to maintain given SNR
Po=h*c/(e*eeta*ma^2*Lambda)*sqrt(8*k*T*Fn/Rl)*sqrt(SNR*B);

//Displaying the Result in Command Window
printf("\n\n\t The average incident optical power required at the receiver is %0.2f uW or %0.1f dBm.",Po/10^(-6),10*log10(Po/10^(-3)));