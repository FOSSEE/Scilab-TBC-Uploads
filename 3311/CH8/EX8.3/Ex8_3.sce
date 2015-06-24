// chapter 8
// example 8.3
// Determine average and rms output voltage, chopper efficiency and effective input resistance
// page-440-441
clear;
clc;
// given
Edc=200; // in V (input voltage)
R=15; // in ohm
Ed=2.5; // in V (voltage drop when the chopper is ON)
f=1; // in KHz (chopper frequency)
alpha=50; // in percent (duty cycle)
// calculate
f=f*1E3;
T=1/f;// calculation of time period of chopper
E0=(alpha/100)*(Edc-Ed);// calculation of average output voltage
E0_rms=sqrt(alpha/100)*(Edc-Ed);// calculation of rms output voltage
I0_rms=E0_rms/R;// calculation of rms output current
Po=E0_rms*I0_rms;// calculation of output power
Is=(Edc-Ed)/R;// calculation of average output current
Pi=(1/T)*Edc*Is*integrate('1','t',0,((alpha/100)*T));// calculation of input power
neta=Po/Pi;// calculation of chopper efficiency
printf("\nThe average output voltage is \t E0=%.2f V",E0);
printf("\nThe rms output voltage is \t E0_rms=%.3f V",E0_rms);
printf("\nThe chopper efficiency is \t neta=%.2f percent",neta*100);