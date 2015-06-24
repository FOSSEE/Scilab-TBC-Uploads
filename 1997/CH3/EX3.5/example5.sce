//Chapter-3, Problem 3.5 , Page106
//===========================================================================
clc;
clear;

//INPUT DATA
F  = 10*10^9;    //operating frequency in Hz
Vo = 3*10^8;   //velocity in m/s; 
Vb1 = 20;//lowest(first) blind speed in m/s
n   =1 ;//since first blindspeed
//Calculations

lamda = Vo/F;//Wavelength in m

// blind speed Vb = n*(lamda/2)*PRF in m/s

PRF = (2*Vb1)/(n*lamda);//pulse repetitive frequency in Hz

//Output
mprintf('Pulse Repetitive Frequency is %3.2f KHz',PRF/1000);
