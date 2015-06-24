//Example 9.3
//Program to compare the shot noise generated in the photodetector 
//with the thermal noise in the load resistor

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

//RMS shot noise current
Ip=eeta*Po*e*Lambda/(h*c);
Shot_noise_current=sqrt(2*e*B*(Id+Ip));

//RMS thermal noise current
Thermal_noise_current=sqrt(4*k*T*B/Rl);

//Displaying the Results in Command Window
printf("\n\n RMS shot noise current = %0.3f X 10^(-10) A.",Shot_noise_current/10^(-10));
printf("\n\n RMS thermal noise current = %0.3f X 10^(-9) A.",Thermal_noise_current/10^(-9));