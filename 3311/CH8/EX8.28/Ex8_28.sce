// chapter 8
// example 8.28
// fig. 8.46
// Compute average output voltage, average input current, peak-to-peak current of the inductors, peak-to-peak output ripple voltages and peak current of the device
// page-529-530
clear;
clc;
// given
Edc=15; // in V (dc source)
alpha=0.4; // duty cycle
f=25; // in KHz (switching frequency)
L1=250; // in uH
C1=400; // in uH
L2=380; // in uH
C2=220; // in uH
I0=1.25; // in A (average load current)
// calculate
f=f*1E3; // changing unit from KHz to Hz
L1=L1*1E-6; // changing unit from uH to H
C1=C1*1E-6; // changing unit from uF to F
L2=L2*1E-6; // changing unit from uH to H
C2=C2*1E-6; // changing unit from uF to F
E0=-Edc*alpha/(1-alpha); // calculation of average output voltage
Is=I0*alpha/(1-alpha); // calculation of average input current
del_I1=Edc*alpha/(f*L1); // calculation of ripple current of inductor L1 
del_Vc1=Is*(1-alpha)/(f*C1); // calculation of peak-to-peak output ripple voltage of capacitor C1
del_I2=Edc*alpha/(f*L2); // calculation of ripple current of inductor L2
del_Vc2=alpha*Edc/(8*C2*L2*f^2); // calculation of peak-to-peak output ripple voltage of capacitor C2
V_DF=E0; // calculation of average voltage across diode
I_L2=I0*E0/V_DF; // calculation of average current in inductor L2
Ip=Is+del_I1/2+I_L2+del_I2/2; // calculation of peak current of the device
printf("\nThe average output voltage is \t\t\t\t\t E0=%.f V",E0);
printf("\nThe average input voltage is \t\t\t\t\t Is=%.2f A",Is);
printf("\nThe peak-to-peak ripple current of inductor L1 is \t\t del_I1=%.2f A",del_I1);
printf("\nThe peak-to-peak output ripple voltage of capacitor C1 is \t del_Vc1=%.2f mV",del_Vc1*1E3);
printf("\nThe peak-to-peak ripple current of inductor L2 is \t\t del_I2=%.2f A",del_I2);
printf("\nThe peak-to-peak output ripple voltage  of capacitor C2 is \t del_Vc2=%.2f mV",del_Vc2*1E3);
printf("\nThe peak current of the device is \t\t\t\t Ip=%.2f A",Ip);
// Note: the answers vary slightly due to precise calculation