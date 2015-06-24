// chapter 5
// example 5.7
// Calculate the total power loss
// page-183
clear;
clc;
// given
V_DS=120; // in V (DC power supply)
I_D=4; // in A (drain current)
t_r=80; // in ns (rise time)
t_f=120; // in ns (fall time)
I_DSS=2; // in mA (drain current at saturation)
R_DS_on=0.2; // in ohm (drainn ot source resistance when MOSFET is ON)
D=50; // in percentage (duty cycle)
f=45; // in kHz (swithcing frequency)
// calculate
f=f*1E3; // changing unit from kHz to Hz
I_DSS=I_DSS*1E-3; // changing unit from mA to A
t_r=t_r*1E-9; // changing unit from ns to s
t_f=t_f*1E-9; // changing unit from ns to s
T=1/f; // calculation of total period
t_on=D*T/100; // calculation of on-time
t_off=(100-D)*T/100; // calculation of on-time
P_on=I_D^2*R_DS_on*t_on/T; // calculation of on-state power loss
P_off=V_DS*I_DSS*t_off/T; // calculation of off-state power loss
Pw_on=(V_DS*I_D*t_r/6)*f; // calculation of turn-on switching power loss
Pw_off=(V_DS*I_D*t_f/6)*f; // calculation of turn-off switching power loss
P_T=P_on+P_off+Pw_on+Pw_off; // calculation of total power loss
printf("\nThe total power loss is \t P_T=%.2f W",P_T);