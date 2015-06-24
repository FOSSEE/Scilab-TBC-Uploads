//Example 6.6
//Program to calculate the external power efficiency of the device 

clear;
clc ;
close ;

//Given data
eeta_t=0.18;          //*100 percent - TOTAL EFFICIENCY
Eg=1.43;              //eV - ENERGY BAND GAP OF GaAs
V=2.5;                //Volts - APPLIED VOLTAGE

//External power efficiency of the device
eeta_ep=eeta_t*Eg/V;

//Displaying the Result in Command Window
printf("\n\n\t External power efficiency of GaAs device is %1.0f percent.",eeta_ep*100);