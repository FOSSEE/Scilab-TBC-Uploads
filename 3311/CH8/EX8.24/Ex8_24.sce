// chapter 8
// example 8.24
// Determine maximum ON-period of MOSFET, Battery drain current and the value of choke required
// page-515
clear;
clc;
// given
Edc=12; // in V
Edc_max=13.5; // in V (maximum dc source)
Edc_min=10; // in V (minimum dc source)
E0=5; // in V (average output voltage)
I0=10; // in A (load current)
f=50; // in KHz 
del_I=500; // in mA (ripple current)
// calculate
f=f*1E3; // changing unit from KHz to Hz
del_I=del_I*1E-3; // changing unit from mA to A
T=1/f; // calculation of time period
alpha_max=E0/Edc_min; // calculation of duty cycle
// since alpha=Ton/T, therefore we get
Ton_max=alpha_max*T; // calculation of maximum ON-period of MOSFET
// since Edc*Is=E0*I0,  therefore we get
Is=E0*I0/Edc; // calculation of Battery drain current
L=E0*(Edc_min-E0)/(f*Edc_min*del_I); // calculation of the value of choke required
printf("\nThe maximum ON-period of MOSFET is \t Ton_max=%.f us",Ton_max*1E6);
printf("\nThe Battery drain current is \t\t Is=%.2f A",Is);
printf("\nThe value of choke required is \t\t L=%.f uH",L*1E6);
// Note: the answers vary slightly due to precise calculation