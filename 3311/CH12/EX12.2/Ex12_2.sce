// chapter 12
// example 12.2
// fig. 12.8
// Determine resonant frequency, maximum operating frequency,Peak thyristor current, average thyristor current, rms thyristor current, rms load current and average supply current
// page-760-762
clear;
clc;
// given
C1=4; // in uF
C2=4; // in uF
Lr=40; // in uH
R=2; // in ohm
Edc=120; // in V (input voltage)
t_q=20; // in us (SCR turn-off time)
// calculate
Lr=Lr*1E-6; // changing unit from uH to H
t_q=t_q*1E-6; // changing unit from us to s
Ceq=C1+C2;
Ceq=Ceq*1E-6; // changing unit from uF to F
wr=sqrt((1/(Lr*Ceq))-R^2/(4*Lr^2)); // calculation of resonant angular frequency
fr=wr/(2*%pi); // calculation of resonant frequency
tr=1/fr; // calculation of resonant time-period
fr_max=1/(2*t_q); // calculation of maximum frequency
f0=0.4*fr; // calculation of output frequency
T0=1/f0; // calculation of output period
td=T0/2-tr; // calculation of delay time
tp=(1/wr)*atan(2*wr*Lr/R); // calculation of time at which peak current is obtained
Ec1=Edc/(exp(R*2*%pi/(2*Lr*wr))+1); // calculation of  initial capacitor voltage
Ip=(Edc+Ec1)/(wr*Lr)*sin(wr*tp)*exp(-R*tp/(2*Lr)); // calculation of peak current
I_av_SCR=(Edc+Ec1)/(wr*Lr)*(1/T0)*integrate('sin(wr*t)*exp(-R*t/(2*Lr))','t',0,tr/2); // calculation of average thyristor current
I_rms_SCR=(Edc+Ec1)/(wr*Lr)*sqrt((1/T0)*(integrate('(sin(wr*t))^2*exp(-R*t/Lr)','t',0,tr/2))); // calculation of rms thyristor current
I0=2*I_rms_SCR; // calculation of rms load current
P0=I0^2*R; // calculation of output power
Is=P0/Edc; // calculation of average supply current
printf("\nThe resonant frequency is \t\t\t fr=%.3f KHz",fr*1E-3);
printf("\nThe maximum possible operating frequency is \t fr_max=%.f KHz",fr_max*1E-3);
printf("\nThe Peak thyristor current is \t\t\t Ip=%.2f A",Ip);
printf("\nThe average thyristor current is \t\t I_av_SCR=%.3f A",I_av_SCR);
printf("\nThe rms thyristor current is \t\t\t I_rms_SCR=%.2f A",I_rms_SCR);
printf("\nThe rms load current is \t\t\t I0=%.1f A",I0);
printf("\nThe average supply current is \t\t\t Is=%.2f A",Is);
// Note : The answers vary slightly due to precise calculation
