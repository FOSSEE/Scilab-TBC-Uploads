// chapter 12
// example 12.3
// Determine resonant frequency, maximum operating frequency,Peak thyristor current, average thyristor current, rms thyristor current, rms load current and average supply current
// page-765-767
clear;
clc;
// given
Cr=8; // in uF
Lr=40; // in uH
R=2; // in ohm
Edc=120; // in V (input voltage)
t_q=20; // in us (SCR turn-off time)
// calculate
Lr=Lr*1E-6; // changing unit from uH to H
t_q=t_q*1E-6; // changing unit from us to s
Cr=Cr*1E-6; // changing unit from uF to F
wr=sqrt((1/(Lr*Cr))-R^2/(4*Lr^2)); // calculation of resonant angular frequency
fr=wr/(2*%pi); // calculation of resonant frequency
f0=0.4*fr; // calculation of output frequency
tr=1/fr; // calculation of resonant time-period
T0=1/f0; // calculation of output period
td=T0/2-tr; // calculation of delay time
fr_max=1/(2*t_q); // calculation of maximum frequency
f0_max=fr_max/2; // calculation of maximum foutput frequency
tp=(1/wr)*atan(2*wr*Lr/R); // calculation of time at which peak current is obtained
Ec1=Edc*((1-exp(-R*%pi/(Lr*wr)))/(1+exp(-R*%pi/(Lr*wr)))); // calculation of  initial capacitor voltage
Ip=(Edc+Ec1)/(wr*Lr)*sin(wr*tp)*exp(-R*tp/(2*Lr)); // calculation of peak current
I_avg_SCR=(Edc+Ec1)/(wr*Lr)*(1/T0)*integrate('sin(wr*t)*exp(-R*t/(2*Lr))','t',0,tr/2); // calculation of average thyristor current
I_rms_SCR=(Edc+Ec1)/(wr*Lr)*sqrt((1/T0)*(integrate('(sin(wr*t))^2*exp(-R*t/Lr)','t',0,tr/2))); // calculation of rms thyristor current
I0=2*I_rms_SCR; // calculation of rms load current
P0=I0^2*R; // calculation of output power
Is=P0/Edc; // calculation of average supply current
printf("\nThe resonant frequency is \t\t\t fr=%.2f KHz",fr*1E-3);
printf("\nThe maximum possible operating frequency is \t fr_max=%.f KHz",fr_max*1E-3);
printf("\nThe maximum possible output frequency is \t f0_max=%.1f KHz",f0_max*1E-3);
printf("\nThe Peak thyristor current is \t\t\t Ip=%.3f A",Ip);
printf("\nThe average thyristor current is \t\t I_avg_SCR=%.3f A",I_avg_SCR);
printf("\nThe rms thyristor current is \t\t\t I_rms_SCR=%.2f A",I_rms_SCR);
printf("\nThe rms load current is \t\t\t I0=%.1f A",I0);
printf("\nThe average supply current is \t\t\t Is=%.2f A",Is);
// Note : 1. The answer for I_avg_SCR, I_rms_SCR, I0, P0 and Is are wrong in the book due to the use of wrong value of Ec1 in the calculation
//        2.The answers vary slightly due to precise calculation
