//Example 9.8
//Program to determine:
//(a)Maximum bandwidth without equilization
//(b)Mean square thermal noise current per unit bandwidth
//(c)(Compare (a) and (b) for transimpedance amplifier

clear;
clc ;
close ;

//Given data
Ra=4*10^6;                     //Ohms - INPUT RESISTANCE
Rb=4*10^6;                     //Ohms - DETECTOR BIAS RESISTANCE
Ct=6*10^(-12);                 //Farad - TOTAL CAPACITANCE
k=1.381*10^(-23);              //m^2 kg/s - BOLTZMANN's CONSTANT
T=300;                         //Kelvin - TEMPERATURE
Rf=100*10^3;                   //Ohms - LOAD RESISTANCE
G=400;                         //OPEN LOOP GAIN OF TRANSIMPEDANCE AMP.

//Total effective load resistance
Rtl=Rb*Ra/(Rb+Ra);

//(a)Maximum bandwidth without equilization
B=1/(2*%pi*Rtl*Ct)

//(b)Mean square thermal noise current per unit bandwidth
it_sq_bar=4*k*T/Rtl;

//(c)(Compare (a) and (b) for transimpedance amplifier
B1=G/(2*%pi*Rf*Ct)
it_sq_bar1=4*k*T/Rf;

//Displaying the Results in Command Window
printf("For High Gain Transimpedance Amplifier:")
printf("\n\n (a)Maximum bandwidth without equilization, B = %0.2f X 10^4 Hz.",B/10^4);
printf("\n\n (b)Mean square thermal noise current per unit bandwidth, it_sq_bar = %0.2f X 10^(-27) A^2/Hz.",it_sq_bar/10^(-27));
printf("\n\n (c)For High Gain Transimpedance Amplifier:")
printf("\n\n    Maximum bandwidth without equilization, B = %0.2f X 10^8 Hz.",B1/10^8);
printf("\n\n    Mean square thermal noise current per unit bandwidth, it_sq_bar = %0.2f X 10^(-25) A^2/Hz.",it_sq_bar1/10^(-25));
printf("\n\n Mean square thermal noise current for transimpedance amplifier is %1.0f times or %1.0f dB greater.",it_sq_bar1/it_sq_bar,10*log10(it_sq_bar1/it_sq_bar));