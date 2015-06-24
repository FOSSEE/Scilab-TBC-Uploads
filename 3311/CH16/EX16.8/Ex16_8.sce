// chapter 16
// example 16.8
// Determine turn ratio of demagnetizing winding with primary winding, switch voltagae rating and dc supply current
// page-1015
clear;
clc;
// given
E0=12; // in V
I0=12; // in A
fs=60; // in kHz (switching frequency)
E=230; // in V (rectified ac mains)
alpha_max=0.6; // maximum duty cycle
neta1=50; // in % (spike voltage percentage)
neta2=20; // in %
// calculate
fs=fs*1E3; // changing unit from kHz to Hz
Edc=E*sqrt(2); // calculation of dc voltage
Esp=(neta1/100)*Edc; // calculation of spike voltage
// since alpha_max=1/(1+(N3/N1)), therefore we get
// K=N1/N3=1/((1/alpha_max)-1),
K=1/((1/alpha_max)-1); // calculation of turns ratio
Vsw=Edc+K*Edc+Esp; // calculation of switch voltage
// since K1=N1/N2=V1/V2, therefore we get
K1=(1-(neta2/100))*Edc/E0; 
// since I1/I2=N2/N1, therefore we get
I1=I0/K1; // calculation of dc supply current
printf("\nThe turn ratio of demagnetizing winding with primary winding is \t N1/N3=%.1f",K);
printf("\nThe required switch voltage is \t\t\t\t\t\t Vsw=%.2f V",Vsw);
printf("\nThe dc supply current at full current is \t\t\t\t I1=%.2f A",I1);
// Note: The answer vary slightly due to precise calculations