clc
clear
//Initalization of variables
rate=10700 //lb/min
t2=97.90 
t1=33.05 
r1=46 //lb/min
//calculations
disp("From steam tables,")
Hv=1417041
Qw=rate*(t2-t1)
Q=r1/(12*6+6) *Hv
eff=Qw/Q*100
//results
printf("Furnace efficiency = %.1f percent",eff)
