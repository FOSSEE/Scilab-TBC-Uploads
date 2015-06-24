// chapter 10
// example 10.3
// Determine the value of fundamental rms output voltage, rms output current and output power
// page-700
clear;
clc;
// given
n=3/1; // transformer turn ratio
wL=3; // in ohm (inductive reactance)
R_L=4; // in ohm (load resistance)
alpha=160; // in degree (firing angle)
E=410; // in V (input voltage per phase)
f=50; // in Hz (supply frequency)
m=3; // number of phases
// calculate
Eph=E/2; // calculation of per phase voltage to convertor
r=cosd(180-alpha); // calculation of voltage reduction factor
Eor=r*Eph*(m/%pi)*sin(%pi/m); // calculation of fundamental rms output voltage,
Ior_magnitude=Eor/sqrt(R_L^2+wL^2); // calculation of rms output current magnitude
Ior_phase=-atand(wL/R_L); // calculation of rms output current phase
P0=Ior_magnitude^2*R_L; // calculation of output power
printf("\nThe fundamental rms output voltage is \t Eor=%.2f V",Eor);
printf("\nThe rms output current is  \t Ior=%.2f A \t and phase is \t %.2f degree",Ior_magnitude,Ior_phase);
printf("\nThe output power is \t P0=%.2f W",P0);
// Note: The answers vary slightly due to precise calculation.