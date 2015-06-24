//chapter 7
//example 7.2
//page 198
clear;
clc ;
//given
T=78;//temperature in degreeC
PD1=115; //maximum power dissipation in W at 25 degreeC
excessT=T-25;
D=0.66*excessT; //derating in power of device in W
PD=round(PD1-D); //maximum power dissipation in W at 78 degreeC

Vce=[60 40 20 10]; //collector to emitter voltage in volts
Ic=(PD./Vce);
plot(Vce,Ic)
xtitle('maximum PD curve','collector to emitter voltage in volts (Vce)','collector current (Ic)');
