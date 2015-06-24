//chapter 8
//example 8.2
//page 231
clear;
clc ;
//given
Vpmin=2;//minimum pinch off voltage in volts

Vpmax=8;//maximum pinch off voltage in volts

IDssmin=4;//minimum saturation current in mA

IDssmax=16;//maximum saturation current in mA

//minimum transfer characteristics
Vgs=[0 0.5 1 1.5 2];//gate to source voltage in volts
Id=IDssmin.*(1-Vgs/2)^2;//drain current in mA
plot(-Vgs,Id,'colo','red','marker','*','markeredg','blue','markersize',10)
xtitle('minimum transfer characteristics','Vgs','Id')

//maximum transfer characteristics
Vgs=[0 2 4 6 8];//gate to source voltage in volts
Id=IDssmax.*(1-Vgs/8)^2;//drain current in mA
plot(-Vgs,Id,'colo','cyan','marker','*','markeredg','magenta','markersize',10)


