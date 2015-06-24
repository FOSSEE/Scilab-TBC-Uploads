// chapter 9
// example 9.19
// Design a self-commutated invertor circuit and compute output power
// page-608-609
clear;
clc;
// given
f0=3; // in KHz
R=5; // in ohm (load resistance)
L=5; // in mH
Edc=100; // in V (dc source)
// calculate
f0=f0*1E3; // changing unit from KHz to Hz
fr=1.35*f0; // calculation of resonant frequency
L=L*1E-3; // changing unit from mH to H
w0=2*%pi*f0; // calculation of normal angular frequency
wr=2*%pi*fr; // calculation of resonant angular velocity
// since L/L1=200, therefore we get
L1=L/200; // calculation of inductance L1
// since fr=1/(2*%pi*sqrt(2*L1*C)),  therefore we get
C=(1/(2*%pi*fr))^2/(2*L1); // calculation of capacitance
tou=R*C; // calculation of time constant
T=1/f0; // calculation of time period
K=exp(-T/(2*tou)); // calculation of attenuation factor
Z0=(R*%i*w0*L)/((R+(%i*w0*L))); // calculation of output impedence
Z0_magnitude=abs(Z0);
I=(Edc/Z0_magnitude)*(1/(1-4*tou*((1-K)/(1+K)))); // calculation of current flowing through Thyristor
E0_max=I*Z0_magnitude*(1-2*K/(1+K)); // calculation of maximum output vltage
E0_rms=E0_max/sqrt(2); // calculation of rms output voltage
V_BO=2*(Edc+E0_max); // calculation of forward blocking voltage rating
I_T=2*I; // calculation of Thyristor current
tq=tou*log(2/(1+K)); // calculation of invertor trun off-time
Vc=2*E0_max; // calculation of capacitor voltage
P0=(E0_max*E0_rms/R)*cosd(atand(imag(Z0),real(Z0))); // calculation of output power
printf("\nThe resonant frequency is \t\t\t fr=%.2f KHz",fr*1E-3);
printf("\nThe inductance L1 is \t\t\t\t L1=%.f uH",L1*1E6);
printf("\nThe capacitance is \t\t\t\t C=%.f uF",C*1E6);
printf("\nThe current flowing through Thyristor is \t I=%.f A",I);
printf("\nThe maximum output voltage is \t\t\t E0_max=%.2f V",E0_max);
printf("\nThe rms output voltage is \t\t\t E0_rms=%.2f V",E0_rms);
printf("\nThe forward blocking voltage is \t\t V_BO>=%.2f V",V_BO);
printf("\nThe Thyristor current is \t\t\t I_T=%.f A",I_T);
printf("\nThe invertor turn-off time is \t\t\t tq=%.1f us",tq*1E6);
printf("\nThe output power is \t\t\t\t P0=%.2f W",P0);
// Note: The answer varies slightly due to precise calculations and round off as done in the book