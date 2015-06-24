//Example 8.8
//Program to determine:
//(a)Optical gain of the device
//(b)Common emitter current gain

clear;
clc ;
close ;

//Given data
eeta=0.40;                       //*100 percent - QUANTUM EFFICIENCY
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
h=6.626*10^(-34);                //J/K - PLANK's CONSTANT
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
Lambda=1.26*10^(-6);             //metre - OPERATING WAVELENGTH
Ic=15*10^(-3);                   //A - COLLECTOR CURRENT
Po=125*10^(-6);                  //Watt - INCIDENT OPTICAL POWER

//(a)Optical Gain
Go=h*c*Ic/(Lambda*e*Po);

//(b)Common emitter current gain
h_FE=Go/eeta;

//Displaying the Results in Command Window
printf("\n\n\t (a)Optical Gain, Go = %0.1f.",Go);
printf("\n\n\t (b)Common emitter current Gain, h_FE = %0.1f.",h_FE);