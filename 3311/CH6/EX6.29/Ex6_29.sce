// chapter 6
// example 6.29
// Compute the average load voltage
// page-372-373
clear;
clc;
// given
Eph=150; // in V (supply voltage per phase)
f=50; // in Hz (supply frequency)
Ls=1.2; // in mH (source inductance)
R=0.07; // in ohm
V_drop_Thyristor=1.5; // in V (voltage drop across Thyristor)
Id=30; // in A (continuous load current)
alpha=0:30:60; // in degree (firing angles)
// calculate
Ls=Ls*1E-3; // changing unit from mH to H
V_drop_reactance=(3*2*%pi*f*Ls/(2*%pi))*Id; // voltage drop due to source reactance
Em=Eph*sqrt(2);// calculation of peak voltage
for alpha=0:30:60
    Edc=((3*sqrt(3)/(2*%pi))*Em*cosd(alpha))-V_drop_Thyristor-V_drop_reactance;;// calculation of average load voltage
    printf("\nFor %.f degree, the average load voltage is Edc=%.1f V",alpha,Edc);
end
// Note: The answers vary slightly due to precise calculation upto 6 decimal digits