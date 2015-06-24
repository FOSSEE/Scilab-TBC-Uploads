// chapter 8
// example 8.27
// Determine range of duty cycle, peak-to-peak choke ripple current and average supply current
// page-523-524
clear;
clc;
// given
Edc=24; // in V (dc source)
f=50; // in KHz (switching frequency)
L=500; // in uH
E0=15; // in V (average output voltage)
Edc_max=26; // in V (maximum voltage of dc source)
Edc_min=21; // in V (maximum voltage of dc source)
I0=2; // in A (average load current)
// calculate
f=f*1E3; // changing unit from KHz to Hz
L=L*1E-6; // changing unit from uH to H
// since E0=Edc*alpha/(1-alpha), therefore we get
alpha_max=1/((Edc_min/E0)+1); // calculation of upper limit of duty cycle
alpha_min=1/((Edc_max/E0)+1); // calculation of lower limit of duty cycle
alpha_normal=1/((Edc/E0)+1); // calculation of normal duty cycle
del_I=Edc*alpha_normal/(f*L); // calculation of peak-to-peak choke ripple current
// since Edc*Is=E0*I0, therefore we get
Is=E0*I0/Edc; // calculation of average supply current
printf("\nThe duty cycle varies from \t\t\t\t\t\t %.3f to %.3f",alpha_min,alpha_max);
printf("\nThe peak-to-peak choke ripple current for normal supply voltage is \t del_I=%.1f mA",del_I*1E3);
printf("\nThe average supply current drawn from battery is \t\t\t Is=%.2f A",Is);
// Note: the answers vary slightly due to precise calculation