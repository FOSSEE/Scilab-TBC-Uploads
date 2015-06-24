clc
//Chapter 11:Power amplifiers
//example 11.4 page no 475
//given
Pt=4//max power dissipation in watt
Idmax=1.5//max drain current in amp
Vcc=48//supply voltage
P_t=(4*%pi*Pt)/(Vcc*Idmax)//the normalised max transistor dissipation
disp('from figure 11.21 it is found that maximum possible conduction angle is =80degree without exceeding the maximum transistor dissipation')
Po=Pt/0.22//output power
Rl=Vcc^2/(2*Po)//load resistance
mprintf('the output power is %f W \n the load resistance is %f ohm ',Po,Rl)
