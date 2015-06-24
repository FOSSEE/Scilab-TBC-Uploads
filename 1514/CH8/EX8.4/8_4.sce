//chapter 8
//example 8.4
//page 235
clear;
clc ;
//given
Vgs1=1;//gate to source voltage in volts
Vgs2=4;
Idss=16*10^(-3); //saturation current in mA
Vp=8; //pinch off voltage in volts

//transconductance
gm1=2*Idss*(1-Vgs1/Vp)/Vp*10^6;
printf('\ntransconductance at Vgs=-1V is %d microS',gm1)

gm2=2*Idss*(1-Vgs2/Vp)/Vp*10^6;
printf('\ntransconductance at Vgs=-4V is %d microS',gm2)
