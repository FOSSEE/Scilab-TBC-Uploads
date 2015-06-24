// chapter 6
// example 6.2
// Determine the heater power
// page-270
clear;
clc;
// given
P=1; // in kW (power rating)
E=230; // in V (voltage rating)
f=50; // in Hz (supply frequency)
alpha1=45, alpha2=90; // in degree (delay angle)
// calculate
P=P*1E3; // changing unit from kW to W
Em=E*sqrt(2); // calculation of maximum value of supply voltage
alpha1_rad=(%pi/180)*alpha1; // changing from degree to radian
alpha2_rad=(%pi/180)*alpha2; // changing from degree to radian
Erms1=Em*sqrt(((%pi-alpha1_rad)/(4*%pi))+((sin(2*alpha1_rad))/(8*%pi))); // calculation of rms value of E
R=E^2/P; // calculation of resistance
W=Erms1^2/R; // calculation of heater power at 45 degree
Erms2=Em*sqrt(((%pi-alpha2_rad)/(4*%pi))+((sin(2*alpha2_rad))/(8*%pi))); // calculation of rms value of E
W2=Erms2^2/R; // calculation of heater power at 45 degree
printf("\nThe heater power at %.f degree is \t W1=%.2f W",alpha1,W);
printf("\nThe heater power at %.f degree is \t W2=%.f W",alpha2,W2);