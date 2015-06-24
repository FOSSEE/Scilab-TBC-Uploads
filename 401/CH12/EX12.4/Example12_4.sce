//Example 12.4
//Program to estimate incident optical power to register binary 1
//at bit rates of 10 Mbit/s and 140 Mbit/s

clear;
clc ;
close ;

//Given data
BER=10^(-9);                     //BIT ERROR RATE
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
Lambda=1*10^(-6);                //metre - WAVELENGTH 
h= 6.626*10^(-34);               //J/K - PLANK's CONSTANT
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
zm=864;                          //photons - FROM EXAMPLE 12.3

//For 10 Mbit/s
Bt=10*10^6;                      //bps - BIT RATES
Po=zm*h*c*Bt/(2*Lambda);
//Displaying the Result in Command Window
printf("\n\n\t  Incident optical power for %1.0f Mbit/s is %0.1f pW or %0.1f dBm.",Bt/10^6,Po/10^(-12),10*log10(Po/10^(-3)));

//For 140 Mbit/s
Bt=140*10^6;                     //bps - BIT RATES
Po=zm*h*c*Bt/(2*Lambda);
//Displaying the Result in Command Window
printf("\n\n\t  Incident optical power for %1.0f Mbit/s is %0.3f nW or %0.1f dBm.",Bt/10^6,Po/10^(-9),10*log10(Po/10^(-3)));