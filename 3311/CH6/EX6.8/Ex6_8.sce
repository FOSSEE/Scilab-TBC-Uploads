// chapter 6
// example 6.8
// Determine firing angle, output current and thyristor current
// page-298-299
clear;
clc;
// given
E=120; // in V (voltage supply)
f=50; // supply frequency
R=10; // in ohm (load resistance)
neta=25; // in percent
alpha_min=0; // angle for which average output voltage will be maximum
// calculate
Em=E*sqrt(2); // calculation of rms voltage
Edc_max=(Em/%pi)*(1+cos(alpha_min)); // calculation of maximum average output voltage
Edc=(neta/100)*Edc_max; // calculation of average output voltage
// Since Edc=(Em/%pi)*(1+cos(alpha)) , therefore we get
alpha=acos((%pi/Em)*Edc-1); // calculation of firing angle in radian
Erms=Em*sqrt(((%pi-alpha)/(2*%pi))+((sin(2*alpha))/(4*%pi))); // calculation of rms load voltage
Irms=Erms/R; // calculation of rms load current
Idc=Edc/R; // calculation of average load current
Im=Em/R; // calculation of maximum thyristor current
I_TH_avg=(Im/(2*%pi))*(integrate('sin(wt)','wt',alpha,%pi)); // calculation of average thyristor current
I_TH_rms=sqrt((Im^2/(2*%pi))*(integrate('(sin(wt))^2','wt',alpha,%pi))); // calculation of rms thyristor current
printf("\nThe firing angle is \t\t\t %.f degree",alpha*(180/%pi));
printf("\nThe average output voltage is \t\t Edc=%.f V",Edc);
printf("\nThe rms load voltage is \t\t Erms=%.f V",Erms);
printf("\nThe average output current is \t\t Idc=%.1f A",Idc);
printf("\nThe rms load current is \t\t Irms=%.1f A",Irms);
printf("\nThe average thyristor current is \t I_TH_avg=%.2f A",I_TH_avg);
printf("\nThe rms thyristor current is \t\t I_TH_rms=%.2f A",I_TH_rms);
