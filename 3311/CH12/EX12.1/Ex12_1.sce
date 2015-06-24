// chapter 12
// example 12.1
// Determine circuit turn-off time, maximum possible output frequency, capacitor voltage, rms load current, output power and average and rms SCR currents
// page-755-756
clear;
clc;
// given
Edc=200; // in V (dc input)
Lr=40; // in uH (resonant inductor)
Cr=6.8; // in uF (resonant capacitor)
F=6; // in Khz (frequency of output voltage)
t_q=15; // in us (SCR turn-off time)
R=3; // in ohm
// calculate
Lr=Lr*1E-6; // changing unit from uH to H
Cr=Cr*1E-6; // changing unit from uF to F
t_q=t_q*1E-6; // changing unit from us to s
F=F*1E3; // changing unit from KHz to Hz
wr=sqrt((1/(Lr*Cr))-R^2/(4*Lr^2));
// since wr=2*%pi*fr, therefore we get,
fr=wr/(2*%pi);
w0=2*%pi*F;
Toff=(%pi/w0)-(%pi/wr); // calculation of circuit turn-off time
Fmax=1/(2*(t_q+(%pi/wr))); // calculation of maximum possible output frequency
Ec=Edc*((exp(R*%pi/(2*Lr*wr))+1)/(exp(R*%pi/(2*Lr*wr))-1)); // calculation of capacitor voltage
I_L_rms=((Edc+Ec)/(wr*Lr))*sqrt(F*(1-exp(-R*%pi/(2*wr*Lr)))*((Lr/R)-(R/Lr)*(1/((2*wr)^2+(R/Lr)^2)))); // calculation of rms load current
P0=I_L_rms^2*R; // calculation of output power
I_rms_SCR=I_L_rms/sqrt(2); // calculation of rms SCR current
I_L_avg=(2*F*(Edc+Ec)/((wr^2+(R/(2*Lr)^2))*Lr))*1+exp(-R*%pi/(4*wr*Lr)); // calculation of average load current
I_avg_SCR=I_L_avg/2; // calculation of average SCR current
printf("\nThe circuit turn-off time is \t\t\t Toff=%.1f us",Toff*1E6);
printf("\nThe maximum possible output frequency is \t Fmax=%.3f KHz",Fmax*1E-3);
printf("\nThe capacitor voltage is \t\t\t Ec=%.2f V",Ec);
printf("\nThe rms load current is \t\t\t I_L_rms=%.2f A",I_L_rms);
printf("\nThe output power is \t\t\t\t P0=%.2f W",P0);
printf("\nThe rms SCR current is \t\t\t\t I_rms_SCR=%.2f A",I_rms_SCR);
printf("\nThe average SCR current is \t\t\t I_avg_SCR=%.3f A",I_avg_SCR);
// Note : The answers vary slightly due to precise calculation
