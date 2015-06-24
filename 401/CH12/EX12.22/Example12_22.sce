//Example 12.22
//Program to determine
//(a)The separation for the soliton pulses to avoid interaction
//(b)The transmission bit rate of the optical soliton communication
//system

clear;
clc ;
close ;

//Given data
To=70*10^(-12);                       //s - BIT PERIOD
tau=6*10^(-12);                       //s - PULSE WIDTH
Beeta2=-0.5*10^(-12)*10^(-12)*10^(-3);//s^2/km - 2nd ORDER DISPERSION
                                      //         COEFFICIENT 
La=50*10^3;                           //AMPLIFIER SPACING

//(a)The separation for the soliton pulses to avoid interaction
qo=1/2*(To/tau);
//(b)The transmission bit rate of the optical soliton comm. system
Bt=1/(2*qo)*1/sqrt(abs(Beeta2)*La);

//Displaying the Results in Command Window
printf("\n\n\t(a)The separation for the soliton pulses to avoid interaction is %0.1f .",qo);
printf("\n\n\t(b)The maximum bit rate of the optical soliton communication system is much less than %0.2f Gbit/s .",Bt/10^9);