clc
//Example 7.10
//Calculate the Mass air flow rate required by a jet engine
F_thrust=20000//lbf
Vx_out=1350//ft/s
Vx_in=0//ft/s
//1 lbf.s^2 = 32.2 lbm.ft
m=F_thrust/(Vx_out-Vx_in)*32.2//lbm/s
printf("The mass air flow rate required by a jet engine is %f lbm/s",m);