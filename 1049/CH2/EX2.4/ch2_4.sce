clear
clc;
I_CS=100;
V_CC=200;
t_on=40*10^-6;
P_on=(I_CS/50)*10^6*t_on*(V_CC*t_on/2-(V_CC*10^6*t_on^2/(40*3)));//energy during turn on
t_off=60*10^-6;
P_off=(I_CS*t_off/2-(I_CS/60)*10^6*(t_off^2)/3)*((V_CC/75)*10^6*t_off);//energy during turn off
P_t=P_on+P_off;//total energy
P_avg=300;
f=P_avg/P_t;    printf("allowable switching frequency=%.1f Hz",f);
//in book ans is: f=1123.6 Hz. The difference in results due to difference in rounding of of digits