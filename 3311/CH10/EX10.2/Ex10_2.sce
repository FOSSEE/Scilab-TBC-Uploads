// chapter 10
// example 10.2
// Estimate peak and rms value of load voltage
// page-699-700
clear;
clc;
// given
E=600; // in V (line voltage)
f=50; // in Hz (supply frequency)
Ls=1.46; // in mH (inductance per phase)
I_L=28; // in A (load current)
p=6; // number of pulses
alpha1=0,alpha2=30, alpha3=60; // in degrees (firing angles)
// calculate
Ls=Ls*1E-3; // changing unit from mH to H
Em=E*sqrt(2); // calculation of peak value of supply voltage
w=2*%pi*f; // calculation of angular frequency in radian
// since Epeak=(p/%pi)*Em*sin(%pi/p)*cosd(alpha)-(p*w*Ls*I_L/(2*%pi)), therefore we get
for alpha=0:30:60
    Epeak=(p/%pi)*Em*sin(%pi/p)*cosd(alpha)-(p*w*Ls*I_L/(2*%pi)); // calculation of peak value of load voltage
    Erms=Epeak/sqrt(2); // calculation of rms value of load voltage
    printf("\n\nFor alpha=%.f degree,",alpha);
    printf("\nThe peak value of load voltage is \t Epeak=%.1f V",Epeak);
    printf("\nThe rms value of load voltage is  \t Erms=%.1f V",Erms);
end
// Note: 1. The value of E used in calculation in the book is 660 V while the value given is 600 V. So i have used 600 V for the calculationas given in the question statement. Therefore the answers do not match.
//       2. The answers vary slightly due to precise calculation.