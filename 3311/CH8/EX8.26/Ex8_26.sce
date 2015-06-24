// chapter 8
// example 8.26
// fig. 8.45
// Compute average output voltage, peak-to-peak output ripple voltage, peak-to-peak current of the inductor and peak current of the device
// page-522-523
clear;
clc;
// given
Edc=14; // in V (dc source)
alpha=0.6; // duty cycle
f=25; // in KHz (switching frequency)
L=180; // in uH
C=220; // in uH
I0=1.5; // in A (average load current)
// calculate
f=f*1E3; // changing unit from KHz to Hz
L=L*1E-6; // changing unit from uH to H
C=C*1E-6; // changing unit from uF to F
E0=-Edc*alpha/(1-alpha); // calculation of average output voltage
del_Vc=I0*alpha/(f*C); // calculation of peak-to-peak output ripple voltage
del_I=Edc*alpha/(f*L); // calculation of ripple current of inductor
Is=I0*alpha/(1-alpha); // calculation of average input current
Ip=Is/alpha+del_I/2; // calculation of peak current of the device
printf("\nThe average output voltage is \t\t\t E0=%.f V",E0);
printf("\nThe peak-to-peak output ripple voltage is \t del_Vc=%.2f V",del_Vc);
printf("\nThe peak-to-peak ripple current of inductor is \t del_I=%.2f A",del_I);
printf("\nThe peak current of the device is \t\t Ip=%.2f A",Ip);
// Note: the answers vary slightly due to precise calculation