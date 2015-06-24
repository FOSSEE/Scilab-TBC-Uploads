// chapter 12
// example 12.6
// Determine values of resonant components Lr and Cr, peak voltage rating of the resonant capacitor and charging and discharging period of capcaitor
// page-785-786
clear;
clc;
// given
Edc=35; // in V
E0=24; // in V (output voltage)
fr=500; // in KHz
P0=24; // in W
// calculate
fr=fr*1E3; // changing unit from KHz to Hz
// since P0=E0*I0, therefore we get,
I0=P0/E0; // calculation of load current
Zr=Edc/I0; // calculation of load impedance
// since Zr=sqrt(Lr/Cr) and fr=1/(2*%pi*sqrt(Lr*Cr)), multiplying two equations, we get
// Zr*fr=1/(2*%pi*Cr), therefore
Cr=1/(2*%pi*Zr*fr); // calculation of resonant capacitance
Lr=Zr^2*Cr; // calculation of resonant inductance
Vs_p=Edc+I0*Zr; // calculation of peak voltage rating of capacitor
t1=Edc*Cr/I0; // calculation of charging period of capcaitor
t3=sqrt(Lr*Cr)*asin(Edc*sqrt(Cr/Lr)/I0); // calculation of  discharging period of capcaitor
printf("\nThe resonant capacitance is \t\t\t Cr=%.4f uF",Cr*1E6);
printf("\nThe resonant inductance is \t\t\t Lr=%.2f uH",Lr*1E6);
printf("\nThe peak voltage rating of capacitor is \t Vs_p=%.f V",Vs_p);
printf("\nThe charging period of capcaitor is \t\t t1=%.3f us",t1*1E6);
printf("\nThe discharging period of capcaitor is \t\t t3=%.3f us",t3*1E6);
// Note :The answer vary slightly due to precise calculation
