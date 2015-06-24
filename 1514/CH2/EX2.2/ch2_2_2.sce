//chapter 2
//example 2.2
//page 34
clear;
clc ;
//given
If=30;//forward current through diode in mA
Es=5;//supply voltage in volts
Ef=5;//when If=0 from equation Ef=Es-If*Rl
deltaEf=2;// from load line 
deltaIf=0.015;//in ampere
Rl=deltaEf/deltaIf;//load resistance in ohm
printf('load resistance is %d ohm',Rl)
