//chapter 2
//example 2.4
//page 40
clear;
clc ;
//given
Vf=1.1;//forward drop across diode in volts
Es=60;//supply voltage in volts
Rl=100;//load resistor in ohm
If= ((Es-Vf)/Rl)*10^3;//forward current through diode in mA
printf('The diode forward current is %d mA',If)
