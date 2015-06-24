// chapter 10
// example 10.5
// Determine the input current to the convertors
// page-701
clear;
clc;
// given
m=6; // number of pulses
Pi=50; // in kVA ()power of cycloconvertor)
E=415; // in V
theta=45; // in degree (firing angle)
alpha0=0.8; // power factor
// calculate
Pi=Pi*1E3; // changing unit from kVA to VA
// since Pi=3*E*Im_phase=3*E*I*(cos(theta)/sqrt(2))*alpha0, therefore we get
I=Pi/(3*E*(cosd(theta)/sqrt(2))*alpha0);// calculation of input current to the convertors
printf("\nThe input current to the convertors is \t I=%.2f A",I);