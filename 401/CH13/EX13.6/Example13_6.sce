//Example 13.6
//Program to estimate the minimum transmitter power requirement for 
//an optical coherent WDM

clear;
clc ;
close ;

//Given data
Np=150;              //photons per bit - RECEPTION 
h= 6.626*10^(-34);   //J/K - PLANK's CONSTANT
c=2.998*10^8;        //m/s - VELOCITY OF LIGHT IN VACCUM
B_fib=20*10^12;      //Hz - OPTICAL BANDWIDTH
Lambda=1.3*10^(-6);  //metre - SHORTEST WAVELENGTH

//Minimum transmitter power requirement for an optical coherent WDM
Ptx=Np*h*c*B_fib/Lambda;

//Displaying the Result in Command Window
printf("\n\n\t Minimum transmitter power requirement for an optical coherent WDM is %0.1f mW or %1.0f dBm .",Ptx/10^(-3), 10*log10(Ptx/(1*10^(-3))));