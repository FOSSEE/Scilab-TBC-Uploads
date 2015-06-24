//Example 12.11
//Program to determine the average incident optical power required at 
//the receiver 

clear;
clc ;
close ;

//Given data
k=1.38*10^(-23);         //J/K - BOLTZMANN's CONSTANT
e=1.602*10^(-19);        //Coulumbs - CHARGE OF AN ELECTRON
SNR_dB=55;               //dB - SIGNAL POWER TO RMS NOISE RATIO
ma=0.8;                  //MODULATION INDEX
Id=0;                    //A - DARK CURRENT
T=293;                   //K - OPERATING TEMPERATURE
B=5*10^6;                //Hz - BANDWIDTH
Fn_dB=1.5;               //dB - NOISE FIGURE
Rl=1*10^6;               //Ohms - EFFECTIVE INPUT IMPEDANCE
R=0.5;                   //A/W - RESPONSIVITIY
b=0.7;                   //RATIO OF LUMINANCE TO COMPOSITE VIDEO
SNR=10^(SNR_dB/10);
Fn=10^(Fn_dB/10);

//Photo-current, Ip=R*Po Ip=Po*R;
//(SNR)p-p=(2*ma*Ip*b)^2/(2*e*B*(Ip+Id)+(4*k*T*B*Fn/Rl));
//Rearranging and solving the quadratic equation, Incident Power
Po=((SNR*2*e*B*R)+sqrt((SNR*2*e*B*R)^2-4*(2*ma*R*b)^2*(SNR*(-4*k*T*B*Fn/Rl))))/(2*(2*ma*R*b)^2);

//Displaying the Result in Command Window
printf("\n\n\t The average incident optical power required at the receiver is %0.2f uW or %0.1f dBm.",Po/10^(-6),10*log10(Po/10^(-3)));