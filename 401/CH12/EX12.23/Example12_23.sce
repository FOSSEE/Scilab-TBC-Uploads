//Example 12.23
//Program to determine the maximum transmission bit rate for the 
//system

clear;
clc ;
close ;

//Given data
To=40*10^(-12);                         //s - BIT PERIOD
tau=4*10^(-12);                         //s - PULSE WIDTH
Beeta2=-1.25*10^(-12)*10^(-12)*10^(-3); //s^2/km - 2nd ORDER 
                                        //DISPERSION COEFFICIENT 
alpha=0.2*10^(-3);                      //dB/m - ATTENUATION CONSTANT

//The separation for the soliton pulses to avoid interaction
qo=1/2*(To/tau);

//Maximum transmission bit rate for the system
Bt=1/(2*qo)*sqrt(alpha/abs(Beeta2));

//Displaying the Result in Command Window
printf("\n\n\t The maximum bit rate of the ultrashort pulse optical soliton system is significantly greater than %1.0f Gbit/s .",Bt/10^9);