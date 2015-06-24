// chapter 5
// example 5.6
// fig. E 5.6
// Determine power loss
// page-182-183
clear;
clc;
// given
t_r=2; // in us (rise time)
R_DS_on=0.2; // in ohm (drain to source resistance when MOSFET is ON)
D=0.7; // duty cycle
f=30; // in kHz (frequency)
V_DS=100; // in V (DC power supply)
R_L=12; // in ohm (load resistance)
// calculate
I_D=V_DS/(R_L+R_DS_on); // calculation of drain current
f=f*1E3; // changing unit from kHz to Hz
T=1/f; // calculation of switching period
t_on=D*T; // calculation of  on-time
W_on=I_D^2*R_DS_on*t_on; // calculation of energy loss during on-time
P_on=W_on*f; // calculation of power loss during on-time
printf("\nThe power loss in the on-state is \t\t P_on=%.2f W",P_on);
t_r=t_r*1E-6; // changing unit from us to s
W_ON=V_DS*I_D*t_r/6; // calculation of energy loss during turn-on interval
P_ON=W_ON*f; // calculation of power loss during turn-on interval
printf("\nThe power loss during the turn-on interval is \t P_ON=%.1f W",P_ON);