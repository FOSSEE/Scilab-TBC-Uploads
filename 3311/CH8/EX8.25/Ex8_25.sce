// chapter 8
// example 8.25
// fig. 8.44
// Determine duty cycle, ripple and peak current of inductor, ripple voltage
// page-518
clear;
clc;
// given
Edc=6; // in V (dc source)
E0=18; // in V (average output voltage)
I0=0.4; // in A (average load current)
f=20; // in KHz (switching frequency)
L=250; // in uH
C=420; // in uH
// calculate
f=f*1E3; // changing unit from KHz to Hz
L=L*1E-6; // changing unit from uH to H
C=C*1E-6; // changing unit from uF to F
// since E0=Edc/(1-alpha), therefore we get
alpha=1-Edc/E0; // calculation of duty cycle
del_I=Edc*(E0-Edc)/(f*L*E0); // calculation of ripple current of inductor
Is=I0/(1-alpha);
I2=Is+del_I/2; // calculation of peak current of inductor
del_Vc=I0*alpha/(f*C); // calculation of ripple voltage
printf("\nThe duty cycle is \t\t\t\t alpha=%.4f \t or \t %.2f percent",alpha,alpha*100);
printf("\nThe ripple current of inductor is \t\t del_I=%.2f A",del_I);
printf("\nThe peak current of inductor is \t\t I2=%.1f A",I2);
printf("\nThe ripple voltage of filter cqpacitor is \t del_Vc=%.2f mV",del_Vc*1E3);5
// Note: the answers vary slightly due to precise calculation