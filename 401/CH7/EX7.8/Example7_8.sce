//Example 7.8
//Program to estimate the CW operating lifetime for the given LED

clear;
clc ;
close ;

//Given data
Ea=1*1.602*10^(-19);  //Joules - ACTIVATION ENERGY 
k=1.38*10^(-23);      //m^2 kg/s - BOLTZMANN's CONSTANT
T=290;                //Kelvin - JUNCTION TEMPERATURE
Pe_by_Pout=0.67;      //Pe/Pout RATIO
Beeta_o=1.84*10^7;    //per  h - CONSTANT OF PROPORTIONALITY

//Degradation Rate
Beeta_r=Beeta_o*exp(-Ea/(k*T));

//CW operating lifetime for the given LED
t=log(Pe_by_Pout)/-Beeta_r;

//Displaying the Result in Command Window
printf("\n\n\t CW operating lifetime for the given LED is %0.1f X 10^9 h.",t/10^9);