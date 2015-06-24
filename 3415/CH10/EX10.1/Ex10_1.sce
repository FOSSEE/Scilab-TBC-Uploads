//fiber optic communications by joseph c. palais
//example 10.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
clc;
clear all;
Vdc=5;//Power supply across transistor in V
R=45//Resistancein ohm
vd=1.4//forward bias voltage drop in V
vce=0.3//cut-off voltage in V
//to find
ic=(Vdc-vce-vd)/R//diode current when fully on in A
mprintf("Collector current=%fmA",ic*1000)

