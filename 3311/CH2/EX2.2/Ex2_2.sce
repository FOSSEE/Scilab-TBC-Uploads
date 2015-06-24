// chapter 2
// example 2.2
// fig. E2.2
// Obtain the minimum gating pulse
// page-22
clear;
clc;
// given
i=4; // in mA (Latching current)
L=0.1; // in H (Inductance of circuit)
V=100; // in V (Battery voltage)
// calculate
i=i*1E-3; // changing unit from mA to A
// Since V=L*(di/dt), therefore we get
t_min=(L/V)*i; // calculation of minimum gating pulse
t_min=t_min*1E6; // changing unit from sec to us
printf("\nThe minimum gating pulse is \t t_min=%.f us",t_min);
