//Chapter-7 example 9
//=============================================================================
clc;
clear;
//input data
BW     =  2*10^6;      //Radar Bandwidth in Hz
Fn     =  9;           //Noise Figure in dB
k      =  1.38*10^-23; //Boltzmann constant
To     =  290;         //Temperature in kelvin

//Antilog Calculation
// 10*log10(Fn)  = 9
//Fn             = antilog(9/10) ;
Fn     = 10^(9/10)

MRS    = k*To*BW*(Fn-1); //Minimum Receivable signal

//Output

mprintf('Minimum Receivable signal(MRS)  = %3.4f PW',MRS*10^12);  
mprintf('\n Note: Calculation error in Textbook');
