// chapter 12
// example 12.5
// Destermine values of resonant components Lr and Cr, peak switching current, peak voltage rating of the resonant capacitor
// page-778-780
clear;
clc;
// given
Edc=18; // in V (unregulated DC voltage)
E0=12; // in V (output voltage)
fr=1; // in MHz
P0=12; // in W
// calculate
fr=fr*1E6; // changing unit from MHz to Hz
// since P0=E0*I0, therefore we get,
I0=P0/E0; // calculation of load current
Zr=Edc/I0; // calculation of load impedance
// since Zr=sqrt(Lr/Cr) and fr=1/(2*%pi*sqrt(Lr*Cr)), multiplying two equations, we get
// Zr*fr=1/(2*%pi*Cr), therefore
Cr=1/(2*%pi*Zr*fr); // calculation of resonant capacitance
Lr=Zr^2*Cr; // calculation of resonant inductance
is_p=I0+Edc*sqrt(Cr/Lr); // calculation of peak switch current
Vc_peak=2*Edc; // calculation of peak voltage rating of capacitor
printf("\nThe resonant capacitance is \t\t\t Cr=%.5f uF",Cr*1E6);
printf("\nThe resonant inductance is \t\t\t Lr=%.2f uH",Lr*1E6);
printf("\nThe peak switch current is \t\t\t is_p=%.2f A",is_p);
printf("\nThe peak voltage rating of capacitor is \t Vc_peak=%.f V",Vc_peak);
// Note :The answer in the book are wrong due to calculation mistake while calculating Cr and hence all other answer are also wrong
