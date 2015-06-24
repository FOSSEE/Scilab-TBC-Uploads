//Example 8.7
//Program to determine the multiplication factor of the photodiode

clear;
clc ;
close ;

//Given data
eeta=0.80;                       //*100 percent - QUANTUM EFFICIENCY
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
h=6.626*10^(-34);                //J/K - PLANK's CONSTANT
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
Lambda=0.9*10^(-6);              //metre - OPERATING WAVELENGTH
I=11*10^(-6);                    //A - OUTPUT CURRENT
Po=0.5*10^(-6);                  //Watt - INCIDENT OPTICAL POWER

//Responsivity
R=eeta*e*Lambda/(h*c);
//Photocurrent
Ip=Po*R;
//Multiplication Factor
M=I/Ip;

//Displaying the Result in Command Window
printf("\n\n\t The multiplication factor of the photodiode is approximately %1.0f.",M);