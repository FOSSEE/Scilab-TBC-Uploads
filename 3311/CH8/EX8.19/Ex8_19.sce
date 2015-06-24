// chapter 8
// example 8.19
// Compute the value of commutating capacitance, average output voltage, circuit off-time, total commutation interval
// page-495
clear;
clc;
// given
Edc=230; // in V (dc source)
I0=50; // in A (load current)
alpha=0.4; // duty cycle
f=2; // in KHz (chopping frequency)
// calculate
f=f*1E3;// changing unit from KHz to Hz
T=1/f; // calculation of chopping period
// since alpha=Ton/T, therefore we get
Ton=alpha*T; // calculation of ON period of chopper
C=Ton*I0/(2*Edc); // calculation of commutating capacitance
E0=2*Edc^2*C*f/I0; // calculation of average output voltage
t_q=Ton/2; // calculation of circuit off-time
T_interval=2*C*Edc/I0; // calculation of total commutation interval
printf("\nThe commutating capacitance is \t\t\t C=%.2f uF",C*1E6);
printf("\nThe average output voltage is \t\t\t E0=%.f V",E0);
printf("\nThe circuit tunr-off time for one SCR pair is \t t_q=%.f us",t_q*1E6);
printf("\nThe total commutation interval is \t\t %.f us",T_interval*1E6);