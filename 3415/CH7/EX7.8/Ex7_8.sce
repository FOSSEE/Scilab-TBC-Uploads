//fiber optic communications by joseph c. palais
//example 7.8
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
Cd=5*(10^-12)//capacitance in Farads
tr=2*(10^-9)//transit time in s
f3db=0.35/tr//3dB bandwidth in Hz
mprintf("3-db bandwidth=%fMhz",f3db*10^-6)// multiplcation by 10^-6 to convert bandwith unit from Hz to MHz
Tc=tr/4// RC time constant  condition for insignificant Load resistance in s
Rl=Tc/(2.19*Cd)//largest load resistance in ohm
mprintf("\nLarger load resistor=%fohm",Rl)
