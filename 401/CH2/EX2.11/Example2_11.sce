//Example 2.11
//Program to determine spot size at the operating wavelength using ESI
//technique

clear;
clc ;
close ;

//Given data
lambda=1.30*10^(-6);         //metre - OPERATING WAVELENGTH
lambda_c=1.08*10^(-6);       //metre - CUTOFF WAVELENGTH
THEETA_min=12;               //degree

// The effective core radius
a_eff=3.832*lambda/(2*%pi*sin(THEETA_min*%pi/180));

// The effective normalized frequency
V_eff=2.405*lambda_c/lambda;

// The spot size
w0=3.81*10^(-6)*(0.6043+1.755*V_eff^(-1.5)+2.78*V_eff^(-6));

//Displaying the Results in Command Window
printf("\n\n\t The effective core radius is %0.2f um.",a_eff*10^6);
printf("\n\n\t The effective normalized frequency is %0.2f.",V_eff);
printf("\n\n\t The spot size at the operating wavelength is %0.2f um.",w0*10^6);