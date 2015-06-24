// chapter 5
// example 5.8
// Fig. E 5.8
// Determine avg load current and power losses
// page-201
clear;
clc;
// given
t_ON=3; // in us (turn-on time)
t_OFF=1.2; // in us (tunr-off time)
D=0.7; // duty cycle
V_CE_sat=2; // in V (collector to emitter voltage at saturation)
f=1; // in kHz (swithcing frequency)
R_L=10; // in ohm (load resistance)
V_CC=200; // in V (collector to emitter volatge)
// calculate
t_ON=t_ON*1E-6; // changing unit from us to s
t_OFF=t_OFF*1E-6; // changing unit from us to s
f=f*1E3; // changing unit from kHz to Hz
V_CE_max=V_CC;
I_C_max=(V_CC-V_CE_sat)/R_L; // calculation of maximum collector(load) current
I_C_avg=D*I_C_max; // calculation of average collector(load) current
P_con=V_CE_sat*I_C_avg; // calculation of conduction power loss
Pw_ON=(V_CE_max*I_C_max*t_ON/6)*f; // calculation of swithcing power loss during turn-on
Pw_OFF=(V_CE_max*I_C_max*t_OFF/6)*f; // calculation of swithcing power loss during turn-off
printf("\nThe average load current is \t\t\t I_C_avg=%.2f A",I_C_avg);
printf("\nThe conduction power loss is \t\t\t %.2f W",P_con);
printf("\nThe swithcing power loss during turn-on is \t %.2f W",Pw_ON);
printf("\nThe swithcing power loss during turn-off is \t %.3f W",Pw_OFF);