// chapter 6
// example 6.30
// Compute the average generator voltage
// page-373
clear;
clc;
// given
E=415; // in V (supply voltage per phase)
f=50; // in Hz (supply frequency)
X_L=0.3; // in ohm (source reactance)
R=0.05; // in ohm (resistance per phase)
V_drop_Thyristor=1.5; // in V (voltage drop across Thyristor)
Id=60; // in A (continuous load current)
Beta=35; // in degree (firing advance angle)
u=0; // in degree (overlap angle at no load)
// calculate
V_drop_reactance=(3*X_L/%pi)*Id; // voltage drop due to overlap
V_drop_Thyristors=2*V_drop_Thyristor; // voltage drop due to SCRs
V_drop_resistance=2*R*Id; // voltage drop due to supply resistance
Emph=E*sqrt(2/3);// calculation of peak voltage
Edc_noload=-((3*sqrt(3)/%pi)*Emph*cosd(u-Beta));// calculation of average voltage at no load
Edc=abs(Edc_noload-V_drop_Thyristors-V_drop_reactance-V_drop_resistance);// calculation of average generator voltage
printf("\nThe average generator voltage is Edc=%.2f V",Edc);
// Note: The answers vary slightly due to precise calculation upto 6 decimal digits