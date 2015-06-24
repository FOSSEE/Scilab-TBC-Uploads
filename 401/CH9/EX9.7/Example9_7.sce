//Example 9.7
//Program to determine the optimum avalanche multiplication factor

clear;
clc ;
close ;

//Given data
Rl=10*10^3;                      //Ohms - LOAD RESISTANCE
T=120;                           //Kelvin - TEMPERATURE
SNR=35;                          //dB - SIGNAL TO NOISE RATIO
Fn=1;                            //dB - AMPLIFIER NOISE FIGURE
B=10*10^6;                       //Hz - POST DETECTION BANDWIDTH
x=1;
k=1.381*10^(-23);                //m^2 kg/s - BOLTZMANN's CONSTANT
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON

//As Ip=10*Id, Minimum Photo Current
Ip=(10^(SNR/10)*(12*k*T*B*10^(Fn/10)/Rl)/(4*k*T*10^(Fn/10)/(1.1*e*Rl))^(2/(2+x)))^(3/4);
 
//Optimum avalanche multiplication factor
Mop=(4*k*T*10^(Fn/10)/(e*Rl/10*1.1*Ip))^(1/(2+x));

//Displaying the Result in Command Window
printf("\n\n Optimum avalanche multiplication factor, Mop = %0.2f.",Mop);