//Example 9.6
//Program to determine the maximum SNR improvement between 
//M=1 and M=Mop

clear;
clc ;
close ;

//Given data
Cd=5*10^(-12);                   //Farad - APD CAPACITANCE
B=50*10^6;                       //Hz - POST DETECTION BANDWIDTH
T=291;                           //Kelvin - TEMPERATURE
k=1.381*10^(-23);                //m^2 kg/s - BOLTZMANN's CONSTANT
Id=0;                            //A - DARK CURRENT
x=0.3;
Fn=1;                            //dB - AMPLIFIER NOISE FIGURE
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
Ip=10^(-7);                      //A - PHOTOCURRENT

//Maximum Load Resistance
Rl=1/(2*%pi*Cd*B);

//For M=1
M=1
SNR1=Ip^2*M^2/(2*e*B*(Ip+Id)*M^(2+x)+4*k*T*B*Fn/Rl); 
//Displaying the Result in Command Window
printf("\n\n For M = 1, SNR = %0.2f dB.",10*log10(SNR1));

//For M=Mop
Mop=(4*k*T/(x*e*Rl*Ip))^(1/(2+x));
M=Mop;
SNR2=Ip^2*M^2/(2*e*B*(Ip+Id)*M^(2+x)+4*k*T*B*Fn/Rl); 
//Displaying the Result in Command Window
printf("\n\n For M = Mopt, SNR = %0.2f dB.",10*log10(SNR2));
printf("\n\n SNR Improvement = %0.2f dB.",10*log10(SNR2)-10*log10(SNR1));