// chapter 6
// example 6.3
// Determine various parameters
// page-270-271
clear;
clc;
// given
E=120; // in V (voltage supply)
f=50; // in Hz (supply frequency)
R=10; // in ohm
neta=25; // in percentage
// calculate
Em=E*sqrt(2); // calculation of maximum value of supply voltage
Edc=(neta/100)*(Em/%pi); // calculation of dc value of voltage
// since Edc=(Em/(2*%pi))*(1+cos(alpha)) solving for alpha, we get
alpha=acosd(Edc*(2*%pi/Em)-1); // calculation of firing angle
Idc=Edc/R; // calculation of average output current
alpha_rad=(%pi/180)*alpha; // calculation of firing angle in radian
Erms=Em*sqrt(((%pi-alpha_rad)/(4*%pi))+((sin(2*alpha_rad))/(8*%pi))); // calculation of rms voltage
Irms=Erms/R; // calculation of rms output current
Idc_SCR=Idc; // calculation of average SCR current
Irms_SCR=Irms; // calculation of rms SCR current
printf("\nThe firing angle is \t%.f",alpha);
printf("\nThe average output current is \tIdc=%.2f A",Idc);
printf("\nThe rms output current is \tIrms=%.2f A",Irms);
printf("\nThe average SCR current is \t%.2f A",Idc_SCR);
printf("\nThe rms output current is \t%.2f A",Irms_SCR);
// Note: There is calculation mistake in the book for alpha due to which other values are also coming different.That's why all the answer vary