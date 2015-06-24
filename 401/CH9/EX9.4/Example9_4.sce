//Example 9.4
//Program to determine SNR at the output of the receiver

clear;
clc ;
close ;

//Given data
Id=3*10^(-9);                    //A - DARK CURRENT
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
h= 6.626*10^(-34);               //J/K - PLANK's CONSTANT
Lambda=0.9*10^(-6);              //metre - OPERATING WAVELENGTH
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
eeta=0.6;                        //*100 percent - QUANTUM EFFICIENCY
Po=200*10^(-9);                  //Watt- INCIDENT OPTICAL POWER
k=1.381*10^(-23);                //m^2 kg/s - BOLTZMANN's CONSTANT
T=293;                           //Kelvin - TEMPERATURE
B=5*10^6;                        //Hz - BANDWIDTH OF RECEIVER
Rl=4*10^3;                       //Ohms - LOAD RESISTANCE
Fn=3;                            //dB - AMPLIFIER NOISE FIGURE

//RMS shot noise current
Ip=eeta*Po*e*Lambda/(h*c);
Shot_noise_current=sqrt(2*e*B*(Id+Ip));
//RMS thermal noise current
Thermal_noise_current=sqrt(4*k*T*B/Rl);

//SNR Calculation
SNR=Ip^2/(Shot_noise_current^2+Thermal_noise_current^2*10^(Fn/10));

//Displaying the Result in Command Window
printf("\n\n SNR = %0.2f dB.",10*log10(SNR));